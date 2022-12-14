//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "CanOpenBase"
	Revision           = "0.9"
	GUID               = "{9FA7C397-3C72-4042-BB8C-A51596C8D866}"
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
	Objectsize         = "(338,120)">
	<Channels>
		<Client Name="cNode" Required="true" Internal="false"/>
		<Client Name="ConfigData" Required="false" Internal="false"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Class\CanOpenBase\CanOpenBaseGl.h" Include="false"/>
		</Files>
	</Dependencies>
	<RevDoku>
		<Owner Company="SigmaControl" Author="Johan Embregts"/>
		<Dokumentation Revision="0.9" Date="2012-05-11" Author="Johan Embregts" Company="SigmaControl" Description="Global Ptr in Global methods made local to exclude timing problems."/>
		<Dokumentation Revision="0.8" Date="2011-12-27" Author="Johan Embregts" Company="SigmaControl" Description="Add NodeNumber to value also for 1401/1, 1402/1, 1403/1, 1801/1, 1802/1 en 1803/1."/>
		<Dokumentation Revision="0.7" Date="2011-10-19" Author="Johan Embregts" Company="SigmaControl" Description="In Sdo2CanObj only add node number when value is not 0."/>
		<Dokumentation Revision="0.6" Date="2011-01-31" Author="Johan Embregts" Company="SigmaControl" Description="Moved SDO&apos;with add node nr to correct function &quot;Sdo2CanObj()&quot;."/>
		<Dokumentation Revision="0.5" Date="2011-01-12" Author="Johan Embregts" Company="SigmaControl" Description="In Build SDO for the PAR 1400/1 and PAR 1800/1 the node number is added to the value."/>
		<Dokumentation Revision="0.4" Date="2010-12-24" Author="Johan Embregts" Company="SigmaControl" Description="BuildNmtNg had a TypeO.&#13;&#10;Server0 is set to Hex."/>
		<Dokumentation Revision="0.3" Date="09/09/2010" Author="JE" Company="SigmaControl" Description="Extra NMT messages for NodeGuarding and HeartBeat."/>
		<Dokumentation Revision="0.2" Date="29/04/2010" Author="JE" Company="SigmaControl" Description="Standaard classes imported from new librarie strucrure.&#13;&#10;NMT message changed to new style."/>
	</RevDoku>
	<Network Name="CanOpenBase">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{6E02ADFA-C291-40B1-8EC2-D5314DB6358B}"
				Class      = "CanBase"
				Position   = "(240,120)"
				Visualized = "true"
				CyclicTime = "10 ms">
				<Channels>
					<Server Name="Server0"/>
					<Client Name="Driver"/>
					<Client Name="System"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.Server0" Destination="_base.Server0" Vertices="(712,210),(540,210),"/>
			<Connection Source="_base.Driver" Destination="this.Driver" Vertices="(240,210),(38,210),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using CanBase

CanOpenBase : CLASS
: CanBase
	TYPE
	  ConfStr : STRUCT
	    ActNr : DINT;  //! <Type Comment="Active config number" Name="ConfStr.ActNr"/>
	    MaxNr : DINT;  //! <Type Comment="Maximal config number" Name="ConfStr.MaxNr"/>
	    RespDelta : UDINT;  //! <Type Comment="Delta between send and recieve ID&apos;s" Name="ConfStr.RespDelta"/>
	    RespID : UDINT;  //! <Type Comment="Responce ID " Name="ConfStr.RespID"/>
	    Record : SDOStr;  //! <Type Comment="SDO record" Name="ConfStr.Record"/>
	  END_STRUCT;
	  ConnStr : STRUCT
	    ConfigConnected : BOOL;  //! <Type Comment="0= Not connected, 1= Connected" Name="ConnStr.ConfigConnected"/>
	  END_STRUCT;
	  PollStr : STRUCT
	    Mode : DINT;  //! <Type Comment="Poll timebase/mode" Name="PollStr.Mode"/>
	    tLastPoll : UDINT;  //! <Type Comment="time the last poll has taken place" Name="PollStr.tLastPoll"/>
	    TimeBase : DINT;  //! <Type Comment="Poll timebase" Name="PollStr.TimeBase"/>
	    ActNr : DINT;  //! <Type Comment="Active poll number" Name="PollStr.ActNr"/>
	    FirstNr : DINT;  //! <Type Comment="First poll number" Name="PollStr.FirstNr"/>
	    LastNr : DINT;  //! <Type Comment="Last poll number" Name="PollStr.LastNr"/>
	    RespDelta : UDINT;  //! <Type Comment="Delta between send and recieve ID&apos;s" Name="PollStr.RespDelta"/>
	    RespID : UDINT;  //! <Type Comment="Responce ID " Name="PollStr.RespID"/>
	    Buffer : ARRAY [0..cPollBufferSize] OF SDOStr;  //! <Type Comment="Poll buffer" Name="PollStr.Buffer"/>
	  END_STRUCT;
	  RespStr : STRUCT
	    Id : HINT;
	    Sdo : SDOStr;
	  END_STRUCT;
	  StepperState :
	  (
	    eIdle,  //! <Type Comment="?dle" Name="StepperState.eIdle"/>
	    eStartConfig,  //! <Type Comment="Start sending config data" Name="StepperState.eStartConfig"/>
	    eConfigSend,  //! <Type Comment="Send a config parameter" Name="StepperState.eConfigSend"/>
	    eConfigRecieve,  //! <Type Comment="Recieve a config responce" Name="StepperState.eConfigRecieve"/>
	    eStartPoll,  //! <Type Comment="Start sending poll data" Name="StepperState.eStartPoll"/>
	    ePollSend,  //! <Type Comment="Send a poll command" Name="StepperState.ePollSend"/>
	    ePollRecieve,  //! <Type Comment="Recieve a poll responce" Name="StepperState.ePollRecieve"/>
	    eNmtSend,  //! <Type Comment="Send Enable Network" Name="StepperState.eNmtSend"/>
	    eSdoSend,  //! <Type Comment="Send a SDO command" Name="StepperState.eSdoSend"/>
	    eSdoRecieve,  //! <Type Comment="Recieve a SDO command" Name="StepperState.eSdoRecieve"/>
	    eError  //! <Type Comment="Communication error" Name="StepperState.eError"/>
	  )$UDINT;
	END_TYPE
  //Servers:
  //Clients:
	cNode 	: CltCh_DINT;
	ConfigData 	: CltChCmd_ConfigDefBase;
  //Variables:
		Stepper 	: StepperState;			//! <Variable Comment="Program state" Name="Stepper"/>
		ReqStep 	: StepperState;			//! <Variable Comment="Request an action" Name="ReqStep"/>
		ErrStep 	: StepperState;			//! <Variable Comment="The action whome caused the error" Name="ErrStep"/>
		Conn 	: ConnStr;			//! <Variable Comment="Connected clients" Name="Conn"/>
		Conf 	: ConfStr;			//! <Variable Comment="Internal Configure data" Name="Conf"/>
		Poll 	: PollStr;			//! <Variable Comment="Internal Poll data" Name="Poll"/>
		tSdoSend 	: UDINT;			//! <Variable Comment="Starttime sending SDO object." Name="tSdoSend"/>
		tPdoSend 	: UDINT;			//! <Variable Comment="Starttime sending PDO object." Name="tPdoSend"/>
		Retries 	: UDINT;			//! <Variable Comment="Retries counter" Name="Retries"/>
		vReturn 	: DINT;			//! <Variable Comment="Return value" Name="vReturn"/>
		NGFlag 	: CanDeviceStateTxt;
		NGFlagSync 	: DINT;
		Resp 	: RespStr;
  //Functions:
				//! <Function Comment="&#13;&#10;" Name="Init"/>
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT := EAX;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="BuildSync"/>
	FUNCTION VIRTUAL GLOBAL BuildSync
		VAR_INPUT
			SyncId 	: HINT;			//! <Variable Comment="Number of Synd ID. If bigger than cMaxCanMem (16#7FF) dan then def ID is &apos;cSync&apos; ( 16#080)." Name="BuildSync.SyncId"/>
		END_VAR
		VAR_OUTPUT
			State 	: DINT;			//! <Variable Comment="0= Ok, -1= ID error, -2= Size error, -11= Bussy." Name="BuildSync.State"/>
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10; ================================================================================================&#13;&#10; Build a CAN Open SDO COB ID message and send it.&#13;&#10; If State is 0 then sending the SDO COB ID message has been success full.&#13;&#10; ================================================================================================&#13;&#10;" Name="BuildSDO"/>
	FUNCTION VIRTUAL GLOBAL BuildSDO
		VAR_INPUT
			SdoId 	: HINT;			//! <Variable Comment="SDO COB ID" Name="BuildSDO.SdoId"/>
			Cmnd 	: BSINT;			//! <Variable Comment="Action command" Name="BuildSDO.Cmnd"/>
			Index 	: UINT;			//! <Variable Comment="Index number defined by CANOPEN device." Name="BuildSDO.Index"/>
			SIndex 	: USINT;			//! <Variable Comment="Sub index number" Name="BuildSDO.SIndex"/>
			Value 	: DINT;			//! <Variable Comment="Value written to poll buffer." Name="BuildSDO.Value"/>
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10; ================================================================================================&#13;&#10; Test if a SDO COB ID has been recieved&#13;&#10; If State is 0 than a responce COB ID is recieved&#13;&#10; If State.CommErr is 0 than value is valid&#13;&#10;                     1 than value is not valid&#13;&#10; ================================================================================================&#13;&#10;" Name="DecoSDO"/>
	FUNCTION VIRTUAL GLOBAL DecoSDO
		VAR_INPUT
			SdoId 	: HINT;
			CmndState 	: ^BSINT;			//! <Variable Comment="Command responce" Name="DecoSDO.CmndState"/>
			Index 	: ^UINT;
			SIndex 	: ^USINT;
			Value 	: ^DINT;
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10; ================================================================================================&#13;&#10; Build a CAN Open PDO message and send it.&#13;&#10; If State is 0 then sending the PDO message has been success full.&#13;&#10; ================================================================================================&#13;&#10;" Name="BuildPDO"/>
	FUNCTION VIRTUAL GLOBAL BuildPDO
		VAR_INPUT
			PdoId 	: HINT;			//! <Variable Comment="PDO ID number" Name="BuildPDO.PdoId"/>
			Value1 	: INT;			//! <Variable Comment="Value 1" Name="BuildPDO.Value1"/>
			Value2 	: INT;			//! <Variable Comment="Value 2" Name="BuildPDO.Value2"/>
			Value3 	: INT;			//! <Variable Comment="Value 3" Name="BuildPDO.Value3"/>
			Value4 	: INT;			//! <Variable Comment="Value 4" Name="BuildPDO.Value4"/>
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10; ================================================================================================&#13;&#10; Test if a PDO COB ID has been recieved&#13;&#10; If State is 0 than a responce COB ID is recieved&#13;&#10; If State.CommErr is 0 than value is valid&#13;&#10;                     1 than value is not valid&#13;&#10; ================================================================================================&#13;&#10;" Name="DecoPDO"/>
	FUNCTION VIRTUAL GLOBAL DecoPDO
		VAR_INPUT
			PdoId 	: HINT;
			Value1 	: ^INT;
			Value2 	: ^INT;
			Value3 	: ^INT;
			Value4 	: ^INT;
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="BuildNmt"/>
	FUNCTION VIRTUAL GLOBAL BuildNmt
		VAR_INPUT
			NmtId 	: HINT;			//! <Variable Comment="Number of NMT ID. If bigger than cMaxCanMem (16#7FF) dan then def ID is &apos;cNmt&apos; ( 16#000)." Name="BuildNmt.NmtId"/>
			Cmnd 	: DINT;
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL BuildNMTng
		VAR_INPUT
			NmtId 	: HINT;
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL DecoNMT
		VAR_INPUT
			NmtId 	: HINT;
			DeviceState 	: ^CanDeviceStateTxt;
		END_VAR
		VAR_OUTPUT
			State 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="StartConfig"/>
	FUNCTION VIRTUAL GLOBAL StartConfig
		VAR_OUTPUT
			Result 	: DINT;			//! <Variable Comment="0= Ok, -1= Not a valid record number." Name="StartConfig.Result"/>
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="StartPoll"/>
	FUNCTION VIRTUAL GLOBAL StartPoll
		VAR_INPUT
			Mode 	: DINT;			//! <Variable Comment="0= Continue, nnn= Every nnn mSec." Name="StartPoll.Mode"/>
		END_VAR
		VAR_OUTPUT
			Result 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="BuildPoll"/>
	FUNCTION VIRTUAL GLOBAL BuildPoll
		VAR_INPUT
			Nr 	: DINT;			//! <Variable Comment="error number" Name="BuildPoll.Nr"/>
			Channel 	: HINT;			//! <Variable Comment="Can object ID (cSdoTx1)." Name="BuildPoll.Channel"/>
			Command 	: DINT;			//! <Variable Comment="Read/Write and Size ( cWrReq4)." Name="BuildPoll.Command"/>
			Index 	: DINT;
			SubIndex 	: DINT;			//! <Variable Comment="SubIndex number defined by CANOPEN device." Name="BuildPoll.SubIndex"/>
			Value 	: DINT;
		END_VAR
		VAR_OUTPUT
			Result 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="ReadPoll"/>
	FUNCTION VIRTUAL GLOBAL ReadPoll
		VAR_INPUT
			Nr 	: DINT;
			Value 	: ^DINT;
		END_VAR
		VAR_OUTPUT
			Result 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="WritePoll"/>
	FUNCTION VIRTUAL GLOBAL WritePoll
		VAR_INPUT
			Nr 	: DINT;
			Value 	: DINT;
		END_VAR
		VAR_OUTPUT
			Result 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="ClearPoll"/>
	FUNCTION VIRTUAL GLOBAL ClearPoll
		VAR_INPUT
			Nr 	: DINT;
		END_VAR
		VAR_OUTPUT
			Result 	: DINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="Sdo2CanObj"/>
	FUNCTION VIRTUAL GLOBAL Sdo2CanObj
		VAR_INPUT
			SdoRec 	: ^SDOStr;			//! <Variable Comment="SDO record data" Name="Sdo2CanObj.SdoRec"/>
			CanObj 	: ^CanObjStr;			//! <Variable Comment="CAN object data" Name="Sdo2CanObj.CanObj"/>
		END_VAR;
	
	FUNCTION TimeOutScan;
	
	FUNCTION Stepper;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="Can2SdoObj"/>
	FUNCTION VIRTUAL GLOBAL Can2SdoObj
		VAR_INPUT
			CanObj 	: ^CanObjStr;
			SdoRec 	: ^SDOStr;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="ErrStep"/>
	FUNCTION ErrStep
		VAR_INPUT
			Nr 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL CommandDone
		VAR_OUTPUT
			State 	: DINT;			//! <Variable Comment="0= Done 1= Busy." Name="CommandDone.State"/>
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL GetNodeNr
		VAR_OUTPUT
			NodeNr 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd ConfigDefBase


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB CanOpenBase::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CANOPENBASE
0$UINT, 9$UINT, (SIZEOF(::CanOpenBase))$UINT, 
0$UINT, 2$UINT, 0$UINT, 
TO_UDINT(4284412609), "CanOpenBase", //Class
TO_UDINT(472728498), "CanBase", 1$UINT, 1$UINT, //Baseclass
//Servers:
//Clients:
(::CanOpenBase.cNode.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(1272909673), "cNode", 
(::CanOpenBase.ConfigData.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000000$UINT, TO_UDINT(4098266793), "ConfigData", TO_UDINT(3828351829), "ConfigDefBase", 0$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_CanOpenBase 20

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_CanOpenBase] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION CanOpenBase::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= CanBase::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= CanBase::Server0.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, CanBase::Server0.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_CanOpenBase;
	vmt.CmdTable.Init		:= #Init();
	vmt.CmdTable.CyWork		:= #CyWork();
#pragma warning (disable : 74)
	vmt.UserFcts[2]		:= #BuildSync();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[3]		:= #BuildSDO();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[4]		:= #DecoSDO();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[5]		:= #BuildPDO();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[6]		:= #DecoPDO();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[7]		:= #BuildNmt();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[8]		:= #BuildNMTng();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[9]		:= #DecoNMT();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[10]		:= #StartConfig();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[11]		:= #StartPoll();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[12]		:= #BuildPoll();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[13]		:= #ReadPoll();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[14]		:= #WritePoll();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[15]		:= #ClearPoll();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[16]		:= #Sdo2CanObj();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[17]		:= #Can2SdoObj();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[18]		:= #CommandDone();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[19]		:= #GetNodeNr();

#pragma warning (default : 74)
	CanBase::Server0.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF CanBase::Server0.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


#pragma using CanDriverBase


//[#ENGLISH]
(*	****************************************************************************************
	CANOPENBase	driver to communicate with one CANOPEN device
	****************************************************************************************

	Server	Server0		: 0		= Ok.
						  -1	= Alive timeout.
						  -2	= SDO timeout.
						  -3	= PDO timeout.
						  -4	= SDO and/or PDO timeout and retries.
						  -5	= Config table is empty.
						  -6	= Can't read a config message.
						  -7	= Poll buffer is empty.
						  -8	= Sdo gives an Error command code as responce.
						  -9	= Sending
              -10 = 
              -11 = Bussy.
	Client	Driver		: Connection to _CanDriverBase class for interface with the hardware
			cNode		: Nodenumber of this device.
			ConfigData	: Config data table.

	****************************************************************************************
	Created  : JE  : Wk 48/04 | Lasal V00:61f		|
	Tested   : JE  : Wk 01/05 | Lasal V01.01.003	| c-IPC	- 2.2 x1.8	-1.1.11 1.00.3.0
	Rev00:00 : JE  : Wk mm/yy | Lasal V				| c-IPC	- 
	****************************************************************************************)
//[#DEUTSCH]
(*	****************************************************************************************

	****************************************************************************************


	****************************************************************************************)


FUNCTION VIRTUAL GLOBAL CanOpenBase::Init

  ReqStep	:= eIdle;
  Stepper	:= eIdle;
  ErrStep	:= eIdle;

  // CAN OPEN settings
  Conf.RespDelta	:= cSdoTx1- cSdoRx1;
  Poll.RespDelta	:= cSdoTx1- cSdoRx1;

  // Config buffer
  If IsClientConnected( #ConfigData) Then
    Conn.ConfigConnected	:= 1;
    If _FirstScan= 1 Then
      ConfigData.Read();
    End_If;
  End_IF;
  // Poll buffer
  Poll.Mode	:= -1;
  Poll.TimeBase	:= to_Dint( Intr.ObjInformation.OrgPeriod* 10);
  ClearPoll( Nr	:= 0);	// Clear Poll buffer

  CanBase::Init();
  
END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::Init

FUNCTION VIRTUAL GLOBAL CanOpenBase::CyWork
VAR_INPUT
	EAX		: UDINT;
END_VAR
VAR_OUTPUT
	state		: UDINT;
END_VAR

  Stepper();
  TimeOutScan();
  CanBase::CyWork();
  State:= Ready;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::CyWork


//[#ENGLISH]
// ================================================================================================
// Build a CAN Open SDO COB ID message and send it.
// If State is 0 then sending the SDO COB ID message has been success full.
// ================================================================================================
//[>SdoId]SDO ID number
//[>Cmnd]Action command
//[>Index]Index number
//[>SIndex]Sub index number
//[>Value]Value
//[<State]0= Ok, -1= ID error, -2= Size error, -11= Bussy.
FUNCTION VIRTUAL GLOBAL CanOpenBase::BuildSDO
	VAR_INPUT
		SdoId 	: HINT;
		Cmnd 	: BSINT;
		Index 	: UINT;
		SIndex 	: USINT;
		Value 	: DINT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR

  Case Stepper Of
  eStartPoll, ePollRecieve:
    State	:= -11;
  Else

    // send object
    TxData.Id			      := SdoId+ To_Uint( cNode);
    TxData.Size			    := 8;
    TxData.Data[1]		  := Cmnd;
    TxData.Data[2]$UInt	:= Index;
    TxData.Data[4]		  := SIndex;
    TxData.Data[5]$DInt	:= To_Dint( Value);

    Resp.Id	:= SdoId- to_Uint( Conf.RespDelta);

    State	:= SendCanObj( #TxData);
    If State>= 0 Then
      tSdoSend	:= Ops.tAbsolute;
    End_If;
  End_Case;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::BuildSDO


//[#ENGLISH]
// ================================================================================================
// Test if a SDO COB ID has been recieved
// If State is 0 than a responce COB ID is recieved
// If State.CommErr is 0 than value is valid
//                     1 than value is not valid
// ================================================================================================
//[>SdoId]SDO COB ID
//[>CmndState]Command responce
//[>Index]Index number
//[>SIndex]Sub index number
//[>Value]Value
//[<State]0= Ok, -1= Nok, -2=Error message recieved
FUNCTION VIRTUAL GLOBAL CanOpenBase::DecoSDO
	VAR_INPUT
		SdoId 	: HINT;
		CmndState 	: ^BSINT;
		Index 	: ^UINT;
		SIndex 	: ^USINT;
		Value 	: ^DINT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR
  VAR
  	LocPtr  : ^CanObjStr;
  END_VAR


  LocPtr	:= GetCanObj( ObjNr:= SdoId+ To_Uint( cNode));
  IF LocPtr	<> Nil Then						// There is an object recieved
    Retries		:= 0;
    IF LocPtr^.Data[1] <> cErrRsp Then		// Responce code is no err
        // OK
      CmndState^  := LocPtr^.Data[1]$BSint;
      Index^		  := LocPtr^.Data[2]$Uint;
      SIndex^		  := LocPtr^.Data[4]$USint;
      State   := 0;
      Case CmndState^ of
      cWrRsp1, cRdRsp1:	// Read/Write responce 1 Byte
        Value^		:= LocPtr^.Data[5]$SInt;
      cWrRsp2, cRdRsp2:	// Read/Write responce 2 Byte
        Value^		:= LocPtr^.Data[5]$Int;
      cWrRsp3, cRdRsp3:	// Read/Write responce 3 Byte
        Value^		:= LocPtr^.Data[5]$DInt shr 8;
      cWrRsp4, cRdRsp4:	// Read/Write responce 4 Byte
        Value^		:= LocPtr^.Data[5]$DInt;
      End_Case;
    Else
        // NOK
      CmndState^	:= 0;
      Index^		:= 0;
      SIndex^		:= 0;
      Value^		:= 0;
      State		:= -2;	// CanObject recieved correct but can't comply 
    End_if;
  Else
    State		:= -1;	// Nothing recieved
  End_if;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::DecoSDO


//[#ENGLISH]
// ================================================================================================
// Build a CAN Open PDO message and send it.
// If State is 0 then sending the PDO message has been success full.
// ================================================================================================
//[>PdoId]PDO ID number
//[>Value1]Value 1.
//[>Value2]Value 2.
//[>Value3]Value 3.
//[>Value4]Value 4.
//[<State]0= Ok, -1= ID error, -2= Size error, -11= Bussy.
FUNCTION VIRTUAL GLOBAL CanOpenBase::BuildPDO
	VAR_INPUT
		PdoId 	: HINT;
		Value1 	: INT;
		Value2 	: INT;
		Value3 	: INT;
		Value4 	: INT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR

  Case Stepper Of
  eConfigSend, ePollSend, eSdoSend:
    State	:= -11;
  Else
    // send object
    TxData.Id			:= PdoId + To_Uint( cNode);
    TxData.Size			:= 8;
    TxData.Data[1]$Int	:= Value1;
    TxData.Data[3]$Int	:= Value2;
    TxData.Data[5]$Int	:= Value3;
    TxData.Data[7]$Int	:= Value4;

    State	:= SendCanObj( #TxData);
    If State>= 0 Then
      tPdoSend	:= Ops.tAbsolute;
    End_If;
  End_Case;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::BuildPDO


//[#ENGLISH]
// ================================================================================================
// Test if a PDO COB ID has been recieved
// If State is 0 than a responce COB ID is recieved
// If State.CommErr is 0 than value is valid
//                     1 than value is not valid
// ================================================================================================
//[>PdoId]PDO ID number
//[>Value1]Value 1
//[>Value2]Value 2
//[>Value3]Value 3
//[>Value4]Value 4
//[<State]0= Ok, -1= No object receinved. 
FUNCTION VIRTUAL GLOBAL CanOpenBase::DecoPDO
	VAR_INPUT
		PdoId 	: HINT;
		Value1 	: ^INT;
		Value2 	: ^INT;
		Value3 	: ^INT;
		Value4 	: ^INT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR
  VAR
    LocPtr  : ^CanObjStr;
  END_VAR

  LocPtr	:= GetCanObj( ObjNr:=( PdoId + To_Uint( cNode)));
  IF LocPtr	<> Nil Then						// There is an object recieved
    Value1^		:= LocPtr^.Data[1]$Int;
    Value2^		:= LocPtr^.Data[3]$Int;
    Value3^		:= LocPtr^.Data[5]$Int;
    Value4^		:= LocPtr^.Data[7]$Int;
    State	:= 0;
  Else
    State	:= -1;
  End_If;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::DecoPDO


//[#ENGLISH]
//[>NmtId]Number of NMT ID. If bigger than cMaxCanMem (16#7FF) dan then def ID is 'cNmt' ( 16#000).
//[<State]0= Ok, -1= ID error, -2= Size error, -11= Bussy.
FUNCTION VIRTUAL GLOBAL CanOpenBase::BuildNmt
	VAR_INPUT
		NmtId 	: HINT;
		Cmnd 	: DINT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR

  If Stepper= eIdle Then
    // send object
    If NmtId> cMaxCanMem Then
      TxData.Id			:= cNmt;
    Else
      TxData.Id			:= NmtId;
    End_If;

    TxData.Size			:= 2;
    TxData.Data[1]	:= to_usint( Cmnd);

    TxData.Data[2]	:= to_Usint( cNode);

    TxData.Data[3]$Int	:= 0;
    TxData.Data[5]$DInt	:= 0;

    State	:= SendCanObj( #TxData);
  Else
    State	:= -11;
  End_If;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::BuildNmt


//[#ENGLISH]
//[>NmtId]Number of NMT ID.
//[<State]0= Ok, -1= ID error, -2= Size error, -11= Bussy.
FUNCTION VIRTUAL GLOBAL CanOpenBase::BuildNMTng
	VAR_INPUT
		NmtId 	: HINT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR
  
  If Stepper= eIdle Then
    // send object
    TxData.Id			:= NmtId+ To_Uint( cNode);
    TxData.Size			:= 0;
    TxData.Data[1]$DInt	:= 0;
    TxData.Data[5]$DInt	:= 0;

    State	:= SendCanObj( #TxData);
  Else
    State	:= -11;
  End_If;

END_FUNCTION


//[#ENGLISH]
//[>NmtId]Number of NMT ID.
//[>DeviceState]0= initialising, 1= Disconnecting, 2= Connecting, 3= Preparing, 4= Stopped, 5= Operational, 127= Pre-Operational
//[<State]0= Ok, -1= No object receinved. 
FUNCTION VIRTUAL GLOBAL CanOpenBase::DecoNMT
	VAR_INPUT
		NmtId 	: HINT;
		DeviceState 	: ^CanDeviceStateTxt;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR
  VAR
    LocPtr  : ^CanObjStr;
  	IntDevState : CanDeviceStateTxt;
  END_VAR

  LocPtr	:= GetCanObj( ObjNr:=( NmtId + To_Uint( cNode)));
  IF LocPtr	<> Nil Then						// There is an object recieved
    IntDevState$DINT:=0;
    IntDevState$Usint   := LocPtr^.Data[1] And 2#01111111;
    DeviceState^  := 0;
    DeviceState^  := IntDevState;
    // Toggel Byte
    if NGFlagSync= 0 then
      NGFlagSync  := 1;
      NGFlag      := IntDevState;
    else
      if NGFlag<> IntDevState then
        NGFlag    := IntDevState;
      else
        State	:= -10;
      end_if;
    end_if;
    State	:= 0;
  Else
    State	:= -1;
  End_If;

END_FUNCTION


//[#ENGLISH]
//[>SyncId]Number of Synd ID. If bigger than cMaxCanMem (16#7FF) dan then def ID is 'cSync' ( 16#080).
//[<State]0= Ok, -1= ID error, -2= Size error, -11= Bussy.
FUNCTION VIRTUAL GLOBAL CanOpenBase::BuildSync
VAR_INPUT
	SyncId		: HINT;
END_VAR
VAR_OUTPUT
	State		: DINT;
END_VAR

  If Stepper= eIdle Then
    // send object
    If SyncId> cMaxCanMem Then
      TxData.Id			:= cSync;
    Else
      TxData.Id			:= SyncId;
    End_If;
    TxData.Size			:= 0;
    TxData.Data[1]$DInt	:= 0;
    TxData.Data[5]$DInt	:= 0;
    State	:= SendCanObj( #TxData);
  Else
    State	:= -11;
  End_If;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::BuildSync


//[#ENGLISH]
//[<Result]0= Ok, -1= Busy, -2= No Config table.
FUNCTION VIRTUAL GLOBAL CanOpenBase::StartConfig
VAR_OUTPUT
	Result		: DINT;
END_VAR

  Result	:= 0;
  If ReqStep<> eIdle Then 
    Result	:= -1;
  Else
    If Conn.ConfigConnected	= 0 Then
      Result	:= -2;
    Else
      ReqStep	:= eStartConfig;
    End_If;
  End_If;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::StartConfig


//[#ENGLISH]
//[>Mode]0= Continue, nnn= Every nnn mSec.
//[<Result]0= Ok, -1= Bussy, -2= No valid Poll record.
FUNCTION VIRTUAL GLOBAL CanOpenBase::StartPoll
VAR_INPUT
	Mode		: DINT;
END_VAR
VAR_OUTPUT
	Result		: DINT;
END_VAR
  VAR
    i		: DINT;
  END_VAR;

  Result	:= -2;
  Case Stepper Of
  eStartPoll, ePollSend, ePollRecieve:
    // Busy polling
    Result	:= -1;
  Else
    Poll.Mode	:= -1;
    If ReqStep= eIdle Then
      Poll.ActNr		:= 0;
      Poll.FirstNr	:= 0;
      Poll.LastNr		:= 0;
      For i:= 1 to cPollBufferSize Do
        If Poll.Buffer[i].SdoId		<> 0
         & Poll.Buffer[i].CmndCode	<> 0 Then
          If Poll.FirstNr= 0 Then
            Poll.FirstNr	:= i;
          End_If;
          Poll.LastNr	:= i;
        End_If;
      End_For;
      If Poll.LastNr> 0 Then
        Poll.Mode	:= Mode;
        Result	:= 0;
        ReqStep	:= eStartPoll;
      Else
        Server0	:= -7;
      End_If;
    End_If;
  End_Case;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::StartPoll


//[#ENGLISH]
//[>Nr]Poll Record number.
//[>Channel]Can object ID (cSdoTx1).
//[>Command]Read/Write and Size ( cWrReq4).
//[>Index]Index number defined by CANOPEN device.
//[>SubIndex]SubIndex number defined by CANOPEN device.
//[>Value]Value to be writen to device or 0 if a read command.
//[<Result]0= 0k, -1= Busy -2= Not a valid record number.
FUNCTION VIRTUAL GLOBAL CanOpenBase::BuildPoll
VAR_INPUT
	Nr		: DINT;
	Channel		: HINT;
	Command		: DINT;
	Index		: DINT;
	SubIndex	: DINT;
	Value		: DINT;
END_VAR
VAR_OUTPUT
	Result		: DINT;
END_VAR

  Result	:= 0;
  Case Stepper Of
  eStartPoll, ePollSend, ePollRecieve:
    Result	:= -1;
  Else
    If Nr> 0 & Nr<= cPollBufferSize Then
      Poll.Buffer[Nr].SdoId		:= To_UINT(  Channel);
      Poll.Buffer[Nr].CmndCode	:= To_USINT( Command);
      Poll.Buffer[Nr].Index		:= To_UINT(  Index);
      Poll.Buffer[Nr].SIndex		:= To_USINT( SubIndex);
      Poll.Buffer[Nr].Value		:= To_DINT(  Value);
    Else
      Result	:= -2;
    End_If;
  End_Case;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::BuildPoll


//[#ENGLISH]
//[>Nr]Poll Record number.
//[>Value]Pointer to copy value read from poll buffer.
//[<Result]0= 0k, -1= Busy, -2= Not a valid record number.
FUNCTION VIRTUAL GLOBAL CanOpenBase::ReadPoll
VAR_INPUT
	Nr		: DINT;
	Value	: ^DINT;
END_VAR
VAR_OUTPUT
	Result	: DINT;
END_VAR

  Result	:= 0;
  Case Stepper Of
  eStartPoll, ePollSend, ePollRecieve:
    Result	:= -1;
  Else
    If Nr> 0 & Nr<= cPollBufferSize Then
      Value^	:= To_DINT( Poll.Buffer[Nr].Value); 
    Else
      Result	:= -2;
    End_If;
  End_Case;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::ReadPoll


//[#ENGLISH]
//[>Nr]Poll Record number.
//[>Value]Value written to poll buffer.
//[<Result]0= 0k, -1= Busy, -2= Not a valid record number.
FUNCTION VIRTUAL GLOBAL CanOpenBase::WritePoll
VAR_INPUT
	Nr		: DINT;
	Value		: DINT;
END_VAR
VAR_OUTPUT
	Result		: DINT;
END_VAR

//  If Nr<> Poll.ActNr Then
    If Nr> 0 & Nr<= cPollBufferSize Then
      Poll.Buffer[Nr].Value	:= Value;
    Else
      Result	:= -2;
    End_If;
//  Else
//  	Result	:= -1;
//  End_If;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::WritePoll


//[#ENGLISH]
//[>Nr]0= Clear whole buffer, nnn= Clear one buffer
//[<Result]0= Ok, -1= Not a valid record number.
FUNCTION VIRTUAL GLOBAL CanOpenBase::ClearPoll
VAR_INPUT
	Nr		: DINT;
END_VAR
VAR_OUTPUT
	Result	: DINT;
END_VAR
  VAR
    i		: DINT;
  END_VAR;

  Result	:= 0;
  Case Stepper Of
  eStartPoll, ePollSend, ePollRecieve:
    Result	:= -1;
  Else
    If Nr= 0 Then
      // Clear whole buffer
      For i:= 1 to cPollBufferSize Do
        Poll.Buffer[i].SdoId	:= 0;
        Poll.Buffer[i].CmndCode	:= 0;
        Poll.Buffer[i].Index	:= 0;
        Poll.Buffer[i].SIndex	:= 0;
        Poll.Buffer[i].Value	:= 0;
      End_For;
    ElsIf Nr> 0 & Nr<= cPollBufferSize Then
      // Clear one buffer
      Poll.Buffer[Nr].SdoId		:= 0;
      Poll.Buffer[Nr].CmndCode	:= 0;
      Poll.Buffer[Nr].Index		:= 0;
      Poll.Buffer[Nr].SIndex		:= 0;
      Poll.Buffer[Nr].Value		:= 0;
    Else
      Result	:= -2;
    End_If;
  End_Case;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::ClearPoll


//[#ENGLISH]
//[>SdoRec]SDO record data
//[>CanObj]CAN object data
FUNCTION VIRTUAL GLOBAL CanOpenBase::Sdo2CanObj
	VAR_INPUT
		SdoRec 	: ^SDOStr;
		CanObj 	: ^CanObjStr;
	END_VAR

  CanObj^.ID				:= To_UDint( SdoRec^.SdoId)+ To_UDint( cNode);
  CanObj^.Size			:= 8;

  // Add Nodenumber for specific Index/SubIndex values.    
  case SdoRec^.Index of
  16#1400..16#1403,
  16#1800..16#1803:
    case SdoRec^.SIndex of
    1:
      if ( SdoRec^.Value AND 16#00007FFF)<> 0 then
        SdoRec^.Value += cNode;
      end_if;
    end_case;
  end_case;

  CanObj^.Data[1]$Dint	:= SdoRec^.CmndCode$Dint;
  CanObj^.Data[5]$Dint	:= SdoRec^.Value$Dint;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::Sdo2CanObj


//[#ENGLISH]
//[>CanObj]CAN object data
//[>SdoRec]SDO record data
FUNCTION VIRTUAL GLOBAL CanOpenBase::Can2SdoObj
	VAR_INPUT
		CanObj 	: ^CanObjStr;
		SdoRec 	: ^SDOStr;
	END_VAR

  SdoRec^.SdoId		:= To_UINT( CanObj^.ID)- To_UInt( cNode);
  SdoRec^.CmndCode	:= CanObj^.Data[1]$BSInt;
  SdoRec^.Index		:= CanObj^.Data[2]$UInt;
  SdoRec^.SIndex		:= CanObj^.Data[4]$USInt;
  SdoRec^.Value		:= CanObj^.Data[5]$DInt;

END_FUNCTION //VIRTUAL GLOBAL CanOpenBase::Can2SdoObj


FUNCTION  CanOpenBase::TimeOutScan

  // Timeout test for SDO communication 
  Case Stepper Of			// Wait for responce from a
  eConfigRecieve,			// config command
  ePollRecieve,			// poll command
  eSdoRecieve:			// SDO command
    // Test for max number of retries
    If Ops.tAbsolute- tSdoSend> cCanOpenTOTime Then
      Retries	+= 1;
      If Retries< cCanOpenMaxRetries Then
        Server0	:= -2;
        ErrStep	:= Stepper;
        Stepper$Dint	-= 1;
      Else
        Server0	:= -4;

        ErrStep	:= Stepper;
        ReqStep	:= eIdle;
        Stepper	:= eError;
      End_If;
    End_If;
  End_Case;
  (*
  // Timeout test for PDO communication 
  If Ops.tAbsolute- tPdoSend> cCanOpenTOTime Then
    Retries	+= 1;
    If Retries< cCanOpenMaxRetries Then
      Server0	:= -3;
    Else
      Server0	:= -4;
    End_If;
  End_If;
  *)

END_FUNCTION // CanOpenBase::TimeOutScan


FUNCTION  CanOpenBase::Stepper
Var
	i	: Dint;
  LocPtr  : ^CanObjStr;
End_Var;

  // Communication stepper
  Case Stepper Of
  eIdle:
    If ReqStep<> eIdle Then
      Stepper	:= ReqStep;
      ReqStep	:= eIdle;
    ElsIf Poll.Mode> 0 Then
      If Ops.tAbsolute- Poll.tLastPoll> PollStr.Mode Then
        Stepper	:= eStartPoll;
      End_If;
    End_If;
  eStartConfig:
    If Conn.ConfigConnected= 1 Then
      Conf.ActNr	:= 1;
      Conf.MaxNr	:= ConfigData.Read();
      If Conf.MaxNr> 0 Then
        Retries	:= 0;
        Stepper	:= eConfigSend;
      Else
        ErrStep( -5);
      End_If;
    Else
      Stepper	:= eIdle;
    End_If;
  eConfigSend:
    If ConfigData.ReadRecord( Nr:= Conf.ActNr, DestSDO:= #Conf.Record)= 1 Then
       
      Sdo2CanObj( SdoRec:= #Conf.Record, CanObj:= #TxData);
      Conf.RespID	:= TxData.ID- Conf.RespDelta;
      vReturn	:= SendCanObj( #TxData);
      If vReturn>= 0 Then
        tSdoSend	:= Ops.tAbsolute;
      End_If;
      Stepper	:= eConfigRecieve;
    Else
      ErrStep( -6);
    End_If;
  eConfigRecieve:
    LocPtr	:= GetCanObj(ObjNr:= Conf.RespID);
    If LocPtr<> Nil Then
      Can2SdoObj( LocPtr, #Resp.Sdo);
      If Resp.Sdo.CmndCode.8= 0 Then
        If Conf.ActNr< Conf.MaxNr Then
          Conf.ActNr	+= 1;
          Stepper	:= eConfigSend;
        Else
          Stepper	:= eIdle;
        End_If;
      Else
        ErrStep( -8);
      End_If;
    End_If;
  eStartPoll:
    If Poll.FirstNr> 0 Then
      Poll.ActNr	:= Poll.FirstNr;
      Retries	:= 0;
      Stepper	:= ePollSend;
    Else
      ErrStep( -7);
    End_If;
  ePollSend:
    BuildSDO( SdoId	:= Poll.Buffer[ Poll.ActNr].SdoId
        , Cmnd	:= Poll.Buffer[ Poll.ActNr].CmndCode
        , Index	:= Poll.Buffer[ Poll.ActNr].Index
        , SIndex:= Poll.Buffer[ Poll.ActNr].SIndex
        , Value	:= Poll.Buffer[ Poll.ActNr].Value );
    Poll.RespID	:= TxData.Id- Conf.RespDelta;
    Stepper	:= ePollRecieve;
  ePollRecieve:
    If DecoSDO( SdoId	:= Resp.Id
        , CmndState	:= #Resp.Sdo.CmndCode
          , Index	:= #Resp.Sdo.Index
        , SIndex	:= #Resp.Sdo.SIndex
          , Value	:= #Resp.Sdo.Value)>= 0 Then
      // Ok?
      If Resp.Sdo.CmndCode.8= 0 Then
        Case Resp.Sdo.CmndCode Of 
        cRdRsp1, cRdRsp2, cRdRsp3, cRdRsp4: 
          Poll.Buffer[ Poll.ActNr].Value	:= Resp.Sdo.Value;
        End_Case;
        // Next
        Stepper	:= eIdle;
        If Poll.ActNr= Poll.LastNr Then
          Poll.tLastPoll	:= Ops.tAbsolute;
          Stepper	:= eIdle;
        ElsIf Poll.ActNr< Poll.LastNr Then
          Poll.ActNr	+= 1;
          For i:= Poll.ActNr to Poll.LastNr Do
            If Poll.Buffer[ i].SdoId<> 0
             & Poll.Buffer[ i].CmndCode <> 0 Then
              Poll.ActNr	:= i;
              i	:= Poll.LastNr;
              Stepper	:= ePollSend;
            End_If;
          End_For;
        End_If;
      End_If;
    End_If;
  eNmtSend:
  eSdoSend:
  eSdoRecieve:
  eError:
    If ReqStep<> eIdle Then
      Stepper	:= ReqStep;
      ReqStep	:= eIdle;
      ErrStep	:= eIdle;
      Trace("'CanOpenBase::CyWork' a jump to error is has forgotten to reset ReqStep to eIdle");
    End_If;
  End_Case;

END_FUNCTION // CanOpenBase::Stepper


//[#ENGLISH]
//[>Nr]error number
FUNCTION  CanOpenBase::ErrStep
VAR_INPUT
	Nr		: DINT;
END_VAR

	Server0	:= Nr;
	ErrStep	:= Stepper;
	ReqStep	:= eIdle;
	Stepper	:= eError;

END_FUNCTION // CanOpenBase::ErrStep


FUNCTION VIRTUAL GLOBAL CanOpenBase::CommandDone
VAR_OUTPUT
  State 	: DINT;
END_VAR
  
  If Stepper<> eIdle Then
    State := 1;
  Else
    State := 0;
  End_If;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL CanOpenBase::GetNodeNr
VAR_OUTPUT
  NodeNr 	: DINT;
END_VAR

  NodeNr  := cNode;

END_FUNCTION
