#include <fstream>
#include <sstream>

#include <catch.hpp>

#include <minimum/linear/ip.h>
#include <minimum/linear/ip_to_sat_solver.h>
#include <minimum/linear/solver.h>
#include <minimum/linear/sum.h>

using namespace std;
using namespace minimum::linear;

TEST_CASE("stein9") {
	auto data = R"(
*NAME:         stein9
*ROWS:         13
*COLUMNS:      9
*INTEGER:      9
*NONZERO:      45
*BEST SOLN:    5 (opt)
*LP SOLN:      4.0
*SOURCE:       George L. Nemhauser (Georgia Institute of Technology)
*              John W. Gregory (Cray Research)
*              E. Andrew Boyd (Rice University)                        
*APPLICATION:  unknown
*COMMENTS:     pure 0/1 IP
*      
*      
NAME          STEIN9 
ROWS
 N  OBJ     
 G  A1      
 G  A2      
 G  A3      
 G  A4      
 G  A5      
 G  A6      
 G  A7      
 G  A8      
 G  A9      
 G  A10     
 G  A11     
 G  A12     
 G  OB2     
COLUMNS
    MARK0000  'MARKER'                 'INTORG'
    0001      OBJ                  1   A2                   1
    0001      A3                   1   A7                   1
    0001      A10                  1   OB2                  1
    0002      OBJ                  1   A1                   1
    0002      A3                   1   A8                   1
    0002      A11                  1   OB2                  1
    0003      OBJ                  1   A1                   1
    0003      A2                   1   A9                   1
    0003      A12                  1   OB2                  1
    0004      OBJ                  1   A1                   1
    0004      A5                   1   A6                   1
    0004      A10                  1   OB2                  1
    0005      OBJ                  1   A2                   1
    0005      A4                   1   A6                   1
    0005      A11                  1   OB2                  1
    0006      OBJ                  1   A3                   1
    0006      A4                   1   A5                   1
    0006      A12                  1   OB2                  1
    0007      OBJ                  1   A4                   1
    0007      A8                   1   A9                   1
    0007      A10                  1   OB2                  1
    0008      OBJ                  1   A5                   1
    0008      A7                   1   A9                   1
    0008      A11                  1   OB2                  1
    0009      OBJ                  1   A6                   1
    0009      A7                   1   A8                   1
    0009      A12                  1   OB2                  1
    MARK0001  'MARKER'                 'INTEND'
RHS
    RHS       A1                   1   A2                   1
    RHS       A3                   1   A4                   1
    RHS       A5                   1   A6                   1
    RHS       A7                   1   A8                   1
    RHS       A9                   1   A10                  1
    RHS       A11                  1   A12                  1
    RHS       OB2                  4
BOUNDS
 UP bnd       0001                 1
 UP bnd       0002                 1
 UP bnd       0003                 1
 UP bnd       0004                 1
 UP bnd       0005                 1
 UP bnd       0006                 1
 UP bnd       0007                 1
 UP bnd       0008                 1
 UP bnd       0009                 1
ENDATA)";

	istringstream sin(data);
	auto ip = read_MPS(sin);
	CHECK(ip->get_number_of_variables() == 9);
	CHECK(solve_minisat(ip.get()));
}

TEST_CASE("flugpl") {
	auto data = R"(
*NAME:         flugpl
*ROWS:         18
*COLUMNS:      18
*INTEGER:      11
*NONZERO:      46
*BEST SOLN:    1201500 (opt)
*LP SOLN:      1167185.73
*SOURCE:       Harvey M. Wagner              
*              John W. Gregory (Cray Research)
*              E. Andrew Boyd (Rice University)
*APPLICATION:  airline model
*COMMENTS:     no integer variables are binary 
*              
*      
NAME          FLUGPL
ROWS
 N  KOSTEN  
 E  ANZ1    
 G  STD1    
 L  UEB1    
 E  ANZ2    
 G  STD2    
 L  UEB2    
 E  ANZ3    
 G  STD3    
 L  UEB3    
 E  ANZ4    
 G  STD4    
 L  UEB4    
 E  ANZ5    
 G  STD5    
 L  UEB5    
 E  ANZ6    
 G  STD6    
 L  UEB6    
COLUMNS
    STM1      KOSTEN            2700   ANZ1                 1
    STM1      STD1               150   UEB1               -20
    STM1      ANZ2               0.9
    MARK0000  'MARKER'                 'INTORG'
    ANM1      KOSTEN            1500   STD1              -100
    ANM1      ANZ2                 1
    MARK0001  'MARKER'                 'INTEND'
    UE1       KOSTEN              30   STD1                 1
    UE1       UEB1                 1
    MARK0002  'MARKER'                 'INTORG'
    STM2      KOSTEN            2700   ANZ2                -1
    STM2      STD2               150   UEB2               -20
    STM2      ANZ3               0.9
    ANM2      KOSTEN            1500   STD2              -100
    ANM2      ANZ3                 1
    MARK0003  'MARKER'                 'INTEND'
    UE2       KOSTEN              30   STD2                 1
    UE2       UEB2                 1
    MARK0004  'MARKER'                 'INTORG'
    STM3      KOSTEN            2700   ANZ3                -1
    STM3      STD3               150   UEB3               -20
    STM3      ANZ4               0.9
    ANM3      KOSTEN            1500   STD3              -100
    ANM3      ANZ4                 1
    MARK0005  'MARKER'                 'INTEND'
    UE3       KOSTEN              30   STD3                 1
    UE3       UEB3                 1
    MARK0006  'MARKER'                 'INTORG'
    STM4      KOSTEN            2700   ANZ4                -1
    STM4      STD4               150   UEB4               -20
    STM4      ANZ5               0.9
    ANM4      KOSTEN            1500   STD4              -100
    ANM4      ANZ5                 1
    MARK0007  'MARKER'                 'INTEND'
    UE4       KOSTEN              30   STD4                 1
    UE4       UEB4                 1
    MARK0008  'MARKER'                 'INTORG'
    STM5      KOSTEN            2700   ANZ5                -1
    STM5      STD5               150   UEB5               -20
    STM5      ANZ6               0.9
    ANM5      KOSTEN            1500   STD5              -100
    ANM5      ANZ6                 1
    MARK0009  'MARKER'                 'INTEND'
    UE5       KOSTEN              30   STD5                 1
    UE5       UEB5                 1
    MARK0010  'MARKER'                 'INTORG'
    STM6      KOSTEN            2700   ANZ6                -1
    STM6      STD6               150   UEB6               -20
    ANM6      KOSTEN            1500   STD6              -100
    MARK0011  'MARKER'                 'INTEND'
    UE6       KOSTEN              30   STD6                 1
    UE6       UEB6                 1
RHS
    RR        ANZ1                60   STD1              8000
    RR        STD2              9000   STD3              8000
    RR        STD4             10000   STD5              9000
    RR        STD6             12000
BOUNDS
 UP BB        ANM1                18
 LO BB        STM2                57
 UP BB        STM2                75
 UP BB        ANM2                18
 LO BB        STM3                57
 UP BB        STM3                75
 UP BB        ANM3                18
 LO BB        STM4                57
 UP BB        STM4                75
 UP BB        ANM4                18
 LO BB        STM5                57
 UP BB        STM5                75
 UP BB        ANM5                18
 LO BB        STM6                57
 UP BB        STM6                75
 UP BB        ANM6                18
ENDATA)";

	istringstream sin(data);
	auto ip = read_MPS(sin);
	CHECK(ip->get_number_of_variables() == 18);
	CHECK(solve(ip.get()));
}
