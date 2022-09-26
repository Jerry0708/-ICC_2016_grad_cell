`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   clk;
input   reset;
output  [13:0]gray_addr;
output  gray_req;
input   gray_ready;
input   [7:0]gray_data;
output  [13:0]lbp_addr;
output  lbp_valid;
output  [7:0]lbp_data;
output  finish;
//====================================================================
//def param
localparam
	PRESET_ADDR = 0,
	READ_DATA   = 1,
	ARITHMATIC  = 2,
	STORE		= 3;
//def output reg
reg [13:0]gray_addr;
reg gray_req;
reg [13:0]lbp_addr;
reg lbp_valid;
reg [7:0]lbp_data;
//def fsm
reg [1:0]cur_state;
reg [1:0]next_state;
//def reg
integer i;
reg [7:0]kernel[0:8];
reg [3:0]cnt;
reg [13:0]addr;
//def wire
wire FIR_SHIFT;
wire [7:0]kernel_sum;

assign FIR_SHIFT = (addr[6:0] == 14'd1) ? 0 : 1;
assign finish 	 = (addr[6:0] == 1) && (addr>>7==127) ? 1 : 0;
assign kernel_sum = ((kernel[0] >= kernel[4]) ? 1  : 0)+
					((kernel[1] >= kernel[4]) ? 2  : 0)+
					((kernel[2] >= kernel[4]) ? 4  : 0)+
					((kernel[3] >= kernel[4]) ? 8  : 0)+
					((kernel[5] >= kernel[4]) ? 16 : 0)+
					((kernel[6] >= kernel[4]) ? 32 : 0)+
					((kernel[7] >= kernel[4]) ? 64 : 0)+
					((kernel[8] >= kernel[4]) ? 128: 0);

//fsm
always@(posedge clk) begin
	if(reset)	cur_state <= 2'd0;
	else		cur_state <= next_state;
end

always@* begin
	case(cur_state)
		PRESET_ADDR:
		begin
			if(gray_ready) 	next_state = 1;
			else 		  	next_state = 0;
		end
		READ_DATA:
		begin
			if(!FIR_SHIFT && cnt==8)		next_state = 2;
			else if(FIR_SHIFT && cnt==2)	next_state = 2;
			else 							next_state = 1;
		end
		ARITHMATIC: 	next_state = 3;
		STORE:
		begin
			if(!finish)	next_state = 0;
			else 		next_state = 3;
		end
	endcase
end


//gray_addr ctrl
always@(posedge clk) begin
	if(reset) begin
		cnt  <= 4'd0;
		gray_addr <= 14'd0;
	end
	else begin
		case(cur_state)
			PRESET_ADDR:
			begin
				if(gray_ready && FIR_SHIFT)	// 3 cycle
					gray_addr <= addr - 127;
				else						//9 cycle
					gray_addr <= addr - 129;
			end
			READ_DATA:
			begin
				if(FIR_SHIFT) begin
					cnt <= cnt + 1'b1;
					case(cnt)
						0:	gray_addr <= addr + 1;
						1:	gray_addr <= addr + 129;
						2:	gray_addr <= 0;
						default:  gray_addr <= 0;
					endcase
				end
				else begin
					cnt <= cnt + 1'b1;
					case(cnt)
						0:	gray_addr <= addr - 128;
						1:	gray_addr <= addr - 127;
						2:	gray_addr <= addr - 1;
						3:	gray_addr <= addr;
						4:	gray_addr <= addr + 1;
						5:	gray_addr <= addr + 127;
						6:	gray_addr <= addr + 128;
						7:	gray_addr <= addr + 129;
						8:  gray_addr <= 0;
						default:  gray_addr <= 0;
					endcase
				end
			end
			ARITHMATIC:
			begin
				cnt <= 0;
			end
		endcase
	end
end

//addr ctrl
always@(posedge clk) begin
	if(reset) 	addr <= 14'd129;
	else begin
		if(cur_state==STORE) begin
			if(addr[6:0]==126)	addr <= addr + 3;
			else 				addr <= addr + 1;
		end
	end
end

//read signal ctrl
always@(posedge clk) begin
	if(reset) 	gray_req <= 1'b0;
	else begin
		if(cur_state==0 || cur_state==1)	gray_req <= 1'b1;
		else 								gray_req <= 1'b0;
	end
end

//write signal ctrl
always@(posedge clk) begin
	if(reset) begin
		lbp_addr	<= 14'd0;
		lbp_valid	<= 1'b0;
		lbp_data	<= 8'd0;
	end
	else begin
		if(cur_state==3) begin
			lbp_addr	<= addr;
			lbp_valid	<= 1;
			lbp_data	<= kernel_sum;
		end
		else	lbp_valid <= 0;
	end
end
				
//FIR shift reg
always@(posedge clk) begin
	if(reset) begin
		for(i = 0; i < 9; i = i + 1'b1)	kernel[i] <= 8'd0;
	end
	else begin
		case(cur_state)
			0:
			begin
				if(FIR_SHIFT) begin
					kernel[0] <= kernel[1];
					kernel[3] <= kernel[4];
					kernel[6] <= kernel[7];
					kernel[1] <= kernel[2];
					kernel[4] <= kernel[5];
					kernel[7] <= kernel[8];
				end
			end
			1:
			begin
				if(FIR_SHIFT) begin
					case(cnt)
						0: kernel[2] <= gray_data;
						1: kernel[5] <= gray_data;
						2: kernel[8] <= gray_data;
						default: kernel[2] <= 0;
					endcase
				end
				else 	kernel[cnt] <= gray_data;
			end
		endcase
	end
end
//====================================================================
endmodule
