//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
#define OBJECTS_CONFIG

#include "..\..\Class\_AlarmX0Para\_AlarmX0Para.h"
#include <.\lsl_st_mt.h>


FUNCTION GLOBAL TAB ONE_DBProducts
-1$UINT, 0$UINT, 
0$UINT, 0$UINT,

16$UDINT,
TO_UDINT(800276940), "_AlarmX0Para", 0$UINT, 11$UINT, 0$UINT,
TO_UDINT(1746090780), "_AlarmX3Para", 0$UINT, 2$UINT, 0$UINT,
TO_UDINT(763986700), "_AlarmX3ParaDer", 0$UINT, 0$UINT, 1$UINT,
TO_UDINT(1325959504), "cmBase", 1$UINT, 0$UINT, 0$UINT,
TO_UDINT(648754807), "EditString", 0$UINT, 0$UINT, 2$UINT,
TO_UDINT(1689253198), "FileBase", 0$UINT, 5$UINT, 1$UINT,
TO_UDINT(2225119864), "MerkerEx", 1$UINT, 22$UINT, 2$UINT,
TO_UDINT(3482579014), "OperationDataV2", 0$UINT, 0$UINT, 1$UINT,
TO_UDINT(723330765), "OperationLineV2", 0$UINT, 0$UINT, 6$UINT,
TO_UDINT(1214555786), "ProductsDbV2", 1$UINT, 0$UINT, 1$UINT,
TO_UDINT(933570811), "RAMex", 1$UINT, 17$UINT, 1$UINT,
TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 0$UINT,
TO_UDINT(1435670809), "StringDll", 0$UINT, 0$UINT, 0$UINT,
TO_UDINT(2898603620), "StringInternal", 1$UINT, 85$UINT, 0$UINT,
TO_UDINT(282790112), "tMyBDintTODint", 0$UINT, 0$UINT, 6$UINT,
TO_UDINT(3232495061), "VirtualBaseInit", 1$UINT, 3$UINT, 0$UINT,



1$UINT, TO_UDINT(2757792586), "PRODUCTSDB\_BASE\_ALARM", 


1$UINT, TO_UDINT(3914929816), "PRODUCTSDB\STR_DESCRIPTION", 
1$UINT, TO_UDINT(1592536003), "PRODUCTSDB\STR_PRODUCTCODE", 

_NO_ATTR, TO_UDINT(363981004), "FILEBASE5", 

1$UINT, TO_UDINT(4192137930), "PRODUCTSDB\STR_DESCRIPTION\_BASE\_BASE\MERKEREX0", 
1$UINT, TO_UDINT(822729843), "PRODUCTSDB\STR_PRODUCTCODE\_BASE\_BASE\MERKEREX0", 

1$UINT, TO_UDINT(909643469), "PRODUCTSDB\OPERATIONDATA", 

1$UINT, TO_UDINT(276441607), "PRODUCTSDB\OPERATIONDATA\LINE1", 
1$UINT, TO_UDINT(2306046909), "PRODUCTSDB\OPERATIONDATA\LINE2", 
1$UINT, TO_UDINT(4269034283), "PRODUCTSDB\OPERATIONDATA\LINE3", 
1$UINT, TO_UDINT(1611718280), "PRODUCTSDB\OPERATIONDATA\LINE4", 
1$UINT, TO_UDINT(387444254), "PRODUCTSDB\OPERATIONDATA\LINE5", 
1$UINT, TO_UDINT(2384379812), "PRODUCTSDB\OPERATIONDATA\LINE6", 

_NO_ATTR, TO_UDINT(595664793), "PRODUCTSDB", 

_NO_ATTR, TO_UDINT(2844025099), "RAMEX1", 




1$UINT, TO_UDINT(3590930730), "PRODUCTSDB\OPERATIONDATA\BEWLINE1", 
1$UINT, TO_UDINT(1325404304), "PRODUCTSDB\OPERATIONDATA\BEWLINE2", 
1$UINT, TO_UDINT(939991046), "PRODUCTSDB\OPERATIONDATA\BEWLINE3", 
1$UINT, TO_UDINT(2791552421), "PRODUCTSDB\OPERATIONDATA\BEWLINE4", 
1$UINT, TO_UDINT(3513025843), "PRODUCTSDB\OPERATIONDATA\BEWLINE5", 
1$UINT, TO_UDINT(1215157385), "PRODUCTSDB\OPERATIONDATA\BEWLINE6", 


//Internal connections
0$UDINT,
18$UDINT,
TO_UDINT(1), "MerkerEx0", TO_UDINT(4),
TO_UDINT(2), "MerkerEx0", TO_UDINT(5),
TO_UDINT(6), "BewLine1", TO_UDINT(15),
TO_UDINT(6), "BewLine2", TO_UDINT(16),
TO_UDINT(6), "BewLine3", TO_UDINT(17),
TO_UDINT(6), "BewLine4", TO_UDINT(18),
TO_UDINT(6), "BewLine5", TO_UDINT(19),
TO_UDINT(6), "BewLine6", TO_UDINT(20),
TO_UDINT(6), "Line1", TO_UDINT(7),
TO_UDINT(6), "Line5", TO_UDINT(11),
TO_UDINT(6), "Line4", TO_UDINT(10),
TO_UDINT(6), "Line3", TO_UDINT(9),
TO_UDINT(6), "Line2", TO_UDINT(8),
TO_UDINT(6), "Line6", TO_UDINT(12),
TO_UDINT(13), "_Alarm", TO_UDINT(0),
TO_UDINT(13), "str_Description", TO_UDINT(1),
TO_UDINT(13), "str_ProductCode", TO_UDINT(2),
TO_UDINT(13), "OperationData", TO_UDINT(6),
0$UDINT,
10$UDINT,
TO_UDINT(1), "DataBuffer", TO_UDINT(4), "m_udLength",
TO_UDINT(2), "DataBuffer", TO_UDINT(5), "m_udLength",
TO_UDINT(13), "RamEx", TO_UDINT(14), "m_udLength",
TO_UDINT(13), "FB", TO_UDINT(3), "Server0",
TO_UDINT(15), "cOutput", TO_UDINT(7), "operationType",
TO_UDINT(16), "cOutput", TO_UDINT(8), "operationType",
TO_UDINT(17), "cOutput", TO_UDINT(9), "operationType",
TO_UDINT(18), "cOutput", TO_UDINT(10), "operationType",
TO_UDINT(19), "cOutput", TO_UDINT(11), "operationType",
TO_UDINT(20), "cOutput", TO_UDINT(12), "operationType",

//Initialization values
0$UDINT,
7$UDINT,
TO_UDINT(0), "Config", TO_UDINT(0),//|DBProducts._base\ProductsDb\_Alarm.Config;
TO_UDINT(1), "SingleRealloc", TO_UDINT(1),//|DBProducts.ProductsDb\str_Description.SingleRealloc;
TO_UDINT(2), "SingleRealloc", TO_UDINT(1),//|DBProducts.ProductsDb\str_ProductCode.SingleRealloc;
TO_UDINT(4), "ThreadSafe", TO_UDINT(0),//|DBProducts._base\_base\str_Description\ProductsDb\MerkerEx0.ThreadSafe;
TO_UDINT(5), "ThreadSafe", TO_UDINT(0),//|DBProducts._base\_base\str_ProductCode\ProductsDb\MerkerEx0.ThreadSafe;
TO_UDINT(14), "ThreadSafe", TO_UDINT(0),//|DBProducts.RAMex1.ThreadSafe;
TO_UDINT(14), "UseFile", TO_UDINT(1),//|DBProducts.RAMex1.UseFile;

//Symbolic initialization values
0$UDINT,
0$UDINT,

//Initialization of string values
0$UDINT,
0$UDINT,

//Configuration of tasks (RealTime, Cyclic, Background)
0$UDINT,
0$UDINT,

0$UDINT,
1$UDINT,
TO_UDINT(13), (10)$UDINT, 4194303$DINT, 	//PRODUCTSDB

0$UDINT,
1$UDINT,
TO_UDINT(13), (10)$UDINT, 4194303$DINT, 	//PRODUCTSDB

//External connections
0$UDINT,
0$UDINT,

//Magic internal connections
0$UDINT,
0$UDINT,

//Configuration of timeslots of tasks (RealTime, Cyclic)
#ifdef __LSLLDR_TIMESLOTS__
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

#endif //__LSLLDR_TIMESLOTS__

//MultiMaster connections
#ifdef __LSLLDR_MULTIMASTER__
0$UDINT,
0$UDINT,
#endif //__LSLLDR_MULTIMASTER__

//Configuration for task ID (RealTime, CyclicTime)
#ifdef __LSLLDR_TASKID__
"\\\\TASKS2  "
0$UDINT,
0$UDINT,

0$UDINT,
1$UDINT,
(0)$UDINT, 	//PRODUCTSDB

0$UDINT,
1$UDINT,
(0)$UDINT, 	//PRODUCTSDB

#endif //__LSLLDR_TASKID__

END_FUNCTION