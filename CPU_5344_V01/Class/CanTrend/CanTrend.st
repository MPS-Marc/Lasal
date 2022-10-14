//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "CanTrend"
	Revision           = "0.2"
	GUID               = "{7540C044-D408-495F-9107-3E876CC8F2ED}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(296,120)">
	<Channels>
		<Server Name="CobId" GUID="{B19962F7-3088-4FA1-8741-304192D395A0}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Server0" GUID="{F165ABC4-B3CB-4E21-AFFD-5B9301E4AE3E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="cCircular" Required="false" Internal="false" Comment="0= Once, 1= continues trend"/>
		<Client Name="cSigmaID" Required="false" Internal="false" Comment="0= All ID&apos;s 1= No SigmaTek ID&apos;s ( 16#700.. 16#71F)"/>
		<Client Name="IrqCannel" Required="false" Internal="false"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Class\CanTrend\CanTrendGl.h" Include="false"/>
		</Files>
	</Dependencies>
</Class>
*)
CanTrend : CLASS
	TYPE
	  CanTrendStr : STRUCT  //! <Type Comment="Can object ( ID, Size and Data)" Name="CanTrendStr"/>
	    ID : HDINT;  //! <Type Comment="CAN ID of the message" Name="CanTrendStr.ID"/>
	    Size : DINT;  //! <Type Comment="The size of CAN data message" Name="CanTrendStr.Size"/>
	    Data : ARRAY [1..8] OF HSINT;  //! <Type Comment="The Data in CAN message" Name="CanTrendStr.Data"/>
	    TimeStamp : UDINT;  //! <Type Comment="The Time when object is recieved" Name="CanTrendStr.TimeStamp"/>
	  END_STRUCT;
	END_TYPE
  //Servers:
	Server0 	: SvrChCmd_DINT;
	CobId 	: SvrCh_HDINT;
  //Clients:
	IrqCannel 	: CltCh_DINT;
	cCircular 	: CltCh_DINT;
	cSigmaID 	: CltCh_DINT;
  //Variables:
		pRxData 	: ^CanObjStr;			//! <Variable Comment="Pointer CAN object" Name="pRxData"/>
		pTrend 	: ^CanTrendStr;			//! <Variable Comment="Pointer to CAN object in trend buffer" Name="pTrend"/>
		aCanTrend : ARRAY [0..cMaxCanTrend] OF CanTrendStr;

		IrqChannelOn 	: DINT;			//! <Variable Comment="IrqChannel is connected " Name="IrqChannelOn"/>
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="WriteObjPtr"/>
	FUNCTION VIRTUAL GLOBAL WriteObjPtr
		VAR_INPUT
			CanObj 	: ^CanObjStr;			//! <Variable Comment="Pointer to CAN object" Name="WriteObjPtr.CanObj"/>
		END_VAR
		VAR_OUTPUT
			Result 	: DINT;			//! <Variable Comment="-1= Unvalid pointer, 0&gt;= Ok." Name="WriteObjPtr.Result"/>
		END_VAR;
	
	FUNCTION TrendObj;
	
	FUNCTION VIRTUAL GLOBAL Server0::Write
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

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB CanTrend::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CANTREND
0$UINT, 2$UINT, (SIZEOF(::CanTrend))$UINT, 
2$UINT, 3$UINT, 0$UINT, 
TO_UDINT(3499297213), "CanTrend", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::CanTrend.Server0.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(2759080719), "Server0", 
(::CanTrend.CobId.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(957527428), "CobId", 
//Clients:
(::CanTrend.IrqCannel.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(426608462), "IrqCannel", 
(::CanTrend.cCircular.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3235287045), "cCircular", 
(::CanTrend.cSigmaID.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1520771170), "cSigmaID", 
END_FUNCTION


#define USER_CNT_CanTrend 1

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_CanTrend] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION CanTrend::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_CanTrend, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Write		:= #Write();
	vmt.CmdTable.Init		:= #Init();
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #WriteObjPtr();

#pragma warning (default : 74)
	Server0.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Server0.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL CanTrend::Init

	IrqChannelOn	:= IsClientConnected( #IrqCannel);
	If IsClientConnected( #cCircular) Then
		cCircular	:= cCircular.Read();
	End_If;
	If IsClientConnected( #cSigmaID) Then
		cSigmaID	:= cSigmaID.Read();
	End_If;

END_FUNCTION //VIRTUAL GLOBAL CanTrend::Init

FUNCTION VIRTUAL GLOBAL CanTrend::Server0::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

If Input<> 0 Then
	pRxData	:= Input$^CanObjStr;
	TrendObj();
	Result	:= 0;
Else
	Result	:= -1;
End_If;

END_FUNCTION //VIRTUAL GLOBAL CanTrend::Server0::Write
//[#ENGLISH]
//[>CanObj]Pointer to CAN object
//[<Result]-1= Unvalid pointer, 0>= Ok.
FUNCTION VIRTUAL GLOBAL CanTrend::WriteObjPtr
VAR_INPUT
	CanObj		: ^CanObjStr;
END_VAR
VAR_OUTPUT
	Result		: DINT;
END_VAR

If CanObj<> 0 Then
	pRxData	:= CanObj;
	TrendObj();
	Result	:= 0;
Else
	Result	:= -1;
End_If;

END_FUNCTION //VIRTUAL GLOBAL CanTrend::WriteObjPtr

FUNCTION  CanTrend::TrendObj
VAR
	i			: Dint;
	Size		: DINT;
END_VAR

	If IrqChannelOn Then
		IrqCannel.Write( pRxData$Dint);
	End_If;

	pTrend	:= #aCanTrend[Server0]$CanTrendStr;
	pTrend^.ID		:= pRxData^.ID;
  CobId := pRxData^.ID; // 

	If pTrend^.ID< 16#700 | pTrend^.ID> 16#71F | cSigmaID= 0 Then

		pTrend^.Size		:= Size	:= pRxData^.Size;
		pTrend^.TimeStamp	:= Ops.tAbsolute;

		// In test mode clear all the not used data for read-a-billety
		Case Size Of
		0:
			// No DATA so Clear all
			pTrend^.Data[1]$Dint	:= 0;
			pTrend^.Data[5]$Dint	:= 0;;
		1..7:
			// Copy the DATA and clear the rest
			For i:= 1 to Size Do
				pTrend^.Data[i]	:= pRxData^.Data[i];
			End_For;
			For i:= (Size+ 1) to 8 Do
				pTrend^.Data[i]	:= 0;
			End_For;
		8:
			// Copy the DATA
			pTrend^.Data[1]$Dint	:= pRxData^.Data[1]$Dint;
			pTrend^.Data[5]$Dint	:= pRxData^.Data[5]$Dint;
		Else
			// Other options not posible so clear DATA and generate an ERROR
			// No DATA so Clear all
			pTrend^.Data[1]$Dint	:= 0;
			pTrend^.Data[5]$Dint	:= 0;
		End_Case;

		If Server0< cMaxCanTrend Then
			Server0 += 1;
		Else
			If cCircular= 1 Then
				Server0	:= 0;
			End_If;
		End_If;
	End_If;

END_FUNCTION // CanTrend::TrendObj
