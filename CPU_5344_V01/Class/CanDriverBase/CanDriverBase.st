//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "CanDriverBase"
	Revision           = "1.3"
	GUID               = "{E913C9C0-E6C8-474A-8523-289C5D23BBC9}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)">
	<Channels>
		<Server Name="CobId" GUID="{7A7DD47C-3731-46D8-BE8F-B6DA09F8B612}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Command" GUID="{CA4478FF-4334-4650-8E30-C31F7F5A2EB3}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="ErrCntr" GUID="{9E68E836-7C1C-4B43-80BF-5DA3D4AC60A6}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Status" GUID="{24AEC172-3AEB-4A1D-9FD8-8A93B49482D6}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="CanChannel" Required="true" Internal="false"/>
		<Client Name="cBaudrate" Required="true" Internal="false" Comment="Baudrate for CAN poort. Default 500 KBaud."/>
		<Client Name="HwSelector" Required="true" Internal="false" DefValue="CanDriverBase::CAN_conv"/>
		<Client Name="InitBasicCanFailed" Required="true" Internal="true"/>
		<Client Name="IrqChannel" Required="false" Internal="false" Comment="!!! LookOut !!! Writes Pointer to Can data every IRQ"/>
		<Client Name="SCB" Required="true" Internal="true"/>
		<Client Name="SetBaudrateFailed" Required="true" Internal="true"/>
		<Client Name="WrongBaudrate" Required="true" Internal="true"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Class\CanDriverBase\GlCanDriverBase.h" Include="false"/>
		</Files>
	</Dependencies>
	<RevDoku>
		<Owner Company="SigmaControl" Author="Johan Embregts"/>
		<Dokumentation Revision="1.3" Date="2015-10-02" Author="Johan Embregts" Company="SigmaControl" Description="SetBaudrate() only alowed to be called once."/>
		<Dokumentation Revision="1.2" Date="2015-05-08" Author="Johan Embregts" Company="SigmaControl" Description="Server CobId in hex format "/>
		<Dokumentation Revision="1.1" Date="2015-05-04" Author="Johan Embregts" Company="SigmaControl" Description="Added SCBase class and use the options.&#13;&#10;Placed _AlarmX0Para classes for alarms in LSE."/>
		<Dokumentation Revision="1.0" Date="2013-11-04" Author="Johan Embregts" Company="SigmaControl" Description="Removed AWL code for ARM compiler.&#13;&#10;Added Client &quot;HwSelector&quot; for Switch conventional CCAxxx_IM and CCA121 HW."/>
		<Dokumentation Revision="0.5" Date="2013-06-20" Author="Johan Embregts" Company="SigmaControl" Description="InitMask has a return value State.&#13;&#10;Trace messages are extended."/>
		<Dokumentation Revision="0.4" Date="2012-06-28" Author="Johan Embregts" Company="SigmaControl" Description="Also Log SendObject() with Precompiler cLogCanSend"/>
		<Dokumentation Revision="0.3" Date="2011-01-18" Author="Johan Embregts" Company="SigmaControl" Description="Error counter brought to the outside."/>
	</RevDoku>
	<Network Name="CanDriverBase">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "InitBasicCanFailed"
				GUID       = "{D3C8F030-2AB4-4A28-8DC0-15C6F57B785C}"
				Class      = "_AlarmX0Para"
				Position   = "(870,480)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="Acknow"/>
					<Client Name="Config" Value="0"/>
					<Client Name="Group"/>
				</Channels>
			</Object>
			<Object
				Name           = "SCB"
				GUID           = "{25FFC561-F796-4C52-B2D5-65215BC6A616}"
				Class          = "SCBase"
				Position       = "(870,150)"
				Visualized     = "false"
				BackgroundTime = "1000 ms">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="LogID" Value="NoEventLog"/>
					<Client Name="ToGrafix"/>
					<Client Name="ToLinker"/>
					<Client Name="ToSigCLib"/>
					<Client Name="ToSysMsg"/>
				</Channels>
			</Object>
			<Object
				Name       = "SetBaudrateFailed"
				GUID       = "{47532372-6216-42DB-86F3-37EAA5297E50}"
				Class      = "_AlarmX0Para"
				Position   = "(510,780)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="Acknow"/>
					<Client Name="Config" Value="0"/>
					<Client Name="Group"/>
				</Channels>
			</Object>
			<Object
				Name       = "WrongBaudrate"
				GUID       = "{3C6F9F79-29B2-4FAC-8F93-E3B744FD164F}"
				Class      = "_AlarmX0Para"
				Position   = "(150,480)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="Acknow"/>
					<Client Name="Config" Value="0"/>
					<Client Name="Group"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.SCB" Destination="SCB.ClassSvr"/>
			<Connection Source="this.WrongBaudrate" Destination="WrongBaudrate.ClassSvr"/>
			<Connection Source="this.SetBaudrateFailed" Destination="SetBaudrateFailed.ClassSvr"/>
			<Connection Source="this.InitBasicCanFailed" Destination="InitBasicCanFailed.ClassSvr"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
CanDriverBase : CLASS
	TYPE
	  CanDefStr : STRUCT  //! <Type Comment="Can object definition in CAN memory" Name="CanDefStr"/>
	    State : UDINT;  //! <Type Comment="0= nothing recieved  n= number of recieved data " Name="CanDefStr.State"/>
	    Defined : BOOL;  //! <Type Comment="1= defined for Can chip" Name="CanDefStr.Defined"/>
	  END_STRUCT;
	  CanHwSwitchTxt :  //! <Type Public="true" Name="CanHwSwitchTxt"/>
	  (
	    CAN_conv,
	    CCAxxx
	  )$UDINT;
	END_TYPE
  //Servers:
	Command 	: SvrChCmd_DINT;
	CobId 	: SvrCh_HDINT;
	Status 	: SvrCh_DINT;
	ErrCntr 	: SvrCh_DINT;
  //Clients:
	CanChannel 	: CltChCmd__CanLib;
	cBaudrate 	: CltCh_DINT;
	HwSelector 	: CltCh_CanHwSwitchTxt_PTofCls_CanDriverBase;
	IrqChannel 	: CltCh_DINT;
	SCB 	: CltChCmd_SCBase;
	WrongBaudrate 	: CltChCmd__AlarmX0Para;
	SetBaudrateFailed 	: CltChCmd__AlarmX0Para;
	InitBasicCanFailed 	: CltChCmd__AlarmX0Para;
  //Variables:
		First 	: DINT;
		InitMaskObj 	: HDINT;			//! <Variable Comment="Initial mask object" Name="InitMaskObj"/>
		InitMaskNr 	: HDINT;			//! <Variable Comment="Initial mask number" Name="InitMaskNr"/>
		CanDef : ARRAY [0..cMaxCanMem] OF CanDefStr;
			//! <Variable Comment="CAN defenition buffer" Name="CanDef"/>
		CanMem : ARRAY [0..cMaxCanMem] OF CanObjStr;
			//! <Variable Comment="CAN memory buffer" Name="CanMem"/>
		BaudRateCode 	: DINT;			//! <Variable Comment="Baud code 615=0, 500=1 etc." Name="BaudRateCode"/>
		StateSetBaudrate 	: DINT;
		StateBasicCan 	: DINT;			//! <Variable Comment="State from _CanLib" Name="StateBasicCan"/>
		NR 	: DINT;			//! <Variable Comment="Last recieved object" Name="NR"/>
		Length 	: DINT;			//! <Variable Comment="Number of bytes in CAN object" Name="Length"/>
		IrqChannelOn 	: DINT;			//! <Variable Comment="IrqChannel is connected " Name="IrqChannelOn"/>
		Loop 	: CanObjStr;			//! <Variable Comment="Loop 1 test databuffer" Name="Loop"/>
  //Functions:
				//! <Function Comment=" ****************************************************************************************&#13;&#10; BASIC CAN handler&#13;&#10; ****************************************************************************************&#13;&#10; Server Command  : ID   = Object number of last send or recieved object&#13;&#10;        -1000000+ ID = ID number of the Can object recieved more often than read.&#13;&#10;   Status  : 0    = ok,&#13;&#10;        -1   = Wrong poort defined default poort is 1.&#13;&#10;        -2   = Wrong BaudRate defined defaul baudrate is 500 KBaud.&#13;&#10;        -3   = Init BasicCAN is not correct.&#13;&#10;        -4   = Send CAN object not correct.&#13;&#10;        -5            = Size &gt; than 8&#13;&#10;        -6   = Object number &gt; than 2048&#13;&#10; Client CanChannel : Connection to _CanLib class for interface with &#13;&#10;   BaudRate : Select the correct baudrate&#13;&#10;   System  : Use of system functions.&#13;&#10; ****************************************************************************************&#13;&#10; Created : JE  : Wk 30/04 | Lasal V00:60s   |&#13;&#10; Tested  : JE  : Wk 30/05 | Lasal 01.01.009 | c-IPC - 01.01.050&#13;&#10; ****************************************************************************************&#13;&#10; Rev 00:02 25-07-2005 #JE&#13;&#10; InitBasicCanObject only negative value&apos;s is an error.&#13;&#10; Trace message corrected and more trace messages added.&#13;&#10; Rev 00:01 25-03-2005 #JE&#13;&#10; Initialisation of MaskObject and MaskFilter is corrected.&#13;&#10; Default all CanObject are enabled. If an other Mask ir requierd use the &quot;CanMaskDef&quot;.&#13;&#10; &#13;&#10;&#13;&#10; ****************************************************************************************&#13;&#10; BASIC CAN handler&#13;&#10; ****************************************************************************************&#13;&#10;&#13;&#10; ****************************************************************************************&#13;&#10;" Name="Init"/>
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL CAN_IRQ_AWL
		VAR_INPUT
			PiCanPtr 	: ^USINT;
			RxDataPtr 	: ^USINT;
			ThisP 	: UDINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;This function is called by the CAN chip as an Interupt program&#13;&#10; when ever a CAN ID within the masker is recieved&#13;&#10;" Name="CAN_IRQ"/>
	FUNCTION VIRTUAL GLOBAL CAN_IRQ
		VAR_INPUT
			PiCanPtr 	: ^USINT;
			RxDataPtr 	: ^USINT;
			ThisP 	: UDINT;
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;Set CAN recieve filter for BASIC CAN mode&#13;&#10;" Name="InitMask"/>
	FUNCTION VIRTUAL GLOBAL InitMask
		VAR_INPUT
			ObjNr 	: HDINT;
			Mask 	: HDINT;
		END_VAR
		VAR_OUTPUT
			State 	: DINT;			//! <Variable Comment="0= Ok, 1=Nok, -1=No new MASK." Name="InitMask.State"/>
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10; Send an CAN object.&#13;&#10;" Name="SendObject"/>
	FUNCTION VIRTUAL GLOBAL SendObject
		VAR_INPUT
			TxBuffer 	: ^CanObjStr;			//! <Variable Comment="Pointer to CAN struct to be send." Name="SendObject.TxBuffer"/>
		END_VAR
		VAR_OUTPUT
			State 	: DINT;			//! <Variable Comment="0= Ok, 1=Nok." Name="SendObject.State"/>
		END_VAR;
				//! <Function Comment="[#ENGLISH]&#13;&#10;Request if a message of CAN-ID is recieved.&#13;&#10;If not Recieved PtrToID= 0 else PtrToID= pointer to CAN data.&#13;&#10;" Name="GetObject"/>
	FUNCTION VIRTUAL GLOBAL GetObject
		VAR_INPUT
			ObjNr 	: HDINT;
		END_VAR
		VAR_OUTPUT
			PtrToID 	: ^CanObjStr;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Command::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma using _AlarmX0Para
#pragma using SCBase
#pragma usingLtd _CanLib


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB CanDriverBase::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CANDRIVERBASE
1$UINT, 3$UINT, (SIZEOF(::CanDriverBase))$UINT, 
4$UINT, 8$UINT, 0$UINT, 
TO_UDINT(1472885325), "CanDriverBase", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::CanDriverBase.Command.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(2978944206), "Command", 
(::CanDriverBase.CobId.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(957527428), "CobId", 
(::CanDriverBase.Status.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2348327578), "Status", 
(::CanDriverBase.ErrCntr.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(551374694), "ErrCntr", 
//Clients:
(::CanDriverBase.CanChannel.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1663679597), "CanChannel", TO_UDINT(529317953), "_CanLib", 1$UINT, 10$UINT, 
(::CanDriverBase.cBaudrate.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(2984245869), "cBaudrate", 
(::CanDriverBase.HwSelector.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(1297588965), "HwSelector", 
(::CanDriverBase.IrqChannel.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1155363223), "IrqChannel", 
(::CanDriverBase.SCB.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3527243137), "SCB", TO_UDINT(4092474794), "SCBase", 0$UINT, 7$UINT, 
(::CanDriverBase.WrongBaudrate.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1681184461), "WrongBaudrate", TO_UDINT(800276940), "_AlarmX0Para", 0$UINT, 11$UINT, 
(::CanDriverBase.SetBaudrateFailed.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(4005815183), "SetBaudrateFailed", TO_UDINT(800276940), "_AlarmX0Para", 0$UINT, 11$UINT, 
(::CanDriverBase.InitBasicCanFailed.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1411063127), "InitBasicCanFailed", TO_UDINT(800276940), "_AlarmX0Para", 0$UINT, 11$UINT, 
END_FUNCTION


#define USER_CNT_CanDriverBase 5

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_CanDriverBase] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION CanDriverBase::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_CanDriverBase, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Read		:= #Read();
	vmt.CmdTable.Init		:= #Init();
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #CAN_IRQ_AWL();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[1]		:= #CAN_IRQ();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[2]		:= #InitMask();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[3]		:= #SendObject();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[4]		:= #GetObject();

#pragma warning (default : 74)
	Command.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Command.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


//#define cLogCanSend  // Also Log SendObject()


//[#ENGLISH]
// ****************************************************************************************
// BASIC CAN handler
// ****************************************************************************************
//
// Server	Command		: ID			= Object number of last send or recieved object
//						  -1000000+ ID	= ID number of the Can object recieved more often than read.
//			Status		: 0				= ok,
//						     -1			  = Wrong poort defined default poort is 1.
//						     -2			  = Wrong BaudRate defined defaul baudrate is 500 KBaud.
//						     -3			  = Init BasicCAN is not correct.
//						     -4			  = Send CAN object not correct.
//						     -5       = Size > than 8
//						     -6			  = Object number > than 2048
// Client	CanChannel	: Connection to _CanLib class for interface with 
//			BaudRate	: Select the correct baudrate
//			System		: Use of system functions.
//
// ****************************************************************************************
// Created : JE  : Wk 30/04 | Lasal V00:60s   |
// Tested  : JE  : Wk 30/05 | Lasal 01.01.009 | c-IPC - 01.01.050
// ****************************************************************************************
//
// Rev 00:02 25-07-2005 #JE
// InitBasicCanObject only negative value's is an error.
// Trace message corrected and more trace messages added.
//
// Rev 00:01 25-03-2005 #JE
// Initialisation of MaskObject and MaskFilter is corrected.
// Default all CanObject are enabled. If an other Mask ir requierd use the "CanMaskDef".
// 
//
//[#DEUTSCH]
// ****************************************************************************************
// BASIC CAN handler
// ****************************************************************************************
//
//
// ****************************************************************************************

FUNCTION VIRTUAL GLOBAL CanDriverBase::Init
Var
	i	: Dint;
	ii	: Dint;
END_VAR

First += 1;

if First= 1 then
  // Reset LSE error's
  WrongBaudrate.Write( 0);
  SetBaudrateFailed.Write( 0);
  InitBasicCanFailed.Write( 0);
  // Initialise memory
  IrqChannelOn	:= IsClientConnected( #IrqChannel);	// Test for IRQ channel
  Nr	:= -1; 											// Last recieved object number
  For i:= 0 To cMaxCanMem Do							// Clear CanMemory and Can Defenition buffer
    CanDef[i].State		:= 0;
    CanDef[i].Defined	:= 0;
    CanMem[i].ID		:= i$HDINT;
    CanMem[i].Size		:= 0;
    For ii:= 1 to 8 Do
      CanMem[i].Data[ii]	:= 0;
    End_For;
  End_For;

  // Handle baudrate
  cBaudrate	:= cBaudrate.Read();
  Case cBaudrate Of
  1000:	BaudrateCode	:= 7;
  615:	BaudrateCode	:= 0;
  500:	BaudrateCode	:= 1;
  250:	BaudrateCode	:= 2;
  125:	BaudrateCode	:= 3;
  100:	BaudrateCode	:= 4;
  50:		BaudrateCode	:= 5;
  20:		BaudrateCode	:= 6;
  0..7:	BaudrateCode	:= cBaudrate;	// If you are that smart!
  Else
    ErrCntr			+= 1;
    Status			:= -2;
    WrongBaudrate.Write( 1);
    SCB.BuildEventMsg(Mode:= TraceLog, pText:= "Non existing Baudrate value: {0}. Set to default (500kBaud).", Value1 := cBaudrate);
    SCB.BuildEventMsg(Mode:= Event01Log, pText:= "Non existing Baudrate value: %d. Set to default (500kBaud).", Value1 := cBaudrate);
    cBaudrate		:= 500;
    BaudrateCode	:= 1;
  End_Case;

  StateSetBaudrate	:= CanChannel.SetBaudrate( To_Usint( BaudrateCode));			// Set baudrate
  If StateSetBaudrate<> 0 Then
    ErrCntr			+= 1;
    Status			:= -2;
    SetBaudrateFailed.Write( 1);
    SCB.BuildEventMsg(Mode:= TraceLog, pText:= "SetBaudrate has failed, with error code: {0}.", Value1 := StateSetBaudrate);
    SCB.BuildEventMsg(Mode:= Event01Log, pText:= "SetBaudrate has failed, with error code: %d.", Value1 := StateSetBaudrate);
    If _FirstScan Then
    End_If;
  End_If;
end_if;

case HwSelector of 
CAN_conv:
  // Set CAN_IRQ object  // #JE
  if First= 1 then  // Only once!
    SCB.BuildEventMsg(Mode:= TraceLog, pText:= "HwSelector is set to 'CAN_conv' for CAN conventional.");
    InitMaskNr		:= InitMaskObj		:= 16#FFFF;		// Set old value's out of range.
  end_if;
  if _FirstScan = 1
   & InitMaskNr = 16#FFFF
   & InitMaskObj= 16#FFFF 
  then
    StateBasicCan	:= CanChannel.InitBasicCanObject( ObjNr			:= 16#000
                                                  , mask			:= 16#000
                                                  , ActionPointer	:= #CAN_IRQ_AWL()
                                                  , ThisPointer	:= This);
    if StateBasicCan< 0 then
      ErrCntr	+= 1;
      Status	:= -3;			// InitBasicCan has failed.
      InitBasicCanFailed.Write( 1);
      SCB.BuildEventMsg(Mode:= TraceLog, pText:= "InitBasicCan has failed, with error code: {0}.", Value1 := StateBasicCan);
      SCB.BuildEventMsg(Mode:= Event01Log, pText:= "InitBasicCan has failed, with error code: %d.", Value1 := StateBasicCan);
    else
      InitMaskObj	:= 0;
      InitMaskNr	:= 0;
    end_if;
  end_if;
CCAxxx:
  if First= 2 then
    SCB.BuildEventMsg(Mode:= TraceLog, pText:= "HwSelector is set to 'CCAxxx' for CCA module where init is in Init() 1.");
    InitMaskObj	:= 0;
    InitMaskNr	:= 0;
    StateBasicCan	:= CanChannel.InitBasicCanObject( ObjNr			:= 16#000
                                                  , mask			:= 16#000
                                                  , ActionPointer	:= #CAN_IRQ_AWL()
                                                  , ThisPointer	:= This);
    if StateBasicCan< 0 then
      ErrCntr	+= 1;
      Status	:= -3;			// InitBasicCan has failed.
      InitBasicCanFailed.Write( 1);
      SCB.BuildEventMsg(Mode:= TraceLog, pText:= "InitBasicCan CCAxxx has failed, with error code: {0}.", Value1 := StateBasicCan);
      SCB.BuildEventMsg(Mode:= Event01Log, pText:= "InitBasicCan CCAxxx has failed, with error code: %d.", Value1 := StateBasicCan);
    end_if;
  end_if;
end_case;

If StateBasicCan>= 0 Then
  // Generate a Trace message when in CAN test mode
  If _FirstScan Then
    #IfDef CANTestMode
      SCB.BuildEventMsg(Mode:= TraceLog, pText:= "CAN test mode enabled.");
    #EndIf
    #IfDef TestLoop1
      SCB.BuildEventMsg(Mode:= TraceLog, pText:= "Loop 1 test mode enabled.");
    #EndIf
  End_If;
End_If;

END_FUNCTION


//[#ENGLISH]
//Set CAN recieve filter for BASIC CAN mode
FUNCTION VIRTUAL GLOBAL CanDriverBase::InitMask
	VAR_INPUT
		ObjNr 	: HDINT;
		Mask 	: HDINT;
	END_VAR
	VAR_OUTPUT
		State 	: DINT;
	END_VAR

  case HwSelector of
  CAN_conv:
    if ( InitMaskObj<> ObjNr) | ( InitMaskNr<> Mask) then
      InitMaskObj	:= ObjNr;
      InitMaskNr	:= Mask;
      StateBasicCan	:= CanChannel.InitBasicCanObject( ObjNr			:= InitMaskObj$Int
                                                    , Mask			:= InitMaskNr$Int
                                                    , ActionPointer	:= #CAN_IRQ_AWL()
                                                    , ThisPointer	:= This$pVoid);
      if StateBasicCan<> 0 then
        State   := 1;
        ErrCntr	+= 1;
        Status	:= -3;	// InitBasicCan has failed.
        InitBasicCanFailed.Write( 1);
        SCB.BuildEventMsg(Mode:= TraceLog, pText:= "InitBasicCan has failed, with error code: {0}.", Value1 := StateBasicCan);
        SCB.BuildEventMsg(Mode:= Event01Log, pText:= "InitBasicCan has failed, with error code: %d.", Value1 := StateBasicCan);
      else
        State:= 0;
        InitMaskObj	:= ObjNr;
        InitMaskNr	:= Mask;
      end_if;
    else
      State := -1;      // Not a new MASK
      ErrCntr	+= 1;
      Status	:= -3;	// InitBasicCan has failed.
      InitBasicCanFailed.Write( 1);
      SCB.BuildEventMsg(Mode:= TraceLog, pText:= "InitBasicCan has no new MASK, ObNr: {0}, Mask: {1}.", Value1 := to_Dint( ObjNr), Value2 := to_Dint( Mask));
      SCB.BuildEventMsg(Mode:= Event01Log, pText:= "InitBasicCan has no new MASK, ObNr: %X, Mask: %X.", Value1 := to_Dint( ObjNr), Value2 := to_Dint( Mask));
    end_if;
  else
    State := -1;        // Not a new MASK
    ErrCntr	+= 1;
    Status	:= -3;		  // InitBasicCan has failed.
    InitBasicCanFailed.Write( 1);
    SCB.BuildEventMsg(Mode:= TraceLog, pText:= "InitBasicCan can't be ReInit in CCAxxx _IM mode.");
    SCB.BuildEventMsg(Mode:= Event01Log, pText:= "InitBasicCan can't be ReInit in CCAxxx _IM mode.");
  end_case;

END_FUNCTION


//[#ENGLISH]
// Send an CAN object.
//[>TxBuffer]Pointer to CAN struct to be send.
//[<State]0= Ok, 1=Nok.
FUNCTION VIRTUAL GLOBAL CanDriverBase::SendObject
VAR_INPUT
	TxBuffer		: ^CanObjStr;
END_VAR
VAR_OUTPUT
	State		: DINT;
END_VAR

#IfnDef TestLoop1
	State:= CanChannel.CanTxObj( ObjNr		:= TxBuffer^.ID$Int
								             , Length	:= TxBuffer^.Size$Usint
								             , Data		:= #TxBuffer^.Data$pVoid);
	If State<> 0 Then
		ErrCntr	+= 1;
		State	:= Status := -4;	// Send failed
	Else
		Command	:= To_Dint( TxBuffer^.ID);
		CobId	:= TxBuffer^.ID;
  #ifdef cLogCanSend  
      IrqChannel.Write( TxBuffer$DINT);
  #endif
	End_If;
#Else
	Loop.ID		:= TxBuffer^.ID;
	Loop.Size	:= TxBuffer^.Size;
	Loop.Data	:= TxBuffer^.Data;
	Command	:= To_Dint( TxBuffer^.ID);
	Command	:= To_UDint( TxBuffer^.ID);
	State	:= 0;
#EndIf

END_FUNCTION


//[#ENGLISH]
//Request if a message of CAN-ID is recieved.
//If not Recieved PtrToID= 0 else PtrToID= pointer to CAN data.
FUNCTION VIRTUAL GLOBAL CanDriverBase::GetObject
VAR_INPUT
	ObjNr		: HDINT;
END_VAR
VAR_OUTPUT
	PtrToID		: ^CanObjStr;
END_VAR

#IfnDef TestLoop1
	PtrToID	:= Nil;
	If ObjNr<= cMaxCanMem Then
		If CanDef[ObjNr].State> 0 Then
			PtrToID	:= #CanMem[ObjNr];
			If CanDef[ObjNr].State > 1 Then
				ErrCntr	+= 1;
				Status	:= -1000000 -To_Dint( ObjNr);			// Message lost 
			Else
				Command	:= To_Dint( ObjNr);
				CobId := To_UDint( ObjNr);
			End_If;
			CanDef[ObjNr].State	:= 0;
		End_If;
	Else
		// ObjectNr to big
		ErrCntr	+= 1;
		Status	:= -6;
	End_If;
#Else
	Command	:= To_Dint( ObjNr);
	PtrToID	:= #Loop;
#EndIf

END_FUNCTION //VIRTUAL GLOBAL CanDriverBase::GetObject


FUNCTION VIRTUAL GLOBAL CanDriverBase::CAN_IRQ_AWL
VAR_INPUT
	PiCanPtr		: ^USINT;
	RxDataPtr		: ^USINT;
	ThisP			: UDINT;
END_VAR

//ESI			:= ThisP;  					// load my own this pointer
This  := ThisP$^CanDriverBase;  // Removed AWL line for ARM compiler
CAN_IRQ( PiCanPtr, RxDataPtr, ThisP);

END_FUNCTION //VIRTUAL GLOBAL CanDriverBase::CAN_IRQ_AWL


//[#ENGLISH]
//This function is called by the CAN chip as an Interupt program
// when ever a CAN ID within the masker is recieved
FUNCTION VIRTUAL GLOBAL CanDriverBase::CAN_IRQ
VAR_INPUT
	PiCanPtr		: ^USINT;
	RxDataPtr		: ^USINT;
	ThisP			: UDINT;
END_VAR
Var
	ObjLength		: USint;
	ObjNr			: Dint;
End_Var;

ObjNr		:= To_Dint((RxDataPtr +9)^$INT);
ObjLength	:= (RxDataPtr +8)^;
NR			:= ObjNr;
Length		:= ObjLength;

IF ObjNr	<= cMaxCanMem Then
	#IfDef CANTestMode
		// In test mode clear all the not used data for read-a-billety
		Case ObjLength Of
		0:
			// No DATA so Clear all
			For i:= 1 to 8 Do
				CanMem[ObjNr].Data[i]:=	0;
			End_For;
			CanDef[ObjNr].State	+= 1;					// A message recieved Counter
			CanMem[ObjNr].Size	:= ObjLength;			// Number of byte's recieved
			If IrqChannelOn Then
				IrqChannel.Write(( #CanMem[ObjNr])$DINT);
			End_If
		1..7:	// Copy the DATA and clear the rest
			For i:= 1 to ObjLength Do
				CanMem[ObjNr].Data[i]:=	(RxDataPtr +(i -1))^;
			End_For;
			CanDef[ObjNr].State	+= 1;					// A message recieved Counter
			CanMem[ObjNr].Size	:= ObjLength;			// Number of byte's recieved
			For i:= (ObjLength+ 1) to 8 Do
				CanMem[ObjNr].Data[i]:=	0;
			End_For;
			If IrqChannelOn Then
				IrqChannel.Write(( #CanMem[ObjNr])$DINT);
			End_If
		8:		// Copy the DATA
			For i:= 1 to ObjLength Do
				CanMem[ObjNr].Data[i]:=	(RxDataPtr +(i -1))^;
			End_For;
			CanDef[ObjNr].State	+= 1;					// A message recieved Counter
			CanMem[ObjNr].Size	:= ObjLength;			// Number of byte's recieved
			If IrqChannelOn Then
				IrqChannel.Write(( #CanMem[ObjNr])$DINT);
			End_If
		Else	// Other options not posible so clear DATA and generate an ERROR
			// No DATA so Clear all
			ErrCntr	+= 1;
			Status	:= -5;
			For i:= 1 to 8 Do
				CanMem[ObjNr].Data[i]:=	0;
			End_For;
		End_Case;
	#Else
		// Not in test mode only copy the recieved data
		If ObjLength<= cMaxCanData Then
			CanMem[ObjNr].Data[1]$Dint:=	(RxDataPtr)^$Dint;
			CanMem[ObjNr].Data[5]$Dint:=	(RxDataPtr+4)^$Dint;
			CanDef[ObjNr].State	+= 1;					// A message recieved Counter
			CanMem[ObjNr].Size	:= ObjLength;			// Number of byte's recieved
			If IrqChannelOn Then
				IrqChannel.Write(( #CanMem[ObjNr])$DINT);
			End_If;
		Else
			ErrCntr	+= 1;
			CanMem[ObjNr].Data[1]$Dint:=	0;
			CanMem[ObjNr].Data[5]$Dint:=	0;
			Status	:= -5;
		End_If;
	#EndIf
Else	// ObjectNr to big
	ErrCntr	+= 1;
	Status	:= -6;
End_If;

END_FUNCTION //VIRTUAL GLOBAL CanDriverBase::CAN_IRQ


FUNCTION VIRTUAL GLOBAL CanDriverBase::Command::Read
VAR_OUTPUT
	output		: DINT;
END_VAR
	output := Status;
END_FUNCTION //VIRTUAL GLOBAL CanDriverBase::Command::Read