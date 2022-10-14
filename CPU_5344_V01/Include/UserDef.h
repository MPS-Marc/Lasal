#ifndef __LSLPRJ_UNITS_H__
  #include <Units.h>
#endif

#define  defMaxEmsInEm 20
#define defMaxCmsInEm 20 
#define  defMaxEmsInUnit 20
#define defMaxCmsInUnit 20 

#define  MaxNrCharsInAbsLine 1000
#define  FaultValue 299792458
#define  NoRefValue 9999999
#define  VrijloopLW 500

//define commando's for command rules
//avdb 02 01 2017
#define startCom 1
#define stopCom 2
#define waitOperationCom 3
#define loadingCom 4
#define unitMoveCom 5
#define unitStartCom 6
#define waitTimeCom 7
#define measureMatCom 8
#define changeTool 9
#define startBlock 10
#define endBlock 11
#define waitForOutput 20
#define startOutput 21

//define states for cylinders.
//We use 'cil' before defining the state to prevent some states ('open', 'op') from colliding with states/enums used in sigmateks own objects
//#define cilIn 1
#define CilRetour 1
#define CilNeer 1
#define CilDicht 1
#define CilRechts 1
#define CilNegatief 1

//#define cilOut 2
#define CilOp 2
#define CilHeen 2
#define CilOpen 2
#define CilLinks 2
#define CilPositief 2
 
#define CilOnd_Retour 8
#define CilOnd_Neer 8
#define CilOnd_Dicht 8
#define CilOnd_Rechts 8
#define CilOnd_Negatief 8

#define CilOnd_Op 3
#define CilOnd_Heen 3
#define CilOnd_Open 3
#define CilOnd_Links 3
#define CilOnd_Positief 3

#define eHMI_CmdPML_TO_eStatePML(x) (to_dint(x)-100)$::eStatePML;
#define eHMI_CmdPML_TO_eModePML(x) (to_dint(cmdHMI)-1)$::eModePML;

//define nrs bewerking
 #define firstInAssembly 1
 #define betweenInAssembly 2
 #define lastInAssembly 3
 #define leaveClosed 4
 
 //defines for product db db
#define cProdDbMaxProducts          500    // 0..15
#define cProdDbMaxOperationLines    200
#define cMillDbMaxProgs             500
#define cProfileDbMaxProgs          100


//defines for assembly db db
#define cAssemDbMaxAssemblies          201   // 0..15
#define cAssemDbMaxProdLines    200

#define CSAMENSTELMAXRECIPE 200

#define defMaxCalcList  600
#define  cMaxRegel  750
#define cMaxNrCharsInFileLine 1000

#define CPrintChars 24

//define some milling stuff
#define cMaxMillLinesInPlane 10
#define cMaxMillPlanesInRecipe 10 

#define PIvalue 3.14159265359



