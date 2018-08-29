#  NLP written by GAMS Convert at 06/20/02 12:53:02
#  
#  Equation counts
#     Total       E       G       L       N       X
#        77      77       0       0       0       0
#  
#  Variable counts
#                 x       b       i     s1s     s2s      sc      si
#     Total    cont  binary integer    sos1    sos2   scont    sint
#       104     104       0       0       0       0       0       0
#  FX    11      11       0       0       0       0       0       0
#  
#  Nonzero counts
#     Total   const      NL     DLL
#       268     185      83       0
# 
#  Reformualtion has removed 1 variable and 1 equation


var x1 := 29.4, >= 29.4, <= 29.4;
var x2 >= 0, <= 35.25;
var x3 >= 0, <= 38.25;
var x4 >= 0, <= 41.25;
var x5 >= 0, <= 44.25;
var x6 >= 0, <= 47.25;
var x7 >= 0, <= 50.25;
var x8 >= 0, <= 51.15;
var x9 >= 0, <= 52.05;
var x10 >= 0, <= 52.95;
var x11 >= 0, <= 53.85;
var x12 >= 0, <= 54.75;
var x13 >= 0, <= 55.65;
var x14 >= 0, <= 56.55;
var x15 >= 0, <= 57.45;
var x16 >= 0, <= 58.35;
var x17 >= 0, <= 59.25;
var x18;
var x19;
var x20;
var x21;
var x22;
var x23;
var x24;
var x25;
var x26;
var x27;
var x28;
var x29;
var x30;
var x31;
var x32;
var x33;
var x34;
var x35;
var x36;
var x37;
var x38;
var x39;
var x40;
var x41;
var x42;
var x43;
var x44;
var x45;
var x46;
var x47;
var x48;
var x49;
var x50;
var x51;
var x52 := 3.5, >= 3.5, <= 3.5;
var x53 := 3.5, >= 3.5, <= 3.5;
var x54 := 3.5, >= 3.5, <= 3.5;
var x55 := 3.5, >= 3.5, <= 3.5;
var x56 := 3.5, >= 3.5, <= 3.5;
var x57 := 3.5, >= 3.5, <= 3.5;
var x58 := 3.5, >= 3.5, <= 3.5;
var x59 := 4, >= 4, <= 4;
var x60 := 7, >= 7, <= 7;
var x61 := 10, >= 10, <= 10;
var x62 := 1, >= 1;
var x63 := 1, >= 1;
var x64 := 1, >= 1;
var x65 := 1, >= 1;
var x66 := 1, >= 1;
var x67 := 1, >= 1;
var x68 := 1, >= 1;
var x69 := 1, >= 1;
var x70 := 1, >= 1;
var x71 := 1, >= 1;
var x72 := 1, >= 1;
var x73 := 1, >= 1;
var x74 := 1, >= 1;
var x75 := 1, >= 1;
var x76 := 1, >= 1;
var x77 := 1, >= 1;
var x78;
var x79;
var x80;
var x81;
var x82;
var x83;
var x84;
var x85;
var x86;
var x87;
var x88;
var x89;
var x90;
var x91;
var x92;
var x93;
var x94;
var x95;
var x96;
var x97;
var x98;
var x99;
var x100;
var x101;
var x102;
var x103;

minimize obj: (10 - x61)^2 + (10.2 - x62)^2 + (10.404 - x63)^2 + (10.61208 - 
              x64)^2 + (10.8243216 - x65)^2 + (11.040808032 - x66)^2 + (
              11.26162419264 - x67)^2 + (11.4868566764928 - x68)^2 + (
              11.7165938100227 - x69)^2 + (11.9509256862231 - x70)^2 + (
              12.1899441999476 - x71)^2 + (12.4337430839465 - x72)^2 + (
              12.6824179456255 - x73)^2 + (12.936066304538 - x74)^2 + (
              13.1947876306287 - x75)^2 + (13.4586833832413 - x76)^2 + (
              13.7278570509061 - x77)^2;

subject to

e1:    x18 = 88.2;

e2:    x19 = 91.728;

e3:    x20 = 95.39712;

e4:    x21 = 99.2130048;

e5:    x22 = 103.181524992;

e6:    x23 = 107.30878599168;

e7:    x24 = 111.601137431347;

e8:    x25 = 116.065182928601;

e9:    x26 = 120.707790245745;

e10:    x27 = 125.536101855575;

e11:    x28 = 130.557545929798;

e12:    x29 = 135.77984776699;

e13:    x30 = 141.21104167767;

e14:    x31 = 146.859483344776;

e15:    x32 = 152.733862678567;

e16:    x33 = 158.84321718571;

e17:    x34 = 165.196945873138;

e18: x35*x61**0.2 + x1 - x18 = 0;

e19: x36*x62**0.2 + x2 - x19 = 0;

e20: x37*x63**0.2 + x3 - x20 = 0;

e21: x38*x64**0.2 + x4 - x21 = 0;

e22: x39*x65**0.2 + x5 - x22 = 0;

e23: x40*x66**0.2 + x6 - x23 = 0;

e24: x41*x67**0.2 + x7 - x24 = 0;

e25: x42*x68**0.2 + x8 - x25 = 0;

e26: x43*x69**0.2 + x9 - x26 = 0;

e27: x44*x70**0.2 + x10 - x27 = 0;

e28: x45*x71**0.2 + x11 - x28 = 0;

e29: x46*x72**0.2 + x12 - x29 = 0;

e30: x47*x73**0.2 + x13 - x30 = 0;

e31: x48*x74**0.2 + x14 - x31 = 0;

e32: x49*x75**0.2 + x15 - x32 = 0;

e33: x50*x76**0.2 + x16 - x33 = 0;

e34: x51*x77**0.2 + x17 - x34 = 0;

e35:  - 0.00429596009984836*x18*(x84 - 3) - x35 + x36 = 0;

e36:  - 0.00429596009984836*x19*(x85 - 3) - x36 + x37 = 0;

e37:  - 0.00429596009984836*x20*(x86 - 3) - x37 + x38 = 0;

e38:  - 0.00429596009984836*x21*(x87 - 3) - x38 + x39 = 0;

e39:  - 0.00429596009984836*x22*(x88 - 3) - x39 + x40 = 0;

e40:  - 0.00429596009984836*x23*(x89 - 3) - x40 + x41 = 0;

e41:  - 0.00429596009984836*x24*(x90 - 3) - x41 + x42 = 0;

e42:  - 0.00429596009984836*x25*(x91 - 3) - x42 + x43 = 0;

e43:  - 0.00429596009984836*x26*(x92 - 3) - x43 + x44 = 0;

e44:  - 0.00429596009984836*x27*(x93 - 3) - x44 + x45 = 0;

e45:  - 0.00429596009984836*x28*(x94 - 3) - x45 + x46 = 0;

e46:  - 0.00429596009984836*x29*(x95 - 3) - x46 + x47 = 0;

e47:  - 0.00429596009984836*x30*(x96 - 3) - x47 + x48 = 0;

e48:  - 0.00429596009984836*x31*(x97 - 3) - x48 + x49 = 0;

e49:  - 0.00429596009984836*x32*(x98 - 3) - x49 + x50 = 0;

e50:  - 0.00429596009984836*x33*(x99 - 3) - x50 + x51 = 0;

e51:  - 0.5*x52 + x78 = 0;

e52:  - 0.3*x52 - 0.5*x53 + x79 = 0;

e53:  - 0.2*x52 - 0.3*x53 - 0.5*x54 + x80 = 0;

e54:  - 0.2*x53 - 0.3*x54 - 0.5*x55 + x81 = 0;

e55:  - 0.2*x54 - 0.3*x55 - 0.5*x56 + x82 = 0;

e56:  - 0.2*x55 - 0.3*x56 - 0.5*x57 + x83 = 0;

e57:  - 0.2*x56 - 0.3*x57 - 0.5*x58 + x84 = 0;

e58:  - 0.2*x57 - 0.3*x58 - 0.5*x59 + x85 = 0;

e59:  - 0.2*x58 - 0.3*x59 - 0.5*x60 + x86 = 0;

e60:  - 0.2*x59 - 0.3*x60 - 0.5*x61 + x87 = 0;

e61:  - 0.2*x60 - 0.3*x61 - 0.5*x62 + x88 = 0;

e62:  - 0.2*x61 - 0.3*x62 - 0.5*x63 + x89 = 0;

e63:  - 0.2*x62 - 0.3*x63 - 0.5*x64 + x90 = 0;

e64:  - 0.2*x63 - 0.3*x64 - 0.5*x65 + x91 = 0;

e65:  - 0.2*x64 - 0.3*x65 - 0.5*x66 + x92 = 0;

e66:  - 0.2*x65 - 0.3*x66 - 0.5*x67 + x93 = 0;

e67:  - 0.2*x66 - 0.3*x67 - 0.5*x68 + x94 = 0;

e68:  - 0.2*x67 - 0.3*x68 - 0.5*x69 + x95 = 0;

e69:  - 0.2*x68 - 0.3*x69 - 0.5*x70 + x96 = 0;

e70:  - 0.2*x69 - 0.3*x70 - 0.5*x71 + x97 = 0;

e71:  - 0.2*x70 - 0.3*x71 - 0.5*x72 + x98 = 0;

e72:  - 0.2*x71 - 0.3*x72 - 0.5*x73 + x99 = 0;

e73:  - 0.2*x72 - 0.3*x73 - 0.5*x74 + x100 = 0;

e74:  - 0.2*x73 - 0.3*x74 - 0.5*x75 + x101 = 0;

e75:  - 0.2*x74 - 0.3*x75 - 0.5*x76 + x102 = 0;

e76:  - 0.2*x75 - 0.3*x76 - 0.5*x77 + x103 = 0;