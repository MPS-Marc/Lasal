//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "calcComplete"
	Revision           = "0.0"
	GUID               = "{7A8BDD81-05EC-46A6-A1E9-A55E0F5BB0AB}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "10 ms"
	BackgroundTask     = "false"
	DefBackground      = "10 ms"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)">
	<Channels>
		<Server Name="calcDone" GUID="{DAE0E26A-C267-41B0-B22D-499F6BBAD626}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="ClassSvr" GUID="{D935A986-52D4-4B8D-AD60-E920E32030BE}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="elapsedTime" GUID="{02AD1CB1-F0C9-45AF-A9D4-EE243AE293FD}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="startCalc" GUID="{67C485E2-B1C2-4CDA-9530-A0C35597B4CE}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="stprCalc" GUID="{941BF05C-06DB-4E1D-A63B-1C67C3B906CF}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="ctrlCalc" Required="true" Internal="false"/>
		<Client Name="ctrlConvert" Required="true" Internal="false"/>
	</Channels>
</Class>
*)
calcComplete : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	stprCalc 	: SvrCh_DINT;
	startCalc 	: SvrCh_DINT;
	calcDone 	: SvrCh_DINT;
	elapsedTime 	: SvrCh_UDINT;
  //Clients:
	ctrlCalc 	: CltChCmd_calcOperationListV2;
	ctrlConvert 	: CltChCmd_convertOperationListToSLinesV2;
  //Variables:
		tmpTime 	: UDINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT := READY;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL startCalc::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd calcOperationListV2
#pragma usingLtd convertOperationListToSLinesV2


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB calcComplete::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CALCCOMPLETE
0$UINT, 0$UINT, (SIZEOF(::calcComplete))$UINT, 
5$UINT, 2$UINT, 0$UINT, 
TO_UDINT(2835426986), "calcComplete", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::calcComplete.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::calcComplete.stprCalc.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1823240883), "stprCalc", 
(::calcComplete.startCalc.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1509108252), "startCalc", 
(::calcComplete.calcDone.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1081695783), "calcDone", 
(::calcComplete.elapsedTime.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1280260988), "elapsedTime", 
//Clients:
(::calcComplete.ctrlCalc.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2182073200), "ctrlCalc", TO_UDINT(3979889133), "calcOperationListV2", 1$UINT, 0$UINT, 
(::calcComplete.ctrlConvert.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2799096441), "ctrlConvert", TO_UDINT(3277871537), "convertOperationListToSLinesV2", 1$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_calcComplete 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_calcComplete] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION calcComplete::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_calcComplete, pCmd := #vmt.CmdTable);
	vmt.CmdTable.CyWork		:= #CyWork();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	stprCalc.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF stprCalc.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	startCalc.pMeth			:= StoreMethod( #M_RD_DIRECT(), #startCalc::Write() );
	IF startCalc.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	calcDone.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF calcDone.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
//JdK 20-6-2019: calcComplete is created for 4284/Traffiroad / standard lib
// goal is to connect calcOperationList and convertOperationListToSLines

FUNCTION VIRTUAL GLOBAL calcComplete::startCalc::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	IF stprCalc=0 THEN
    calcDone:=-1;
    stprCalc:=1;
    tmpTime:=ops.tAbsolute;
    startCalc:= 1;
  ELSE  
    startCalc:= 0;
  END_IF;
	result := startCalc;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL calcComplete::CyWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;(* := READY *)
	END_VAR

  CASE stprCalc OF
  
  0: //wait for start
  
  1: //start calculation
    IF ctrlCalc.stprCalc=0 THEN
      ctrlCalc.startCalc.Write(input:=1);
      IF ctrlCalc.calcDone= -1 THEN //means is started
        stprCalc+=2;
      END_IF;
    END_IF;
   
  3: //wait until calculation is done
    IF ctrlCalc.stprCalc=0 & ctrlCalc.calcDone>=0 THEN
      stprCalc+=1;
    ELSIF ctrlCalc.stprCalc=0 & ctrlCalc.calcDone=0 THEN
      stprCalc:= 0;
    END_IF;
    
  4: //start converting
    IF ctrlConvert.stprConvert=0 THEN
      ctrlConvert.startConvert.Write(input:=1);
      IF ctrlConvert.convertDone= -1 THEN //means is started
        stprCalc+=2;
      END_IF;
    END_IF;
    
  6: //wait until convertion is done
    IF ctrlConvert.stprConvert=0 & ctrlConvert.convertDone>=0 THEN
      stprCalc+=1;
    END_IF;
    
  7: //check if everything is ok
    IF ctrlCalc.calcDone=1 & ctrlConvert.convertDone=1 THEN
      calcDone:=1;
    ELSE
      calcDone:=0;
    END_IF;
    elapsedTime:=OPS.tAbsolute-tmpTime;
    stprCalc:=0;
    
    
  
  END_CASE;

END_FUNCTION
