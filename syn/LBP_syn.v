/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Mon Sep 26 11:47:54 2022
/////////////////////////////////////////////////////////////


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069,
         n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079,
         n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089,
         n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         \kernel[0][7] , \kernel[0][6] , \kernel[0][5] , \kernel[0][4] ,
         \kernel[0][3] , \kernel[0][2] , \kernel[0][1] , \kernel[0][0] ,
         \kernel[1][7] , \kernel[1][6] , \kernel[1][5] , \kernel[1][4] ,
         \kernel[1][3] , \kernel[1][2] , \kernel[1][1] , \kernel[1][0] ,
         \kernel[2][7] , \kernel[2][6] , \kernel[2][5] , \kernel[2][4] ,
         \kernel[2][3] , \kernel[2][2] , \kernel[2][1] , \kernel[2][0] ,
         \kernel[3][7] , \kernel[3][6] , \kernel[3][5] , \kernel[3][4] ,
         \kernel[3][3] , \kernel[3][2] , \kernel[3][1] , \kernel[3][0] ,
         \kernel[4][7] , \kernel[4][6] , \kernel[4][5] , \kernel[4][4] ,
         \kernel[4][3] , \kernel[4][2] , \kernel[4][1] , \kernel[4][0] ,
         \kernel[5][7] , \kernel[5][6] , \kernel[5][5] , \kernel[5][4] ,
         \kernel[5][3] , \kernel[5][2] , \kernel[5][1] , \kernel[5][0] ,
         \kernel[6][7] , \kernel[6][6] , \kernel[6][5] , \kernel[6][4] ,
         \kernel[6][3] , \kernel[6][2] , \kernel[6][1] , \kernel[6][0] ,
         \kernel[7][7] , \kernel[7][6] , \kernel[7][5] , \kernel[7][4] ,
         \kernel[7][3] , \kernel[7][2] , \kernel[7][1] , \kernel[7][0] ,
         \kernel[8][7] , \kernel[8][6] , \kernel[8][5] , \kernel[8][4] ,
         \kernel[8][3] , \kernel[8][2] , \kernel[8][1] , \kernel[8][0] , N96,
         N97, N517, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n513, n514, n515, n516, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n947, n948, n949, n950, n951,
         n952, n953, n954, n955, n956, n957, n958, n959, n960, n961, n962,
         n963, n964, n965, n966, n967, n968, n969, n970, n971, n972, n973,
         n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, n984,
         n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995,
         n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005,
         n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059;
  wire   [13:0] addr;
  wire   [1:0] cur_state;
  wire   [3:0] cnt;

  DFFQX1 \cur_state_reg[1]  ( .D(N97), .CK(clk), .Q(cur_state[1]) );
  DFFQX1 \cur_state_reg[0]  ( .D(N96), .CK(clk), .Q(cur_state[0]) );
  DFFQX1 \cnt_reg[0]  ( .D(n419), .CK(clk), .Q(cnt[0]) );
  DFFQX1 \cnt_reg[1]  ( .D(n418), .CK(clk), .Q(cnt[1]) );
  DFFQX1 \cnt_reg[2]  ( .D(n417), .CK(clk), .Q(cnt[2]) );
  DFFQX1 \cnt_reg[3]  ( .D(n416), .CK(clk), .Q(cnt[3]) );
  DFFQX1 \kernel_reg[2][7]  ( .D(n450), .CK(clk), .Q(\kernel[2][7] ) );
  DFFQX1 \kernel_reg[1][7]  ( .D(n442), .CK(clk), .Q(\kernel[1][7] ) );
  DFFQX1 \kernel_reg[0][7]  ( .D(n434), .CK(clk), .Q(\kernel[0][7] ) );
  DFFQX1 \kernel_reg[2][6]  ( .D(n451), .CK(clk), .Q(\kernel[2][6] ) );
  DFFQX1 \kernel_reg[1][6]  ( .D(n443), .CK(clk), .Q(\kernel[1][6] ) );
  DFFQX1 \kernel_reg[0][6]  ( .D(n435), .CK(clk), .Q(\kernel[0][6] ) );
  DFFQX1 \kernel_reg[2][5]  ( .D(n452), .CK(clk), .Q(\kernel[2][5] ) );
  DFFQX1 \kernel_reg[1][5]  ( .D(n444), .CK(clk), .Q(\kernel[1][5] ) );
  DFFQX1 \kernel_reg[0][5]  ( .D(n436), .CK(clk), .Q(\kernel[0][5] ) );
  DFFQX1 \kernel_reg[2][4]  ( .D(n453), .CK(clk), .Q(\kernel[2][4] ) );
  DFFQX1 \kernel_reg[1][4]  ( .D(n445), .CK(clk), .Q(\kernel[1][4] ) );
  DFFQX1 \kernel_reg[0][4]  ( .D(n437), .CK(clk), .Q(\kernel[0][4] ) );
  DFFQX1 \kernel_reg[2][3]  ( .D(n454), .CK(clk), .Q(\kernel[2][3] ) );
  DFFQX1 \kernel_reg[1][3]  ( .D(n446), .CK(clk), .Q(\kernel[1][3] ) );
  DFFQX1 \kernel_reg[0][3]  ( .D(n438), .CK(clk), .Q(\kernel[0][3] ) );
  DFFQX1 \kernel_reg[2][2]  ( .D(n455), .CK(clk), .Q(\kernel[2][2] ) );
  DFFQX1 \kernel_reg[1][2]  ( .D(n447), .CK(clk), .Q(\kernel[1][2] ) );
  DFFQX1 \kernel_reg[0][2]  ( .D(n439), .CK(clk), .Q(\kernel[0][2] ) );
  DFFQX1 \kernel_reg[2][1]  ( .D(n456), .CK(clk), .Q(\kernel[2][1] ) );
  DFFQX1 \kernel_reg[1][1]  ( .D(n448), .CK(clk), .Q(\kernel[1][1] ) );
  DFFQX1 \kernel_reg[0][1]  ( .D(n440), .CK(clk), .Q(\kernel[0][1] ) );
  DFFQX1 \kernel_reg[2][0]  ( .D(n457), .CK(clk), .Q(\kernel[2][0] ) );
  DFFQX1 \kernel_reg[1][0]  ( .D(n449), .CK(clk), .Q(\kernel[1][0] ) );
  DFFQX1 \kernel_reg[0][0]  ( .D(n441), .CK(clk), .Q(\kernel[0][0] ) );
  DFFQX1 \kernel_reg[5][7]  ( .D(n474), .CK(clk), .Q(\kernel[5][7] ) );
  DFFQX1 \kernel_reg[3][7]  ( .D(n458), .CK(clk), .Q(\kernel[3][7] ) );
  DFFQX1 \kernel_reg[5][6]  ( .D(n475), .CK(clk), .Q(\kernel[5][6] ) );
  DFFQX1 \kernel_reg[4][6]  ( .D(n467), .CK(clk), .Q(\kernel[4][6] ) );
  DFFQX1 \kernel_reg[3][6]  ( .D(n459), .CK(clk), .Q(\kernel[3][6] ) );
  DFFQX1 \kernel_reg[5][5]  ( .D(n476), .CK(clk), .Q(\kernel[5][5] ) );
  DFFQX1 \kernel_reg[3][5]  ( .D(n460), .CK(clk), .Q(\kernel[3][5] ) );
  DFFQX1 \kernel_reg[5][4]  ( .D(n477), .CK(clk), .Q(\kernel[5][4] ) );
  DFFQX1 \kernel_reg[4][4]  ( .D(n469), .CK(clk), .Q(\kernel[4][4] ) );
  DFFQX1 \kernel_reg[3][4]  ( .D(n461), .CK(clk), .Q(\kernel[3][4] ) );
  DFFQX1 \kernel_reg[5][3]  ( .D(n478), .CK(clk), .Q(\kernel[5][3] ) );
  DFFQX1 \kernel_reg[3][3]  ( .D(n462), .CK(clk), .Q(\kernel[3][3] ) );
  DFFQX1 \kernel_reg[5][2]  ( .D(n479), .CK(clk), .Q(\kernel[5][2] ) );
  DFFQX1 \kernel_reg[4][2]  ( .D(n471), .CK(clk), .Q(\kernel[4][2] ) );
  DFFQX1 \kernel_reg[3][2]  ( .D(n463), .CK(clk), .Q(\kernel[3][2] ) );
  DFFQX1 \kernel_reg[5][1]  ( .D(n480), .CK(clk), .Q(\kernel[5][1] ) );
  DFFQX1 \kernel_reg[4][1]  ( .D(n472), .CK(clk), .Q(\kernel[4][1] ) );
  DFFQX1 \kernel_reg[3][1]  ( .D(n464), .CK(clk), .Q(\kernel[3][1] ) );
  DFFQX1 \kernel_reg[5][0]  ( .D(n481), .CK(clk), .Q(\kernel[5][0] ) );
  DFFQX1 \kernel_reg[4][0]  ( .D(n473), .CK(clk), .Q(\kernel[4][0] ) );
  DFFQX1 \kernel_reg[3][0]  ( .D(n465), .CK(clk), .Q(\kernel[3][0] ) );
  DFFQX1 \kernel_reg[8][7]  ( .D(n498), .CK(clk), .Q(\kernel[8][7] ) );
  DFFQX1 \kernel_reg[7][7]  ( .D(n490), .CK(clk), .Q(\kernel[7][7] ) );
  DFFQX1 \kernel_reg[6][7]  ( .D(n482), .CK(clk), .Q(\kernel[6][7] ) );
  DFFQX1 \kernel_reg[8][6]  ( .D(n499), .CK(clk), .Q(\kernel[8][6] ) );
  DFFQX1 \kernel_reg[7][6]  ( .D(n491), .CK(clk), .Q(\kernel[7][6] ) );
  DFFQX1 \kernel_reg[6][6]  ( .D(n483), .CK(clk), .Q(\kernel[6][6] ) );
  DFFQX1 \kernel_reg[8][5]  ( .D(n500), .CK(clk), .Q(\kernel[8][5] ) );
  DFFQX1 \kernel_reg[7][5]  ( .D(n492), .CK(clk), .Q(\kernel[7][5] ) );
  DFFQX1 \kernel_reg[6][5]  ( .D(n484), .CK(clk), .Q(\kernel[6][5] ) );
  DFFQX1 \kernel_reg[8][4]  ( .D(n501), .CK(clk), .Q(\kernel[8][4] ) );
  DFFQX1 \kernel_reg[7][4]  ( .D(n493), .CK(clk), .Q(\kernel[7][4] ) );
  DFFQX1 \kernel_reg[6][4]  ( .D(n485), .CK(clk), .Q(\kernel[6][4] ) );
  DFFQX1 \kernel_reg[8][3]  ( .D(n502), .CK(clk), .Q(\kernel[8][3] ) );
  DFFQX1 \kernel_reg[7][3]  ( .D(n494), .CK(clk), .Q(\kernel[7][3] ) );
  DFFQX1 \kernel_reg[6][3]  ( .D(n486), .CK(clk), .Q(\kernel[6][3] ) );
  DFFQX1 \kernel_reg[8][2]  ( .D(n503), .CK(clk), .Q(\kernel[8][2] ) );
  DFFQX1 \kernel_reg[7][2]  ( .D(n495), .CK(clk), .Q(\kernel[7][2] ) );
  DFFQX1 \kernel_reg[6][2]  ( .D(n487), .CK(clk), .Q(\kernel[6][2] ) );
  DFFQX1 \kernel_reg[8][1]  ( .D(n504), .CK(clk), .Q(\kernel[8][1] ) );
  DFFQX1 \kernel_reg[7][1]  ( .D(n496), .CK(clk), .Q(\kernel[7][1] ) );
  DFFQX1 \kernel_reg[6][1]  ( .D(n488), .CK(clk), .Q(\kernel[6][1] ) );
  DFFQX1 \kernel_reg[8][0]  ( .D(n505), .CK(clk), .Q(\kernel[8][0] ) );
  DFFQX1 \kernel_reg[7][0]  ( .D(n497), .CK(clk), .Q(\kernel[7][0] ) );
  DFFQX1 \kernel_reg[6][0]  ( .D(n489), .CK(clk), .Q(\kernel[6][0] ) );
  DFFQX1 gray_req_reg ( .D(N517), .CK(clk), .Q(n1074) );
  DFFQX1 lbp_valid_reg ( .D(n1059), .CK(clk), .Q(n1089) );
  DFFQX1 \lbp_data_reg[7]  ( .D(n394), .CK(clk), .Q(n1090) );
  DFFQX1 \lbp_data_reg[6]  ( .D(n395), .CK(clk), .Q(n1091) );
  DFFQX1 \lbp_data_reg[5]  ( .D(n396), .CK(clk), .Q(n1092) );
  DFFQX1 \lbp_data_reg[4]  ( .D(n397), .CK(clk), .Q(n1093) );
  DFFQX1 \lbp_data_reg[3]  ( .D(n398), .CK(clk), .Q(n1094) );
  DFFQX1 \lbp_data_reg[2]  ( .D(n399), .CK(clk), .Q(n1095) );
  DFFQX1 \lbp_data_reg[1]  ( .D(n400), .CK(clk), .Q(n1096) );
  DFFQX1 \lbp_data_reg[0]  ( .D(n401), .CK(clk), .Q(n1097) );
  DFFQX1 \addr_reg[13]  ( .D(n402), .CK(clk), .Q(addr[13]) );
  DFFQX1 \addr_reg[11]  ( .D(n404), .CK(clk), .Q(addr[11]) );
  DFFQX1 \addr_reg[9]  ( .D(n406), .CK(clk), .Q(addr[9]) );
  DFFQX1 \addr_reg[3]  ( .D(n412), .CK(clk), .Q(addr[3]) );
  DFFQX1 \addr_reg[1]  ( .D(n415), .CK(clk), .Q(addr[1]) );
  DFFQX1 \addr_reg[5]  ( .D(n410), .CK(clk), .Q(addr[5]) );
  DFFQX1 \addr_reg[2]  ( .D(n413), .CK(clk), .Q(addr[2]) );
  DFFQX1 \addr_reg[4]  ( .D(n411), .CK(clk), .Q(addr[4]) );
  DFFQX4 \kernel_reg[4][3]  ( .D(n470), .CK(clk), .Q(\kernel[4][3] ) );
  DFFQX4 \kernel_reg[4][5]  ( .D(n468), .CK(clk), .Q(\kernel[4][5] ) );
  DFFQX4 \kernel_reg[4][7]  ( .D(n466), .CK(clk), .Q(\kernel[4][7] ) );
  DFFQX1 \gray_addr_reg[12]  ( .D(n421), .CK(clk), .Q(n1061) );
  DFFQX1 \gray_addr_reg[10]  ( .D(n423), .CK(clk), .Q(n1063) );
  DFFQX1 \gray_addr_reg[9]  ( .D(n424), .CK(clk), .Q(n1064) );
  DFFQX1 \gray_addr_reg[8]  ( .D(n425), .CK(clk), .Q(n1065) );
  DFFQX1 \gray_addr_reg[7]  ( .D(n426), .CK(clk), .Q(n1066) );
  DFFQX1 \gray_addr_reg[6]  ( .D(n427), .CK(clk), .Q(n1067) );
  DFFQX1 \gray_addr_reg[5]  ( .D(n428), .CK(clk), .Q(n1068) );
  DFFQX1 \gray_addr_reg[4]  ( .D(n429), .CK(clk), .Q(n1069) );
  DFFQX1 \gray_addr_reg[3]  ( .D(n430), .CK(clk), .Q(n1070) );
  DFFQX1 \gray_addr_reg[2]  ( .D(n431), .CK(clk), .Q(n1071) );
  DFFQX1 \gray_addr_reg[1]  ( .D(n432), .CK(clk), .Q(n1072) );
  DFFQX1 \gray_addr_reg[0]  ( .D(n433), .CK(clk), .Q(n1073) );
  DFFQX1 \gray_addr_reg[11]  ( .D(n422), .CK(clk), .Q(n1062) );
  DFFQX1 \lbp_addr_reg[0]  ( .D(n393), .CK(clk), .Q(n1088) );
  DFFQX1 \lbp_addr_reg[1]  ( .D(n392), .CK(clk), .Q(n1087) );
  DFFQX1 \lbp_addr_reg[2]  ( .D(n391), .CK(clk), .Q(n1086) );
  DFFQX1 \lbp_addr_reg[3]  ( .D(n390), .CK(clk), .Q(n1085) );
  DFFQX1 \lbp_addr_reg[4]  ( .D(n389), .CK(clk), .Q(n1084) );
  DFFQX1 \lbp_addr_reg[5]  ( .D(n388), .CK(clk), .Q(n1083) );
  DFFQX1 \lbp_addr_reg[6]  ( .D(n387), .CK(clk), .Q(n1082) );
  DFFQX1 \lbp_addr_reg[7]  ( .D(n386), .CK(clk), .Q(n1081) );
  DFFQX1 \lbp_addr_reg[8]  ( .D(n385), .CK(clk), .Q(n1080) );
  DFFQX1 \lbp_addr_reg[9]  ( .D(n384), .CK(clk), .Q(n1079) );
  DFFQX1 \lbp_addr_reg[10]  ( .D(n383), .CK(clk), .Q(n1078) );
  DFFQX1 \lbp_addr_reg[11]  ( .D(n382), .CK(clk), .Q(n1077) );
  DFFQX1 \lbp_addr_reg[12]  ( .D(n381), .CK(clk), .Q(n1076) );
  DFFQX1 \lbp_addr_reg[13]  ( .D(n380), .CK(clk), .Q(n1075) );
  DFFQX1 \gray_addr_reg[13]  ( .D(n420), .CK(clk), .Q(n1060) );
  DFFQX2 \addr_reg[6]  ( .D(n409), .CK(clk), .Q(addr[6]) );
  DFFQX2 \addr_reg[7]  ( .D(n408), .CK(clk), .Q(addr[7]) );
  DFFQX2 \addr_reg[12]  ( .D(n403), .CK(clk), .Q(addr[12]) );
  DFFQX2 \addr_reg[8]  ( .D(n407), .CK(clk), .Q(addr[8]) );
  DFFQX2 \addr_reg[0]  ( .D(n414), .CK(clk), .Q(addr[0]) );
  DFFQX2 \addr_reg[10]  ( .D(n405), .CK(clk), .Q(addr[10]) );
  OR2X1 U520 ( .A(n873), .B(n878), .Y(n874) );
  NAND4BBXL U521 ( .AN(n880), .BN(n1022), .C(addr[12]), .D(n631), .Y(n619) );
  CLKBUFX3 U522 ( .A(n637), .Y(n751) );
  OR2X1 U523 ( .A(n599), .B(addr[12]), .Y(n989) );
  OR2X1 U524 ( .A(n599), .B(addr[13]), .Y(n602) );
  AOI222XL U525 ( .A0(\kernel[4][3] ), .A1(n784), .B0(\kernel[4][3] ), .B1(
        n783), .C0(n784), .C1(n783), .Y(n785) );
  AOI222XL U526 ( .A0(\kernel[4][3] ), .A1(n806), .B0(\kernel[4][3] ), .B1(
        n805), .C0(n806), .C1(n805), .Y(n807) );
  AOI222XL U527 ( .A0(\kernel[4][3] ), .A1(n773), .B0(\kernel[4][3] ), .B1(
        n772), .C0(n773), .C1(n772), .Y(n774) );
  AOI222XL U528 ( .A0(\kernel[4][3] ), .A1(n818), .B0(\kernel[4][3] ), .B1(
        n817), .C0(n818), .C1(n817), .Y(n819) );
  AOI222XL U529 ( .A0(\kernel[4][3] ), .A1(n830), .B0(\kernel[4][3] ), .B1(
        n829), .C0(n830), .C1(n829), .Y(n831) );
  INVX3 U530 ( .A(n860), .Y(n1059) );
  AOI222XL U531 ( .A0(n840), .A1(\kernel[5][2] ), .B0(n840), .B1(n1008), .C0(
        \kernel[5][2] ), .C1(n1008), .Y(n842) );
  AOI222XL U532 ( .A0(n851), .A1(\kernel[2][2] ), .B0(n851), .B1(n1008), .C0(
        \kernel[2][2] ), .C1(n1008), .Y(n852) );
  INVX3 U533 ( .A(reset), .Y(n1026) );
  INVX1 U534 ( .A(n759), .Y(n583) );
  NAND2X1 U535 ( .A(n587), .B(addr[3]), .Y(n912) );
  CLKXOR2X2 U536 ( .A(n599), .B(n582), .Y(n759) );
  INVX6 U537 ( .A(n575), .Y(n599) );
  INVXL U538 ( .A(n676), .Y(n591) );
  BUFX8 U539 ( .A(n574), .Y(n587) );
  INVXL U540 ( .A(n1049), .Y(n579) );
  NAND2X1 U541 ( .A(n1026), .B(cur_state[1]), .Y(n635) );
  NAND2XL U542 ( .A(n608), .B(cnt[2]), .Y(n1056) );
  INVXL U543 ( .A(n922), .Y(n429) );
  CLKBUFX3 U544 ( .A(n644), .Y(n1016) );
  NOR2XL U545 ( .A(reset), .B(n1059), .Y(n626) );
  INVX1 U546 ( .A(n943), .Y(n952) );
  NAND2XL U547 ( .A(n708), .B(n707), .Y(n709) );
  OAI211X2 U548 ( .A0(n1021), .A1(n1020), .B0(n1026), .C0(n1019), .Y(n1043) );
  NAND2XL U549 ( .A(n638), .B(n707), .Y(n639) );
  NAND2XL U550 ( .A(n673), .B(n707), .Y(n674) );
  OAI21XL U551 ( .A0(n1023), .A1(n636), .B0(n707), .Y(n637) );
  INVXL U552 ( .A(addr[6]), .Y(n556) );
  NOR2X1 U553 ( .A(reset), .B(cur_state[0]), .Y(n764) );
  INVX1 U554 ( .A(n942), .Y(n427) );
  INVX1 U555 ( .A(n930), .Y(n428) );
  OR2X1 U556 ( .A(n599), .B(addr[10]), .Y(n972) );
  OR2X1 U557 ( .A(n871), .B(n618), .Y(n627) );
  INVX2 U558 ( .A(n735), .Y(n736) );
  BUFX2 U559 ( .A(n592), .Y(n513) );
  INVX2 U560 ( .A(n514), .Y(n515) );
  INVX2 U561 ( .A(n700), .Y(n701) );
  INVX2 U562 ( .A(n730), .Y(n731) );
  INVX1 U563 ( .A(n1041), .Y(n514) );
  INVX2 U564 ( .A(n696), .Y(n697) );
  INVX2 U565 ( .A(n1012), .Y(n1014) );
  INVX2 U566 ( .A(n751), .Y(n753) );
  NAND2X4 U567 ( .A(n764), .B(n751), .Y(n644) );
  INVX1 U568 ( .A(n869), .Y(n563) );
  AO21X1 U569 ( .A0(addr[6]), .A1(n886), .B0(addr[7]), .Y(n859) );
  AOI222XL U570 ( .A0(\kernel[4][5] ), .A1(n776), .B0(\kernel[4][5] ), .B1(
        n775), .C0(n776), .C1(n775), .Y(n777) );
  AOI222XL U571 ( .A0(\kernel[4][5] ), .A1(n787), .B0(\kernel[4][5] ), .B1(
        n786), .C0(n787), .C1(n786), .Y(n788) );
  AOI222XL U572 ( .A0(\kernel[4][5] ), .A1(n809), .B0(\kernel[4][5] ), .B1(
        n808), .C0(n809), .C1(n808), .Y(n810) );
  BUFX4 U573 ( .A(n626), .Y(n887) );
  AOI222XL U574 ( .A0(\kernel[4][5] ), .A1(n798), .B0(\kernel[4][5] ), .B1(
        n797), .C0(n798), .C1(n797), .Y(n799) );
  AOI222XL U575 ( .A0(\kernel[4][5] ), .A1(n821), .B0(\kernel[4][5] ), .B1(
        n820), .C0(n821), .C1(n820), .Y(n822) );
  AOI222XL U576 ( .A0(\kernel[4][5] ), .A1(n833), .B0(\kernel[4][5] ), .B1(
        n832), .C0(n833), .C1(n832), .Y(n834) );
  NAND2X1 U577 ( .A(n613), .B(n567), .Y(n1019) );
  NAND2X1 U578 ( .A(n613), .B(n579), .Y(n673) );
  NAND2X1 U579 ( .A(addr[4]), .B(n669), .Y(n668) );
  AOI222XL U580 ( .A0(\kernel[4][3] ), .A1(n795), .B0(\kernel[4][3] ), .B1(
        n794), .C0(n795), .C1(n794), .Y(n796) );
  NAND2X1 U581 ( .A(n1059), .B(n621), .Y(n622) );
  NAND2X1 U582 ( .A(n1021), .B(n1045), .Y(n565) );
  NAND2X1 U583 ( .A(n1050), .B(cnt[0]), .Y(n1049) );
  INVX1 U584 ( .A(n1018), .Y(n1023) );
  NAND3X1 U585 ( .A(n555), .B(n658), .C(n670), .Y(n558) );
  NAND3X1 U586 ( .A(n660), .B(n556), .C(addr[0]), .Y(n557) );
  NOR2X1 U587 ( .A(addr[3]), .B(addr[2]), .Y(n555) );
  INVX2 U588 ( .A(\kernel[4][0] ), .Y(n1002) );
  INVX1 U589 ( .A(addr[4]), .Y(n670) );
  INVX1 U590 ( .A(cnt[0]), .Y(n577) );
  INVX1 U591 ( .A(cnt[3]), .Y(n608) );
  INVX1 U592 ( .A(cnt[1]), .Y(n1050) );
  INVX1 U593 ( .A(cnt[2]), .Y(n647) );
  NOR2X1 U594 ( .A(n587), .B(addr[4]), .Y(n915) );
  NAND2XL U595 ( .A(n599), .B(addr[8]), .Y(n954) );
  AND2X1 U596 ( .A(addr[9]), .B(addr[8]), .Y(n562) );
  INVXL U597 ( .A(n649), .Y(n567) );
  INVXL U598 ( .A(n971), .Y(n597) );
  NOR2XL U599 ( .A(n999), .B(addr[0]), .Y(n761) );
  BUFX2 U600 ( .A(n622), .Y(n885) );
  NAND2XL U601 ( .A(n916), .B(n912), .Y(n923) );
  NOR2XL U602 ( .A(n599), .B(addr[9]), .Y(n962) );
  NAND2XL U603 ( .A(n599), .B(addr[9]), .Y(n963) );
  NOR2XL U604 ( .A(n599), .B(addr[11]), .Y(n979) );
  NAND2XL U605 ( .A(n599), .B(addr[11]), .Y(n980) );
  NOR2XL U606 ( .A(n636), .B(n649), .Y(n703) );
  NAND2XL U607 ( .A(n1052), .B(n578), .Y(n708) );
  INVXL U608 ( .A(n636), .Y(n578) );
  AND2X1 U609 ( .A(n613), .B(n1018), .Y(n676) );
  NAND2XL U610 ( .A(n981), .B(n980), .Y(n982) );
  INVXL U611 ( .A(n979), .Y(n981) );
  NAND2XL U612 ( .A(n599), .B(addr[0]), .Y(n757) );
  INVXL U613 ( .A(n756), .Y(n758) );
  INVXL U614 ( .A(n576), .Y(n581) );
  INVXL U615 ( .A(n896), .Y(n889) );
  INVXL U616 ( .A(n890), .Y(n897) );
  NAND2XL U617 ( .A(n587), .B(addr[2]), .Y(n899) );
  INVXL U618 ( .A(n898), .Y(n900) );
  INVXL U619 ( .A(n907), .Y(n914) );
  NAND2XL U620 ( .A(n587), .B(addr[4]), .Y(n916) );
  INVXL U621 ( .A(n915), .Y(n917) );
  AOI21XL U622 ( .A0(n925), .A1(n914), .B0(n913), .Y(n919) );
  INVXL U623 ( .A(n912), .Y(n913) );
  NAND2XL U624 ( .A(n587), .B(addr[5]), .Y(n931) );
  INVXL U625 ( .A(n932), .Y(n926) );
  NAND2XL U626 ( .A(n936), .B(n935), .Y(n937) );
  INVXL U627 ( .A(n934), .Y(n936) );
  NAND2XL U628 ( .A(n944), .B(n950), .Y(n945) );
  INVXL U629 ( .A(n951), .Y(n944) );
  OAI21XL U630 ( .A0(n952), .A1(n951), .B0(n950), .Y(n957) );
  NAND2XL U631 ( .A(n955), .B(n954), .Y(n956) );
  INVXL U632 ( .A(n953), .Y(n955) );
  NOR2XL U633 ( .A(n951), .B(n953), .Y(n596) );
  OAI21XL U634 ( .A0(n950), .A1(n953), .B0(n954), .Y(n595) );
  NAND2XL U635 ( .A(n964), .B(n963), .Y(n965) );
  INVXL U636 ( .A(n962), .Y(n964) );
  NAND2XL U637 ( .A(n972), .B(n971), .Y(n973) );
  CLKBUFX3 U638 ( .A(n611), .Y(n992) );
  OAI22XL U639 ( .A0(n610), .A1(reset), .B0(n1022), .B1(n609), .Y(n611) );
  NOR4XL U640 ( .A(n607), .B(n606), .C(n654), .D(n605), .Y(n610) );
  OAI211XL U641 ( .A0(n647), .A1(cnt[1]), .B0(n1048), .C0(n608), .Y(n609) );
  INVXL U642 ( .A(n580), .Y(n559) );
  NAND2XL U643 ( .A(n864), .B(n873), .Y(n630) );
  NOR2XL U644 ( .A(n871), .B(n629), .Y(n628) );
  AOI2BB1X1 U645 ( .A0N(n878), .A1N(n631), .B0(n887), .Y(n877) );
  BUFX2 U646 ( .A(n639), .Y(n1012) );
  OAI211XL U647 ( .A0(n885), .A1(n961), .B0(n866), .C0(n865), .Y(n407) );
  OAI211XL U648 ( .A0(n885), .A1(n949), .B0(n862), .C0(n861), .Y(n408) );
  INVXL U649 ( .A(n863), .Y(n862) );
  INVXL U650 ( .A(n885), .Y(n888) );
  NOR2XL U651 ( .A(n932), .B(n934), .Y(n586) );
  CLKAND2X8 U652 ( .A(gray_ready), .B(n1022), .Y(n570) );
  NOR2XL U653 ( .A(n606), .B(n605), .Y(n592) );
  NOR2XL U654 ( .A(n587), .B(addr[6]), .Y(n934) );
  NOR2X2 U655 ( .A(n570), .B(n569), .Y(n606) );
  INVXL U656 ( .A(n568), .Y(n569) );
  NAND2XL U657 ( .A(n708), .B(n653), .Y(n605) );
  NAND2XL U658 ( .A(addr[2]), .B(n662), .Y(n665) );
  NOR4XL U659 ( .A(n670), .B(n666), .C(n663), .D(n660), .Y(n620) );
  OAI2BB1XL U660 ( .A0N(n1005), .A1N(\kernel[0][1] ), .B0(n792), .Y(n793) );
  INVXL U661 ( .A(\kernel[0][3] ), .Y(n794) );
  OAI2BB1XL U662 ( .A0N(n1005), .A1N(\kernel[3][1] ), .B0(n781), .Y(n782) );
  INVXL U663 ( .A(\kernel[3][3] ), .Y(n783) );
  OAI2BB1XL U664 ( .A0N(n1005), .A1N(\kernel[6][1] ), .B0(n803), .Y(n804) );
  INVXL U665 ( .A(\kernel[6][3] ), .Y(n805) );
  NAND2XL U666 ( .A(n1052), .B(n613), .Y(n638) );
  INVXL U667 ( .A(n988), .Y(n598) );
  NAND2XL U668 ( .A(n602), .B(n601), .Y(n603) );
  NAND2XL U669 ( .A(n859), .B(n869), .Y(n949) );
  XOR2X1 U670 ( .A(n869), .B(addr[8]), .Y(n961) );
  NAND2XL U671 ( .A(n989), .B(n988), .Y(n990) );
  AOI21XL U672 ( .A0(n658), .A1(n668), .B0(n886), .Y(n928) );
  AOI21XL U673 ( .A0(n666), .A1(n665), .B0(n669), .Y(n909) );
  NAND2XL U674 ( .A(n871), .B(n870), .Y(n970) );
  NAND2XL U675 ( .A(n864), .B(n631), .Y(n881) );
  NOR2XL U676 ( .A(n627), .B(n624), .Y(n564) );
  INVXL U677 ( .A(\kernel[8][0] ), .Y(n726) );
  INVXL U678 ( .A(\kernel[8][1] ), .Y(n827) );
  INVXL U679 ( .A(\kernel[8][2] ), .Y(n729) );
  INVXL U680 ( .A(\kernel[7][3] ), .Y(n772) );
  INVXL U681 ( .A(\kernel[8][4] ), .Y(n734) );
  INVXL U682 ( .A(\kernel[8][6] ), .Y(n722) );
  BUFX2 U683 ( .A(n704), .Y(n730) );
  BUFX2 U684 ( .A(n709), .Y(n735) );
  INVXL U685 ( .A(\kernel[8][7] ), .Y(n717) );
  INVXL U686 ( .A(\kernel[5][1] ), .Y(n839) );
  INVXL U687 ( .A(\kernel[5][2] ), .Y(n741) );
  INVXL U688 ( .A(\kernel[5][6] ), .Y(n745) );
  BUFX2 U689 ( .A(n655), .Y(n657) );
  INVXL U690 ( .A(\kernel[5][7] ), .Y(n755) );
  INVXL U691 ( .A(\kernel[2][0] ), .Y(n1028) );
  INVXL U692 ( .A(\kernel[1][1] ), .Y(n815) );
  INVXL U693 ( .A(\kernel[2][1] ), .Y(n1030) );
  INVXL U694 ( .A(\kernel[2][2] ), .Y(n1032) );
  INVXL U695 ( .A(\kernel[2][4] ), .Y(n1036) );
  INVXL U696 ( .A(\kernel[1][5] ), .Y(n821) );
  INVXL U697 ( .A(\kernel[2][6] ), .Y(n1040) );
  BUFX2 U698 ( .A(n677), .Y(n696) );
  BUFX2 U699 ( .A(n674), .Y(n700) );
  INVXL U700 ( .A(\kernel[2][7] ), .Y(n1044) );
  NOR2XL U701 ( .A(n1048), .B(n1047), .Y(n1051) );
  BUFX2 U702 ( .A(n650), .Y(n651) );
  XOR2X1 U703 ( .A(n860), .B(addr[0]), .Y(n768) );
  NAND2XL U704 ( .A(n984), .B(n992), .Y(n986) );
  OAI2BB1XL U705 ( .A0N(n992), .A1N(n763), .B0(n762), .Y(n433) );
  NAND2XL U706 ( .A(n758), .B(n757), .Y(n760) );
  INVXL U707 ( .A(n894), .Y(n432) );
  NAND2XL U708 ( .A(n889), .B(n895), .Y(n891) );
  INVXL U709 ( .A(n905), .Y(n431) );
  NAND2XL U710 ( .A(n900), .B(n899), .Y(n901) );
  NAND2XL U711 ( .A(n914), .B(n912), .Y(n908) );
  NAND2XL U712 ( .A(n917), .B(n916), .Y(n918) );
  NAND2XL U713 ( .A(n926), .B(n931), .Y(n927) );
  XOR2X1 U714 ( .A(addr[6]), .B(n886), .Y(n939) );
  NAND2XL U715 ( .A(n946), .B(n992), .Y(n948) );
  NAND2XL U716 ( .A(n958), .B(n992), .Y(n960) );
  NAND2XL U717 ( .A(n967), .B(n992), .Y(n969) );
  NAND2XL U718 ( .A(n975), .B(n992), .Y(n977) );
  OAI211XL U719 ( .A0(n885), .A1(n970), .B0(n876), .C0(n875), .Y(n406) );
  NOR3XL U720 ( .A(n631), .B(n630), .C(n629), .Y(n632) );
  INVXL U721 ( .A(\kernel[4][3] ), .Y(n646) );
  INVXL U722 ( .A(\kernel[4][5] ), .Y(n643) );
  NAND2XL U723 ( .A(gray_ready), .B(n764), .Y(n766) );
  NAND2XL U724 ( .A(n765), .B(n651), .Y(N97) );
  AOI211XL U725 ( .A0(n779), .A1(\kernel[4][7] ), .B0(n778), .C0(n860), .Y(
        n780) );
  AOI211XL U726 ( .A0(n824), .A1(\kernel[4][7] ), .B0(n823), .C0(n860), .Y(
        n825) );
  AOI211XL U727 ( .A0(n836), .A1(\kernel[4][7] ), .B0(n835), .C0(n860), .Y(
        n837) );
  AOI211XL U728 ( .A0(n848), .A1(\kernel[4][7] ), .B0(n847), .C0(n860), .Y(
        n849) );
  AOI211XL U729 ( .A0(n857), .A1(\kernel[4][7] ), .B0(n856), .C0(n860), .Y(
        n858) );
  NAND2XL U730 ( .A(n599), .B(addr[10]), .Y(n971) );
  XOR2X1 U731 ( .A(n871), .B(addr[10]), .Y(n978) );
  NAND3XL U732 ( .A(n1026), .B(n1043), .C(n1025), .Y(n1041) );
  NAND2XL U733 ( .A(n768), .B(n1026), .Y(n414) );
  XOR2X1 U734 ( .A(n627), .B(addr[12]), .Y(n998) );
  NAND2XL U735 ( .A(n599), .B(addr[12]), .Y(n988) );
  NOR2XL U736 ( .A(addr[7]), .B(n878), .Y(n863) );
  CLKINVX2 U737 ( .A(\kernel[4][1] ), .Y(n1005) );
  NAND2X2 U738 ( .A(n1026), .B(n657), .Y(n656) );
  XOR2X1 U739 ( .A(addr[6]), .B(n886), .Y(n516) );
  OAI2BB1X2 U740 ( .A0N(n1045), .A1N(n767), .B0(n1026), .Y(n652) );
  NAND3XL U741 ( .A(n580), .B(n579), .C(n1045), .Y(n653) );
  NOR2X2 U742 ( .A(n1046), .B(cur_state[1]), .Y(n1045) );
  NOR2X2 U743 ( .A(n558), .B(n557), .Y(n1021) );
  NOR2XL U744 ( .A(n1021), .B(n1024), .Y(n580) );
  BUFX12 U745 ( .A(n1060), .Y(gray_addr[13]) );
  AOI22XL U746 ( .A0(n995), .A1(gray_addr[13]), .B0(n994), .B1(addr[13]), .Y(
        n614) );
  BUFX12 U747 ( .A(n1075), .Y(lbp_addr[13]) );
  BUFX12 U748 ( .A(n1076), .Y(lbp_addr[12]) );
  BUFX12 U749 ( .A(n1077), .Y(lbp_addr[11]) );
  BUFX12 U750 ( .A(n1078), .Y(lbp_addr[10]) );
  BUFX12 U751 ( .A(n1079), .Y(lbp_addr[9]) );
  BUFX12 U752 ( .A(n1080), .Y(lbp_addr[8]) );
  BUFX12 U753 ( .A(n1081), .Y(lbp_addr[7]) );
  BUFX12 U754 ( .A(n1082), .Y(lbp_addr[6]) );
  BUFX12 U755 ( .A(n1083), .Y(lbp_addr[5]) );
  BUFX12 U756 ( .A(n1084), .Y(lbp_addr[4]) );
  BUFX12 U757 ( .A(n1085), .Y(lbp_addr[3]) );
  BUFX12 U758 ( .A(n1086), .Y(lbp_addr[2]) );
  BUFX12 U759 ( .A(n1087), .Y(lbp_addr[1]) );
  BUFX12 U760 ( .A(n1088), .Y(lbp_addr[0]) );
  BUFX12 U761 ( .A(n1062), .Y(gray_addr[11]) );
  BUFX12 U762 ( .A(n1073), .Y(gray_addr[0]) );
  AOI211XL U763 ( .A0(n995), .A1(gray_addr[0]), .B0(n761), .C0(n994), .Y(n762)
         );
  BUFX12 U764 ( .A(n1072), .Y(gray_addr[1]) );
  AOI222XL U765 ( .A0(n992), .A1(n893), .B0(n940), .B1(n892), .C0(gray_addr[1]), .C1(n995), .Y(n894) );
  BUFX12 U766 ( .A(n1071), .Y(gray_addr[2]) );
  AOI222XL U767 ( .A0(n992), .A1(n904), .B0(n940), .B1(n903), .C0(gray_addr[2]), .C1(n995), .Y(n905) );
  BUFX12 U768 ( .A(n1070), .Y(gray_addr[3]) );
  AOI222XL U769 ( .A0(n992), .A1(n910), .B0(n940), .B1(n909), .C0(gray_addr[3]), .C1(n995), .Y(n911) );
  BUFX12 U770 ( .A(n1069), .Y(gray_addr[4]) );
  AOI222XL U771 ( .A0(n992), .A1(n921), .B0(n940), .B1(n920), .C0(gray_addr[4]), .C1(n995), .Y(n922) );
  BUFX12 U772 ( .A(n1068), .Y(gray_addr[5]) );
  AOI222XL U773 ( .A0(n992), .A1(n929), .B0(n940), .B1(n928), .C0(gray_addr[5]), .C1(n995), .Y(n930) );
  BUFX12 U774 ( .A(n1067), .Y(gray_addr[6]) );
  AOI222XL U775 ( .A0(n992), .A1(n941), .B0(n940), .B1(n939), .C0(gray_addr[6]), .C1(n995), .Y(n942) );
  BUFX12 U776 ( .A(n1066), .Y(gray_addr[7]) );
  AOI22XL U777 ( .A0(n995), .A1(gray_addr[7]), .B0(addr[7]), .B1(n994), .Y(
        n947) );
  BUFX12 U778 ( .A(n1065), .Y(gray_addr[8]) );
  AOI22XL U779 ( .A0(n995), .A1(gray_addr[8]), .B0(addr[8]), .B1(n994), .Y(
        n959) );
  BUFX12 U780 ( .A(n1064), .Y(gray_addr[9]) );
  AOI22XL U781 ( .A0(n995), .A1(gray_addr[9]), .B0(n994), .B1(addr[9]), .Y(
        n968) );
  BUFX12 U782 ( .A(n1063), .Y(gray_addr[10]) );
  AOI22XL U783 ( .A0(n995), .A1(gray_addr[10]), .B0(n994), .B1(addr[10]), .Y(
        n976) );
  BUFX12 U784 ( .A(n1061), .Y(gray_addr[12]) );
  AOI22XL U785 ( .A0(n995), .A1(gray_addr[12]), .B0(n994), .B1(addr[12]), .Y(
        n996) );
  BUFX12 U786 ( .A(n1074), .Y(gray_req) );
  BUFX12 U787 ( .A(n1089), .Y(lbp_valid) );
  BUFX12 U788 ( .A(n1097), .Y(lbp_data[0]) );
  BUFX12 U789 ( .A(n1090), .Y(lbp_data[7]) );
  AO21X1 U790 ( .A0(n887), .A1(lbp_data[7]), .B0(n837), .Y(n394) );
  BUFX12 U791 ( .A(n1091), .Y(lbp_data[6]) );
  AO21X1 U792 ( .A0(n887), .A1(lbp_data[6]), .B0(n780), .Y(n395) );
  BUFX12 U793 ( .A(n1092), .Y(lbp_data[5]) );
  AO21X1 U794 ( .A0(n887), .A1(lbp_data[5]), .B0(n813), .Y(n396) );
  BUFX12 U795 ( .A(n1093), .Y(lbp_data[4]) );
  AO21X1 U796 ( .A0(n887), .A1(lbp_data[4]), .B0(n849), .Y(n397) );
  BUFX12 U797 ( .A(n1094), .Y(lbp_data[3]) );
  AO21X1 U798 ( .A0(n887), .A1(lbp_data[3]), .B0(n791), .Y(n398) );
  BUFX12 U799 ( .A(n1095), .Y(lbp_data[2]) );
  AO21X1 U800 ( .A0(n887), .A1(lbp_data[2]), .B0(n858), .Y(n399) );
  BUFX12 U801 ( .A(n1096), .Y(lbp_data[1]) );
  AO21X1 U802 ( .A0(n887), .A1(lbp_data[1]), .B0(n825), .Y(n400) );
  INVXL U803 ( .A(n654), .Y(n572) );
  NAND2XL U804 ( .A(n935), .B(n931), .Y(n588) );
  NOR2XL U805 ( .A(n587), .B(addr[3]), .Y(n907) );
  NAND2XL U806 ( .A(n594), .B(addr[7]), .Y(n950) );
  AOI21X1 U807 ( .A0(n585), .A1(n890), .B0(n584), .Y(n906) );
  INVXL U808 ( .A(\kernel[6][5] ), .Y(n809) );
  NAND3XL U809 ( .A(n581), .B(n513), .C(n1019), .Y(n582) );
  OR2X2 U810 ( .A(n565), .B(n1056), .Y(n636) );
  INVXL U811 ( .A(n873), .Y(n617) );
  AOI22XL U812 ( .A0(n995), .A1(gray_addr[11]), .B0(n994), .B1(addr[11]), .Y(
        n985) );
  XNOR2X1 U813 ( .A(n564), .B(addr[13]), .Y(n884) );
  INVXL U814 ( .A(\kernel[7][1] ), .Y(n770) );
  INVXL U815 ( .A(\kernel[7][5] ), .Y(n776) );
  INVXL U816 ( .A(\kernel[5][0] ), .Y(n739) );
  INVXL U817 ( .A(\kernel[5][4] ), .Y(n743) );
  INVXL U818 ( .A(\kernel[1][0] ), .Y(n699) );
  INVXL U819 ( .A(\kernel[1][3] ), .Y(n817) );
  INVXL U820 ( .A(n1052), .Y(n1057) );
  INVXL U821 ( .A(n911), .Y(n430) );
  OAI211XL U822 ( .A0(n885), .A1(n884), .B0(n883), .C0(n882), .Y(n402) );
  AO21X1 U823 ( .A0(n887), .A1(lbp_data[0]), .B0(n802), .Y(n401) );
  OAI211XL U824 ( .A0(n1058), .A1(n767), .B0(n766), .C0(n765), .Y(N96) );
  CLKINVX1 U825 ( .A(addr[5]), .Y(n658) );
  CLKINVX1 U826 ( .A(addr[1]), .Y(n660) );
  CLKINVX1 U827 ( .A(cur_state[0]), .Y(n1046) );
  NAND2X2 U828 ( .A(n1045), .B(n1026), .Y(n1058) );
  NAND2X1 U829 ( .A(n608), .B(n647), .Y(n1024) );
  OAI22XL U830 ( .A0(reset), .A1(n636), .B0(n1058), .B1(n559), .Y(n560) );
  NOR2X1 U831 ( .A(cnt[1]), .B(cnt[0]), .Y(n1018) );
  NAND2X2 U832 ( .A(n560), .B(n1018), .Y(n999) );
  CLKINVX1 U833 ( .A(addr[3]), .Y(n666) );
  INVXL U834 ( .A(addr[0]), .Y(n561) );
  NOR2X1 U835 ( .A(n561), .B(n660), .Y(n662) );
  NOR2X1 U836 ( .A(n666), .B(n665), .Y(n669) );
  NOR2X1 U837 ( .A(n658), .B(n668), .Y(n886) );
  NAND3X1 U838 ( .A(addr[6]), .B(addr[7]), .C(n886), .Y(n869) );
  NAND2X1 U839 ( .A(n563), .B(n562), .Y(n871) );
  NAND2XL U840 ( .A(addr[11]), .B(addr[10]), .Y(n618) );
  INVXL U841 ( .A(addr[12]), .Y(n624) );
  CLKINVX1 U842 ( .A(n1021), .Y(n1022) );
  NOR2XL U843 ( .A(cur_state[1]), .B(cur_state[0]), .Y(n568) );
  NAND2X2 U844 ( .A(n570), .B(n568), .Y(n566) );
  NOR2X1 U845 ( .A(n565), .B(n1024), .Y(n613) );
  NAND2X2 U846 ( .A(n566), .B(n673), .Y(n607) );
  INVX3 U847 ( .A(n607), .Y(n573) );
  NAND2XL U848 ( .A(n577), .B(cnt[1]), .Y(n649) );
  INVX3 U849 ( .A(n606), .Y(n571) );
  NAND4X2 U850 ( .A(n573), .B(n1019), .C(n571), .D(n591), .Y(n600) );
  NOR2X1 U851 ( .A(n636), .B(n1049), .Y(n654) );
  NAND2X2 U852 ( .A(n573), .B(n572), .Y(n576) );
  XOR2X1 U853 ( .A(n600), .B(n576), .Y(n574) );
  NOR2X1 U854 ( .A(n587), .B(addr[1]), .Y(n896) );
  NOR2X1 U855 ( .A(n587), .B(addr[2]), .Y(n898) );
  NOR2X1 U856 ( .A(n896), .B(n898), .Y(n585) );
  INVX3 U857 ( .A(n600), .Y(n575) );
  NOR2X1 U858 ( .A(n577), .B(n1050), .Y(n1052) );
  NOR2X1 U859 ( .A(n599), .B(addr[0]), .Y(n756) );
  OAI21X1 U860 ( .A0(n583), .A1(n756), .B0(n757), .Y(n890) );
  NAND2X1 U861 ( .A(n587), .B(addr[1]), .Y(n895) );
  NAND2X1 U862 ( .A(n899), .B(n895), .Y(n584) );
  NOR2X1 U863 ( .A(n907), .B(n915), .Y(n924) );
  NOR2X1 U864 ( .A(n587), .B(addr[5]), .Y(n932) );
  NAND2X1 U865 ( .A(n924), .B(n586), .Y(n590) );
  NAND2XL U866 ( .A(n587), .B(addr[6]), .Y(n935) );
  NOR2X1 U867 ( .A(n923), .B(n588), .Y(n589) );
  OAI21X2 U868 ( .A0(n906), .A1(n590), .B0(n589), .Y(n943) );
  NAND3BX1 U869 ( .AN(n703), .B(n513), .C(n591), .Y(n593) );
  XOR2X1 U870 ( .A(n599), .B(n593), .Y(n594) );
  NOR2X1 U871 ( .A(n594), .B(addr[7]), .Y(n951) );
  NOR2X1 U872 ( .A(n599), .B(addr[8]), .Y(n953) );
  AOI21X2 U873 ( .A0(n943), .A1(n596), .B0(n595), .Y(n966) );
  OAI21X2 U874 ( .A0(n966), .A1(n962), .B0(n963), .Y(n974) );
  AOI21X2 U875 ( .A0(n974), .A1(n972), .B0(n597), .Y(n983) );
  OAI21X2 U876 ( .A0(n983), .A1(n979), .B0(n980), .Y(n991) );
  AOI21X2 U877 ( .A0(n991), .A1(n989), .B0(n598), .Y(n604) );
  NAND2XL U878 ( .A(n600), .B(addr[13]), .Y(n601) );
  XOR2X1 U879 ( .A(n604), .B(n603), .Y(n612) );
  NOR2X1 U880 ( .A(cnt[0]), .B(n1058), .Y(n1048) );
  NAND2X1 U881 ( .A(n612), .B(n992), .Y(n615) );
  INVX3 U882 ( .A(n635), .Y(n995) );
  NOR2X2 U883 ( .A(reset), .B(n638), .Y(n994) );
  OAI211X1 U884 ( .A0(n999), .A1(n884), .B0(n615), .C0(n614), .Y(n420) );
  OR2X4 U885 ( .A(n635), .B(n1046), .Y(n860) );
  INVXL U886 ( .A(addr[13]), .Y(n880) );
  INVXL U887 ( .A(addr[9]), .Y(n867) );
  INVXL U888 ( .A(addr[8]), .Y(n868) );
  INVXL U889 ( .A(addr[7]), .Y(n616) );
  NOR3X1 U890 ( .A(n867), .B(n868), .C(n616), .Y(n873) );
  NOR2X1 U891 ( .A(n618), .B(n617), .Y(n631) );
  INVX12 U892 ( .A(n619), .Y(finish) );
  INVXL U893 ( .A(addr[2]), .Y(n663) );
  NAND3XL U894 ( .A(addr[6]), .B(addr[5]), .C(n620), .Y(n621) );
  NOR2X1 U895 ( .A(n860), .B(n621), .Y(n864) );
  CLKINVX1 U896 ( .A(n864), .Y(n878) );
  OA22X1 U897 ( .A0(n885), .A1(n998), .B0(addr[12]), .B1(n881), .Y(n623) );
  OAI21XL U898 ( .A0(n877), .A1(n624), .B0(n623), .Y(n403) );
  CLKINVX1 U899 ( .A(n887), .Y(n671) );
  OA21XL U900 ( .A0(n873), .A1(n878), .B0(n671), .Y(n872) );
  INVXL U901 ( .A(addr[10]), .Y(n629) );
  OA22X1 U902 ( .A0(n885), .A1(n978), .B0(addr[10]), .B1(n630), .Y(n625) );
  OAI21XL U903 ( .A0(n872), .A1(n629), .B0(n625), .Y(n405) );
  AO22X1 U904 ( .A0(n1059), .A1(addr[7]), .B0(n887), .B1(lbp_addr[7]), .Y(n386) );
  AO22X1 U905 ( .A0(n1059), .A1(addr[12]), .B0(n887), .B1(lbp_addr[12]), .Y(
        n381) );
  AO22X1 U906 ( .A0(n1059), .A1(addr[8]), .B0(n887), .B1(lbp_addr[8]), .Y(n385) );
  AO22X1 U907 ( .A0(n1059), .A1(addr[4]), .B0(n887), .B1(lbp_addr[4]), .Y(n389) );
  AO22X1 U908 ( .A0(n1059), .A1(addr[2]), .B0(n887), .B1(lbp_addr[2]), .Y(n391) );
  AO22X1 U909 ( .A0(n1059), .A1(addr[0]), .B0(n887), .B1(lbp_addr[0]), .Y(n393) );
  AO22X1 U910 ( .A0(n1059), .A1(addr[6]), .B0(n887), .B1(lbp_addr[6]), .Y(n387) );
  AO22X1 U911 ( .A0(n1059), .A1(addr[9]), .B0(n887), .B1(lbp_addr[9]), .Y(n384) );
  AO22X1 U912 ( .A0(n1059), .A1(addr[1]), .B0(n887), .B1(lbp_addr[1]), .Y(n392) );
  AO22X1 U913 ( .A0(n1059), .A1(addr[3]), .B0(n887), .B1(lbp_addr[3]), .Y(n390) );
  AO22X1 U914 ( .A0(n1059), .A1(addr[5]), .B0(n887), .B1(lbp_addr[5]), .Y(n388) );
  AO22X1 U915 ( .A0(n1059), .A1(addr[11]), .B0(n887), .B1(lbp_addr[11]), .Y(
        n382) );
  AO22X1 U916 ( .A0(n1059), .A1(addr[13]), .B0(n887), .B1(lbp_addr[13]), .Y(
        n380) );
  AO22X1 U917 ( .A0(n1059), .A1(addr[10]), .B0(n887), .B1(lbp_addr[10]), .Y(
        n383) );
  INVXL U918 ( .A(addr[11]), .Y(n634) );
  OAI21XL U919 ( .A0(addr[11]), .A1(n628), .B0(n627), .Y(n987) );
  AOI2BB1X1 U920 ( .A0N(n885), .A1N(n987), .B0(n632), .Y(n633) );
  OAI21XL U921 ( .A0(n877), .A1(n634), .B0(n633), .Y(n404) );
  INVXL U922 ( .A(\kernel[4][7] ), .Y(n641) );
  NAND2X2 U923 ( .A(cur_state[0]), .B(n1026), .Y(n692) );
  OAI211X4 U924 ( .A0(reset), .A1(n1022), .B0(n692), .C0(n635), .Y(n707) );
  CLKINVX1 U925 ( .A(gray_data[7]), .Y(n1042) );
  NOR2X1 U926 ( .A(n1042), .B(n692), .Y(n752) );
  OAI22XL U927 ( .A0(n1014), .A1(n752), .B0(n1012), .B1(\kernel[3][7] ), .Y(
        n640) );
  OAI21XL U928 ( .A0(n641), .A1(n644), .B0(n640), .Y(n458) );
  CLKINVX1 U929 ( .A(gray_data[5]), .Y(n1037) );
  NOR2X1 U930 ( .A(n1037), .B(n692), .Y(n747) );
  OAI22XL U931 ( .A0(n1014), .A1(n747), .B0(n1012), .B1(\kernel[3][5] ), .Y(
        n642) );
  OAI21XL U932 ( .A0(n643), .A1(n1016), .B0(n642), .Y(n460) );
  CLKINVX1 U933 ( .A(gray_data[3]), .Y(n1033) );
  NOR2X1 U934 ( .A(n1033), .B(n692), .Y(n749) );
  OAI22XL U935 ( .A0(n1014), .A1(n749), .B0(n1012), .B1(\kernel[3][3] ), .Y(
        n645) );
  OAI21XL U936 ( .A0(n646), .A1(n1016), .B0(n645), .Y(n462) );
  OAI21XL U937 ( .A0(finish), .A1(n1046), .B0(n995), .Y(n765) );
  NAND4XL U938 ( .A(cnt[3]), .B(n1021), .C(n1018), .D(n647), .Y(n648) );
  OAI31X1 U939 ( .A0(n1021), .A1(n1024), .A2(n649), .B0(n648), .Y(n767) );
  NAND2BX1 U940 ( .AN(n1058), .B(n767), .Y(n650) );
  CLKINVX1 U941 ( .A(gray_data[0]), .Y(n1027) );
  OAI22XL U942 ( .A0(n726), .A1(n652), .B0(n1027), .B1(n651), .Y(n505) );
  OAI22XL U943 ( .A0(n717), .A1(n652), .B0(n651), .B1(n1042), .Y(n498) );
  CLKINVX1 U944 ( .A(gray_data[1]), .Y(n1029) );
  OAI22XL U945 ( .A0(n827), .A1(n652), .B0(n651), .B1(n1029), .Y(n504) );
  CLKINVX1 U946 ( .A(gray_data[2]), .Y(n1031) );
  OAI22XL U947 ( .A0(n729), .A1(n652), .B0(n651), .B1(n1031), .Y(n503) );
  CLKINVX1 U948 ( .A(\kernel[8][3] ), .Y(n829) );
  OAI22XL U949 ( .A0(n829), .A1(n652), .B0(n651), .B1(n1033), .Y(n502) );
  CLKINVX1 U950 ( .A(gray_data[6]), .Y(n1039) );
  OAI22XL U951 ( .A0(n722), .A1(n652), .B0(n651), .B1(n1039), .Y(n499) );
  CLKINVX1 U952 ( .A(\kernel[8][5] ), .Y(n833) );
  OAI22XL U953 ( .A0(n833), .A1(n652), .B0(n651), .B1(n1037), .Y(n500) );
  CLKINVX1 U954 ( .A(gray_data[4]), .Y(n1035) );
  OAI22XL U955 ( .A0(n734), .A1(n652), .B0(n651), .B1(n1035), .Y(n501) );
  NAND3BX1 U956 ( .AN(n654), .B(n1026), .C(n653), .Y(n655) );
  OAI22XL U957 ( .A0(n745), .A1(n657), .B0(n1039), .B1(n656), .Y(n475) );
  OAI22XL U958 ( .A0(n755), .A1(n657), .B0(n1042), .B1(n656), .Y(n474) );
  OAI22XL U959 ( .A0(n739), .A1(n657), .B0(n1027), .B1(n656), .Y(n481) );
  CLKINVX1 U960 ( .A(\kernel[5][5] ), .Y(n845) );
  OAI22XL U961 ( .A0(n845), .A1(n657), .B0(n1037), .B1(n656), .Y(n476) );
  OAI22XL U962 ( .A0(n743), .A1(n657), .B0(n1035), .B1(n656), .Y(n477) );
  CLKINVX1 U963 ( .A(\kernel[5][3] ), .Y(n841) );
  OAI22XL U964 ( .A0(n841), .A1(n657), .B0(n1033), .B1(n656), .Y(n478) );
  OAI22XL U965 ( .A0(n741), .A1(n657), .B0(n1031), .B1(n656), .Y(n479) );
  OAI22XL U966 ( .A0(n839), .A1(n657), .B0(n1029), .B1(n656), .Y(n480) );
  INVXL U967 ( .A(n928), .Y(n659) );
  OAI22XL U968 ( .A0(n885), .A1(n659), .B0(n671), .B1(n658), .Y(n410) );
  AOI2BB1X1 U969 ( .A0N(addr[1]), .A1N(addr[0]), .B0(n662), .Y(n892) );
  INVXL U970 ( .A(n892), .Y(n661) );
  OAI22XL U971 ( .A0(n885), .A1(n661), .B0(n671), .B1(n660), .Y(n415) );
  OA21XL U972 ( .A0(addr[2]), .A1(n662), .B0(n665), .Y(n903) );
  INVXL U973 ( .A(n903), .Y(n664) );
  OAI22XL U974 ( .A0(n885), .A1(n664), .B0(n671), .B1(n663), .Y(n413) );
  INVXL U975 ( .A(n909), .Y(n667) );
  OAI22XL U976 ( .A0(n885), .A1(n667), .B0(n671), .B1(n666), .Y(n412) );
  OA21XL U977 ( .A0(addr[4]), .A1(n669), .B0(n668), .Y(n920) );
  INVXL U978 ( .A(n920), .Y(n672) );
  OAI22XL U979 ( .A0(n885), .A1(n672), .B0(n671), .B1(n670), .Y(n411) );
  CLKINVX1 U980 ( .A(\kernel[2][3] ), .Y(n1034) );
  OAI22XL U981 ( .A0(n701), .A1(n749), .B0(n700), .B1(\kernel[1][3] ), .Y(n675) );
  OAI21XL U982 ( .A0(n1034), .A1(n644), .B0(n675), .Y(n446) );
  INVXL U983 ( .A(\kernel[1][7] ), .Y(n679) );
  NAND2BX1 U984 ( .AN(n676), .B(n707), .Y(n677) );
  OAI22XL U985 ( .A0(n697), .A1(n752), .B0(n696), .B1(\kernel[0][7] ), .Y(n678) );
  OAI21XL U986 ( .A0(n679), .A1(n644), .B0(n678), .Y(n434) );
  CLKINVX1 U987 ( .A(\kernel[2][5] ), .Y(n1038) );
  OAI22XL U988 ( .A0(n701), .A1(n747), .B0(n700), .B1(\kernel[1][5] ), .Y(n680) );
  OAI21XL U989 ( .A0(n1038), .A1(n644), .B0(n680), .Y(n444) );
  OAI22XL U990 ( .A0(n697), .A1(n747), .B0(n696), .B1(\kernel[0][5] ), .Y(n681) );
  OAI21XL U991 ( .A0(n821), .A1(n644), .B0(n681), .Y(n436) );
  NOR2X1 U992 ( .A(n1039), .B(n692), .Y(n1013) );
  OAI22XL U993 ( .A0(n701), .A1(n1013), .B0(n700), .B1(\kernel[1][6] ), .Y(
        n682) );
  OAI21XL U994 ( .A0(n1040), .A1(n644), .B0(n682), .Y(n443) );
  NOR2X1 U995 ( .A(n1035), .B(n692), .Y(n1009) );
  OAI22XL U996 ( .A0(n701), .A1(n1009), .B0(n700), .B1(\kernel[1][4] ), .Y(
        n683) );
  OAI21XL U997 ( .A0(n1036), .A1(n644), .B0(n683), .Y(n445) );
  INVXL U998 ( .A(\kernel[1][4] ), .Y(n685) );
  OAI22XL U999 ( .A0(n697), .A1(n1009), .B0(n696), .B1(\kernel[0][4] ), .Y(
        n684) );
  OAI21XL U1000 ( .A0(n685), .A1(n644), .B0(n684), .Y(n437) );
  OAI22XL U1001 ( .A0(n701), .A1(n752), .B0(n700), .B1(\kernel[1][7] ), .Y(
        n686) );
  OAI21XL U1002 ( .A0(n1044), .A1(n644), .B0(n686), .Y(n442) );
  NOR2X1 U1003 ( .A(n1027), .B(n692), .Y(n1000) );
  OAI22XL U1004 ( .A0(n701), .A1(n1000), .B0(n700), .B1(\kernel[1][0] ), .Y(
        n687) );
  OAI21XL U1005 ( .A0(n1028), .A1(n644), .B0(n687), .Y(n449) );
  NOR2X1 U1006 ( .A(n1031), .B(n692), .Y(n1006) );
  OAI22XL U1007 ( .A0(n701), .A1(n1006), .B0(n700), .B1(\kernel[1][2] ), .Y(
        n688) );
  OAI21XL U1008 ( .A0(n1032), .A1(n644), .B0(n688), .Y(n447) );
  INVXL U1009 ( .A(\kernel[1][2] ), .Y(n690) );
  OAI22XL U1010 ( .A0(n697), .A1(n1006), .B0(n696), .B1(\kernel[0][2] ), .Y(
        n689) );
  OAI21XL U1011 ( .A0(n690), .A1(n644), .B0(n689), .Y(n439) );
  OAI22XL U1012 ( .A0(n697), .A1(n749), .B0(n696), .B1(\kernel[0][3] ), .Y(
        n691) );
  OAI21XL U1013 ( .A0(n817), .A1(n644), .B0(n691), .Y(n438) );
  NOR2X1 U1014 ( .A(n1029), .B(n692), .Y(n1003) );
  OAI22XL U1015 ( .A0(n697), .A1(n1003), .B0(n696), .B1(\kernel[0][1] ), .Y(
        n693) );
  OAI21XL U1016 ( .A0(n815), .A1(n644), .B0(n693), .Y(n440) );
  INVXL U1017 ( .A(\kernel[1][6] ), .Y(n695) );
  OAI22XL U1018 ( .A0(n697), .A1(n1013), .B0(n696), .B1(\kernel[0][6] ), .Y(
        n694) );
  OAI21XL U1019 ( .A0(n695), .A1(n644), .B0(n694), .Y(n435) );
  OAI22XL U1020 ( .A0(n697), .A1(n1000), .B0(n696), .B1(\kernel[0][0] ), .Y(
        n698) );
  OAI21XL U1021 ( .A0(n699), .A1(n644), .B0(n698), .Y(n441) );
  OAI22XL U1022 ( .A0(n701), .A1(n1003), .B0(n700), .B1(\kernel[1][1] ), .Y(
        n702) );
  OAI21XL U1023 ( .A0(n1030), .A1(n1016), .B0(n702), .Y(n448) );
  INVXL U1024 ( .A(\kernel[7][4] ), .Y(n706) );
  NAND2BX1 U1025 ( .AN(n703), .B(n707), .Y(n704) );
  OAI22XL U1026 ( .A0(n731), .A1(n1009), .B0(n730), .B1(\kernel[6][4] ), .Y(
        n705) );
  OAI21XL U1027 ( .A0(n706), .A1(n1016), .B0(n705), .Y(n485) );
  OAI22XL U1028 ( .A0(n736), .A1(n749), .B0(n735), .B1(\kernel[7][3] ), .Y(
        n710) );
  OAI21XL U1029 ( .A0(n829), .A1(n644), .B0(n710), .Y(n494) );
  OAI22XL U1030 ( .A0(n731), .A1(n749), .B0(n730), .B1(\kernel[6][3] ), .Y(
        n711) );
  OAI21XL U1031 ( .A0(n772), .A1(n1016), .B0(n711), .Y(n486) );
  INVXL U1032 ( .A(\kernel[7][6] ), .Y(n713) );
  OAI22XL U1033 ( .A0(n731), .A1(n1013), .B0(n730), .B1(\kernel[6][6] ), .Y(
        n712) );
  OAI21XL U1034 ( .A0(n713), .A1(n1016), .B0(n712), .Y(n483) );
  INVXL U1035 ( .A(\kernel[7][2] ), .Y(n715) );
  OAI22XL U1036 ( .A0(n731), .A1(n1006), .B0(n730), .B1(\kernel[6][2] ), .Y(
        n714) );
  OAI21XL U1037 ( .A0(n715), .A1(n1016), .B0(n714), .Y(n487) );
  OAI22XL U1038 ( .A0(n736), .A1(n752), .B0(n735), .B1(\kernel[7][7] ), .Y(
        n716) );
  OAI21XL U1039 ( .A0(n717), .A1(n1016), .B0(n716), .Y(n490) );
  OAI22XL U1040 ( .A0(n731), .A1(n1003), .B0(n730), .B1(\kernel[6][1] ), .Y(
        n718) );
  OAI21XL U1041 ( .A0(n770), .A1(n1016), .B0(n718), .Y(n488) );
  INVXL U1042 ( .A(\kernel[7][7] ), .Y(n720) );
  OAI22XL U1043 ( .A0(n731), .A1(n752), .B0(n730), .B1(\kernel[6][7] ), .Y(
        n719) );
  OAI21XL U1044 ( .A0(n720), .A1(n1016), .B0(n719), .Y(n482) );
  OAI22XL U1045 ( .A0(n736), .A1(n1013), .B0(n735), .B1(\kernel[7][6] ), .Y(
        n721) );
  OAI21XL U1046 ( .A0(n722), .A1(n1016), .B0(n721), .Y(n491) );
  INVXL U1047 ( .A(\kernel[7][0] ), .Y(n724) );
  OAI22XL U1048 ( .A0(n731), .A1(n1000), .B0(n730), .B1(\kernel[6][0] ), .Y(
        n723) );
  OAI21XL U1049 ( .A0(n724), .A1(n1016), .B0(n723), .Y(n489) );
  OAI22XL U1050 ( .A0(n736), .A1(n1000), .B0(n735), .B1(\kernel[7][0] ), .Y(
        n725) );
  OAI21XL U1051 ( .A0(n726), .A1(n644), .B0(n725), .Y(n497) );
  OAI22XL U1052 ( .A0(n736), .A1(n747), .B0(n735), .B1(\kernel[7][5] ), .Y(
        n727) );
  OAI21XL U1053 ( .A0(n833), .A1(n1016), .B0(n727), .Y(n492) );
  OAI22XL U1054 ( .A0(n736), .A1(n1006), .B0(n735), .B1(\kernel[7][2] ), .Y(
        n728) );
  OAI21XL U1055 ( .A0(n729), .A1(n644), .B0(n728), .Y(n495) );
  OAI22XL U1056 ( .A0(n731), .A1(n747), .B0(n730), .B1(\kernel[6][5] ), .Y(
        n732) );
  OAI21XL U1057 ( .A0(n776), .A1(n1016), .B0(n732), .Y(n484) );
  OAI22XL U1058 ( .A0(n736), .A1(n1009), .B0(n735), .B1(\kernel[7][4] ), .Y(
        n733) );
  OAI21XL U1059 ( .A0(n734), .A1(n1016), .B0(n733), .Y(n493) );
  OAI22XL U1060 ( .A0(n736), .A1(n1003), .B0(n735), .B1(\kernel[7][1] ), .Y(
        n737) );
  OAI21XL U1061 ( .A0(n827), .A1(n644), .B0(n737), .Y(n496) );
  OAI22XL U1062 ( .A0(n753), .A1(n1000), .B0(n751), .B1(\kernel[4][0] ), .Y(
        n738) );
  OAI21XL U1063 ( .A0(n739), .A1(n644), .B0(n738), .Y(n473) );
  OAI22XL U1064 ( .A0(n753), .A1(n1006), .B0(n751), .B1(\kernel[4][2] ), .Y(
        n740) );
  OAI21XL U1065 ( .A0(n741), .A1(n1016), .B0(n740), .Y(n471) );
  OAI22XL U1066 ( .A0(n753), .A1(n1009), .B0(n751), .B1(\kernel[4][4] ), .Y(
        n742) );
  OAI21XL U1067 ( .A0(n743), .A1(n1016), .B0(n742), .Y(n469) );
  OAI22XL U1068 ( .A0(n753), .A1(n1013), .B0(n751), .B1(\kernel[4][6] ), .Y(
        n744) );
  OAI21XL U1069 ( .A0(n745), .A1(n1016), .B0(n744), .Y(n467) );
  OAI22XL U1070 ( .A0(n753), .A1(n1003), .B0(n751), .B1(\kernel[4][1] ), .Y(
        n746) );
  OAI21XL U1071 ( .A0(n839), .A1(n644), .B0(n746), .Y(n472) );
  OAI22XL U1072 ( .A0(n753), .A1(n747), .B0(n751), .B1(\kernel[4][5] ), .Y(
        n748) );
  OAI21XL U1073 ( .A0(n845), .A1(n644), .B0(n748), .Y(n468) );
  OAI22XL U1074 ( .A0(n753), .A1(n749), .B0(n751), .B1(\kernel[4][3] ), .Y(
        n750) );
  OAI21XL U1075 ( .A0(n841), .A1(n644), .B0(n750), .Y(n470) );
  OAI22XL U1076 ( .A0(n753), .A1(n752), .B0(n751), .B1(\kernel[4][7] ), .Y(
        n754) );
  OAI21XL U1077 ( .A0(n755), .A1(n644), .B0(n754), .Y(n466) );
  XNOR2X1 U1078 ( .A(n760), .B(n759), .Y(n763) );
  INVX3 U1079 ( .A(\kernel[4][6] ), .Y(n1017) );
  INVX3 U1080 ( .A(\kernel[4][4] ), .Y(n1011) );
  OAI22XL U1081 ( .A0(\kernel[7][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[7][0] ), .Y(n769) );
  OAI21XL U1082 ( .A0(\kernel[4][1] ), .A1(n770), .B0(n769), .Y(n771) );
  INVX3 U1083 ( .A(\kernel[4][2] ), .Y(n1008) );
  AOI222X1 U1084 ( .A0(\kernel[7][2] ), .A1(n771), .B0(\kernel[7][2] ), .B1(
        n1008), .C0(n771), .C1(n1008), .Y(n773) );
  AOI222XL U1085 ( .A0(\kernel[7][4] ), .A1(n1011), .B0(\kernel[7][4] ), .B1(
        n774), .C0(n1011), .C1(n774), .Y(n775) );
  AOI222XL U1086 ( .A0(\kernel[7][6] ), .A1(n1017), .B0(\kernel[7][6] ), .B1(
        n777), .C0(n1017), .C1(n777), .Y(n779) );
  AOI2BB1X1 U1087 ( .A0N(\kernel[4][7] ), .A1N(n779), .B0(\kernel[7][7] ), .Y(
        n778) );
  INVXL U1088 ( .A(\kernel[3][5] ), .Y(n787) );
  OAI22XL U1089 ( .A0(\kernel[3][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[3][0] ), .Y(n781) );
  AOI222X1 U1090 ( .A0(n782), .A1(\kernel[3][2] ), .B0(n782), .B1(n1008), .C0(
        \kernel[3][2] ), .C1(n1008), .Y(n784) );
  AOI222XL U1091 ( .A0(\kernel[3][4] ), .A1(n1011), .B0(\kernel[3][4] ), .B1(
        n785), .C0(n1011), .C1(n785), .Y(n786) );
  AOI222XL U1092 ( .A0(\kernel[3][6] ), .A1(n1017), .B0(\kernel[3][6] ), .B1(
        n788), .C0(n1017), .C1(n788), .Y(n790) );
  AOI2BB1X1 U1093 ( .A0N(\kernel[4][7] ), .A1N(n790), .B0(\kernel[3][7] ), .Y(
        n789) );
  AOI211XL U1094 ( .A0(n790), .A1(\kernel[4][7] ), .B0(n789), .C0(n860), .Y(
        n791) );
  INVXL U1095 ( .A(\kernel[0][5] ), .Y(n798) );
  OAI22XL U1096 ( .A0(\kernel[0][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[0][0] ), .Y(n792) );
  AOI222XL U1097 ( .A0(n793), .A1(\kernel[0][2] ), .B0(n793), .B1(n1008), .C0(
        \kernel[0][2] ), .C1(n1008), .Y(n795) );
  AOI222XL U1098 ( .A0(\kernel[0][4] ), .A1(n1011), .B0(\kernel[0][4] ), .B1(
        n796), .C0(n1011), .C1(n796), .Y(n797) );
  AOI222XL U1099 ( .A0(\kernel[0][6] ), .A1(n1017), .B0(\kernel[0][6] ), .B1(
        n799), .C0(n1017), .C1(n799), .Y(n801) );
  AOI2BB1X1 U1100 ( .A0N(\kernel[4][7] ), .A1N(n801), .B0(\kernel[0][7] ), .Y(
        n800) );
  AOI211XL U1101 ( .A0(n801), .A1(\kernel[4][7] ), .B0(n800), .C0(n860), .Y(
        n802) );
  OAI22XL U1102 ( .A0(\kernel[6][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[6][0] ), .Y(n803) );
  AOI222X1 U1103 ( .A0(\kernel[6][2] ), .A1(n804), .B0(\kernel[6][2] ), .B1(
        n1008), .C0(n804), .C1(n1008), .Y(n806) );
  AOI222XL U1104 ( .A0(\kernel[6][4] ), .A1(n1011), .B0(\kernel[6][4] ), .B1(
        n807), .C0(n1011), .C1(n807), .Y(n808) );
  AOI222XL U1105 ( .A0(\kernel[6][6] ), .A1(n1017), .B0(\kernel[6][6] ), .B1(
        n810), .C0(n1017), .C1(n810), .Y(n812) );
  AOI2BB1X1 U1106 ( .A0N(\kernel[4][7] ), .A1N(n812), .B0(\kernel[6][7] ), .Y(
        n811) );
  AOI211XL U1107 ( .A0(n812), .A1(\kernel[4][7] ), .B0(n811), .C0(n860), .Y(
        n813) );
  OAI22XL U1108 ( .A0(\kernel[1][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[1][0] ), .Y(n814) );
  OAI21XL U1109 ( .A0(\kernel[4][1] ), .A1(n815), .B0(n814), .Y(n816) );
  AOI222X1 U1110 ( .A0(n816), .A1(\kernel[1][2] ), .B0(n816), .B1(n1008), .C0(
        \kernel[1][2] ), .C1(n1008), .Y(n818) );
  AOI222XL U1111 ( .A0(\kernel[1][4] ), .A1(n1011), .B0(\kernel[1][4] ), .B1(
        n819), .C0(n1011), .C1(n819), .Y(n820) );
  AOI222XL U1112 ( .A0(\kernel[1][6] ), .A1(n1017), .B0(\kernel[1][6] ), .B1(
        n822), .C0(n1017), .C1(n822), .Y(n824) );
  AOI2BB1X1 U1113 ( .A0N(\kernel[4][7] ), .A1N(n824), .B0(\kernel[1][7] ), .Y(
        n823) );
  OAI22XL U1114 ( .A0(\kernel[8][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[8][0] ), .Y(n826) );
  OAI21XL U1115 ( .A0(\kernel[4][1] ), .A1(n827), .B0(n826), .Y(n828) );
  AOI222X1 U1116 ( .A0(\kernel[8][2] ), .A1(n828), .B0(\kernel[8][2] ), .B1(
        n1008), .C0(n828), .C1(n1008), .Y(n830) );
  AOI222XL U1117 ( .A0(\kernel[8][4] ), .A1(n1011), .B0(\kernel[8][4] ), .B1(
        n831), .C0(n1011), .C1(n831), .Y(n832) );
  AOI222XL U1118 ( .A0(\kernel[8][6] ), .A1(n1017), .B0(\kernel[8][6] ), .B1(
        n834), .C0(n1017), .C1(n834), .Y(n836) );
  AOI2BB1X1 U1119 ( .A0N(\kernel[4][7] ), .A1N(n836), .B0(\kernel[8][7] ), .Y(
        n835) );
  OAI22XL U1120 ( .A0(\kernel[5][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[5][0] ), .Y(n838) );
  OAI21XL U1121 ( .A0(\kernel[4][1] ), .A1(n839), .B0(n838), .Y(n840) );
  AOI222XL U1122 ( .A0(\kernel[4][3] ), .A1(n842), .B0(\kernel[4][3] ), .B1(
        n841), .C0(n842), .C1(n841), .Y(n843) );
  AOI222XL U1123 ( .A0(\kernel[5][4] ), .A1(n1011), .B0(\kernel[5][4] ), .B1(
        n843), .C0(n1011), .C1(n843), .Y(n844) );
  AOI222XL U1124 ( .A0(\kernel[4][5] ), .A1(n845), .B0(\kernel[4][5] ), .B1(
        n844), .C0(n845), .C1(n844), .Y(n846) );
  AOI222XL U1125 ( .A0(\kernel[5][6] ), .A1(n1017), .B0(\kernel[5][6] ), .B1(
        n846), .C0(n1017), .C1(n846), .Y(n848) );
  AOI2BB1X1 U1126 ( .A0N(\kernel[4][7] ), .A1N(n848), .B0(\kernel[5][7] ), .Y(
        n847) );
  OAI22XL U1127 ( .A0(\kernel[2][1] ), .A1(n1005), .B0(n1002), .B1(
        \kernel[2][0] ), .Y(n850) );
  OAI21XL U1128 ( .A0(\kernel[4][1] ), .A1(n1030), .B0(n850), .Y(n851) );
  AOI222XL U1129 ( .A0(\kernel[4][3] ), .A1(n852), .B0(\kernel[4][3] ), .B1(
        n1034), .C0(n852), .C1(n1034), .Y(n853) );
  AOI222XL U1130 ( .A0(\kernel[2][4] ), .A1(n1011), .B0(\kernel[2][4] ), .B1(
        n853), .C0(n1011), .C1(n853), .Y(n854) );
  AOI222XL U1131 ( .A0(\kernel[4][5] ), .A1(n1038), .B0(\kernel[4][5] ), .B1(
        n854), .C0(n1038), .C1(n854), .Y(n855) );
  AOI222XL U1132 ( .A0(\kernel[2][6] ), .A1(n1017), .B0(\kernel[2][6] ), .B1(
        n855), .C0(n1017), .C1(n855), .Y(n857) );
  AOI2BB1X1 U1133 ( .A0N(\kernel[4][7] ), .A1N(n857), .B0(\kernel[2][7] ), .Y(
        n856) );
  AOI21XL U1134 ( .A0(n860), .A1(addr[7]), .B0(reset), .Y(n861) );
  OAI21XL U1135 ( .A0(n863), .A1(n887), .B0(addr[8]), .Y(n866) );
  NAND3XL U1136 ( .A(n864), .B(addr[7]), .C(n868), .Y(n865) );
  OAI21XL U1137 ( .A0(n869), .A1(n868), .B0(n867), .Y(n870) );
  NAND2BX1 U1138 ( .AN(n872), .B(addr[9]), .Y(n876) );
  NAND3BX1 U1139 ( .AN(n874), .B(addr[8]), .C(addr[7]), .Y(n875) );
  OAI21XL U1140 ( .A0(addr[12]), .A1(n878), .B0(n877), .Y(n879) );
  NAND2XL U1141 ( .A(addr[13]), .B(n879), .Y(n883) );
  NAND3BX1 U1142 ( .AN(n881), .B(n880), .C(addr[12]), .Y(n882) );
  NOR2XL U1143 ( .A(reset), .B(cur_state[1]), .Y(N517) );
  AO22X1 U1144 ( .A0(n888), .A1(n516), .B0(addr[6]), .B1(n887), .Y(n409) );
  XOR2X1 U1145 ( .A(n891), .B(n897), .Y(n893) );
  CLKINVX1 U1146 ( .A(n999), .Y(n940) );
  OAI21XL U1147 ( .A0(n897), .A1(n896), .B0(n895), .Y(n902) );
  XNOR2X1 U1148 ( .A(n902), .B(n901), .Y(n904) );
  CLKINVX1 U1149 ( .A(n906), .Y(n925) );
  XNOR2X1 U1150 ( .A(n925), .B(n908), .Y(n910) );
  XOR2X1 U1151 ( .A(n919), .B(n918), .Y(n921) );
  AOI21X1 U1152 ( .A0(n925), .A1(n924), .B0(n923), .Y(n933) );
  XOR2X1 U1153 ( .A(n933), .B(n927), .Y(n929) );
  OAI21X1 U1154 ( .A0(n933), .A1(n932), .B0(n931), .Y(n938) );
  XNOR2X1 U1155 ( .A(n938), .B(n937), .Y(n941) );
  XOR2X1 U1156 ( .A(n952), .B(n945), .Y(n946) );
  OAI211XL U1157 ( .A0(n999), .A1(n949), .B0(n948), .C0(n947), .Y(n426) );
  XNOR2X1 U1158 ( .A(n957), .B(n956), .Y(n958) );
  OAI211XL U1159 ( .A0(n961), .A1(n999), .B0(n960), .C0(n959), .Y(n425) );
  XOR2X1 U1160 ( .A(n966), .B(n965), .Y(n967) );
  OAI211XL U1161 ( .A0(n999), .A1(n970), .B0(n969), .C0(n968), .Y(n424) );
  XNOR2X1 U1162 ( .A(n974), .B(n973), .Y(n975) );
  OAI211XL U1163 ( .A0(n999), .A1(n978), .B0(n977), .C0(n976), .Y(n423) );
  XOR2X1 U1164 ( .A(n983), .B(n982), .Y(n984) );
  OAI211XL U1165 ( .A0(n999), .A1(n987), .B0(n986), .C0(n985), .Y(n422) );
  XNOR2X1 U1166 ( .A(n991), .B(n990), .Y(n993) );
  NAND2X1 U1167 ( .A(n993), .B(n992), .Y(n997) );
  OAI211XL U1168 ( .A0(n999), .A1(n998), .B0(n997), .C0(n996), .Y(n421) );
  OAI22XL U1169 ( .A0(n1014), .A1(n1000), .B0(n1012), .B1(\kernel[3][0] ), .Y(
        n1001) );
  OAI21XL U1170 ( .A0(n1002), .A1(n644), .B0(n1001), .Y(n465) );
  OAI22XL U1171 ( .A0(n1014), .A1(n1003), .B0(n1012), .B1(\kernel[3][1] ), .Y(
        n1004) );
  OAI21XL U1172 ( .A0(n1005), .A1(n1016), .B0(n1004), .Y(n464) );
  OAI22XL U1173 ( .A0(n1014), .A1(n1006), .B0(n1012), .B1(\kernel[3][2] ), .Y(
        n1007) );
  OAI21XL U1174 ( .A0(n1008), .A1(n644), .B0(n1007), .Y(n463) );
  OAI22XL U1175 ( .A0(n1014), .A1(n1009), .B0(n1012), .B1(\kernel[3][4] ), .Y(
        n1010) );
  OAI21XL U1176 ( .A0(n1011), .A1(n1016), .B0(n1010), .Y(n461) );
  OAI22XL U1177 ( .A0(n1014), .A1(n1013), .B0(n1012), .B1(\kernel[3][6] ), .Y(
        n1015) );
  OAI21XL U1178 ( .A0(n1017), .A1(n1016), .B0(n1015), .Y(n459) );
  OAI31XL U1179 ( .A0(n1052), .A1(n1018), .A2(n1024), .B0(n1045), .Y(n1020) );
  OAI21XL U1180 ( .A0(n1024), .A1(n1023), .B0(n1022), .Y(n1025) );
  OAI22XL U1181 ( .A0(n1028), .A1(n1043), .B0(n1027), .B1(n515), .Y(n457) );
  OAI22XL U1182 ( .A0(n1030), .A1(n1043), .B0(n1029), .B1(n515), .Y(n456) );
  OAI22XL U1183 ( .A0(n1032), .A1(n1043), .B0(n1031), .B1(n515), .Y(n455) );
  OAI22XL U1184 ( .A0(n1034), .A1(n1043), .B0(n1033), .B1(n515), .Y(n454) );
  OAI22XL U1185 ( .A0(n1036), .A1(n1043), .B0(n1035), .B1(n515), .Y(n453) );
  OAI22XL U1186 ( .A0(n1038), .A1(n1043), .B0(n1037), .B1(n515), .Y(n452) );
  OAI22XL U1187 ( .A0(n1040), .A1(n1043), .B0(n1039), .B1(n515), .Y(n451) );
  OAI22XL U1188 ( .A0(n1044), .A1(n1043), .B0(n1042), .B1(n515), .Y(n450) );
  AOI211XL U1189 ( .A0(cur_state[1]), .A1(n1046), .B0(reset), .C0(n1045), .Y(
        n1047) );
  AO21X1 U1190 ( .A0(cnt[0]), .A1(n1047), .B0(n1048), .Y(n419) );
  OAI22XL U1191 ( .A0(n1051), .A1(n1050), .B0(n1058), .B1(n1049), .Y(n418) );
  NOR2XL U1192 ( .A(cnt[2]), .B(n1058), .Y(n1054) );
  OAI21XL U1193 ( .A0(cnt[1]), .A1(n1058), .B0(n1051), .Y(n1053) );
  AO22X1 U1194 ( .A0(n1052), .A1(n1054), .B0(cnt[2]), .B1(n1053), .Y(n417) );
  OAI21XL U1195 ( .A0(n1054), .A1(n1053), .B0(cnt[3]), .Y(n1055) );
  OAI31XL U1196 ( .A0(n1058), .A1(n1057), .A2(n1056), .B0(n1055), .Y(n416) );
endmodule

