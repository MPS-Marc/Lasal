//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "IFMSensor"
	Revision           = "0.0"
	GUID               = "{A7B8C5C6-0D43-4E6B-BAB2-53EA1A461F03}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "10 ms"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)">
	<Channels>
		<Server Name="ClassSvr" GUID="{77500795-BA22-435B-A25E-D8F4A9AEC7F6}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Dist" GUID="{CAED3712-8FEC-42C2-BC68-7A6B6822126A}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="FcOn" GUID="{7E247928-F8B8-41FA-8CF5-E639D18968C7}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Par_Multiply" GUID="{BE4CB300-F2FE-48F2-B48E-B1823F95C44E}" Visualized="true" Initialize="true" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Par_Offset" GUID="{3B0F77A3-E102-4C7E-828C-2CEEBACBDDA2}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="SetPoint" GUID="{ABC28C7E-F8A4-4937-AD93-04BE15C23647}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="SDCI" Required="true" Internal="false"/>
		<Client Name="SDCIAsyncPara" Required="true" Internal="false"/>
	</Channels>
</Class>
*)
IFMSensor : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	FcOn 	: SvrCh_DINT;
	Dist 	: SvrCh_DINT;
	SetPoint 	: SvrCh_DINT;
	Par_Multiply 	: SvrCh_DINT;
	Par_Offset 	: SvrCh_DINT;
  //Clients:
	SDCI 	: CltChCmd_SDCIDevice;
	SDCIAsyncPara 	: CltChCmd_SDCIDevice_AsyncPara;
  //Variables:
		Data1 	: USINT;
		Data2 	: USINT;
		Data3 	: USINT;
		DAta 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SetPoint::Write
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

#pragma usingLtd SDCIDevice
#pragma usingLtd SDCIDevice_AsyncPara


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB IFMSensor::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_IFMSENSOR
0$UINT, 0$UINT, (SIZEOF(::IFMSensor))$UINT, 
6$UINT, 2$UINT, 0$UINT, 
TO_UDINT(2745831348), "IFMSensor", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::IFMSensor.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::IFMSensor.FcOn.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(191026233), "FcOn", 
(::IFMSensor.Dist.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3085516099), "Dist", 
(::IFMSensor.SetPoint.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3111452154), "SetPoint", 
(::IFMSensor.Par_Multiply.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(4073054448), "Par_Multiply", 
(::IFMSensor.Par_Offset.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1238972522), "Par_Offset", 
//Clients:
(::IFMSensor.SDCI.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1530642366), "SDCI", TO_UDINT(205726265), "SDCIDevice", 1$UINT, 4$UINT, 
(::IFMSensor.SDCIAsyncPara.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(408642099), "SDCIAsyncPara", TO_UDINT(1321842971), "SDCIDevice_AsyncPara", 1$UINT, 3$UINT, 
END_FUNCTION


#define USER_CNT_IFMSensor 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_IFMSensor] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION IFMSensor::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_IFMSensor, pCmd := #vmt.CmdTable);
	vmt.CmdTable.CyWork		:= #CyWork();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SetPoint.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SetPoint::Write() );
	IF SetPoint.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Par_Multiply.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Par_Multiply.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Par_Offset.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Par_Offset.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL IFMSensor::CyWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR
 

  Data := SDCI.GetReadPdoWord(ReadOffset:=0);
  FcOn := (Data AND 2#1) = 1;
  Dist := ((DATA/16) * Par_Multiply) + Par_Offset;
	state := READY;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL IFMSensor::SetPoint::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	SetPoint := input;
  SDCIAsyncPara.ParaIndex.Write(input:=16#3c);
  SDCIAsyncPara.ParaSize.Write(input:=2);
  SDCIAsyncPara.ParaSubIndex.Write(input:=1);
  SDCIAsyncPara.ParaValue.Write(input:=SetPoint*256);
  SDCIAsyncPara.ParaRdWr.Write(input:=1);
	result := SetPoint;

END_FUNCTION
