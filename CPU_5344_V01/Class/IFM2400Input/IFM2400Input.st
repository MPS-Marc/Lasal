//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "IFM2400Input"
	Revision           = "0.0"
	GUID               = "{1B40D836-9A20-46B5-BE27-53968F379991}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "2 ms"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(660,1200)">
	<Channels>
		<Server Name="ActualMode" GUID="{457033FF-6C29-4A10-91C6-99B804F25D65}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false" Comment="Shows the currently active mode of the device (is only valid when the ClassState is _ClassOk and the FaultFlags are on _NoFault)"/>
		<Server Name="ClassState" GUID="{13099A96-4996-42B7-A1B8-A2D755BC2B44}" Class="SDCIDevice" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false" Comment="Shows the current Status of the Hardware Class"/>
		<Server Name="ClassSvr" GUID="{43F147CB-181B-420A-BBD0-B9630516AA1D}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input1" GUID="{A112A068-14F4-454B-AB80-141BBB2C0519}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input10" GUID="{B0753E7C-F411-4D8D-9D34-2C4A3235A051}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input11" GUID="{0D180D6A-5A69-476A-AE9F-CECEA1CE8D29}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input12" GUID="{6D838F98-A58E-4C61-A44D-ED951B660D56}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input13" GUID="{E7304456-FD3D-42A0-9492-E8119298595D}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input14" GUID="{F8CE512A-1E60-4784-B1D1-2F87BBFE72CC}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input15" GUID="{BA793CA0-E8A3-46AC-9323-40C4ED720947}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input16" GUID="{7CE6DBD2-0DF2-4B5F-8604-56836A9ADB86}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input2" GUID="{A93535C8-FA7E-48AC-9C9A-01E783BDDAA1}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input3" GUID="{9DA0F444-4F54-4D01-9B96-158804FCEB2C}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input4" GUID="{1A08BAEE-74DF-4F3D-966C-07132F15278F}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input5" GUID="{BCCAD889-E3AD-445F-B5E3-210E729F5944}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input6" GUID="{D8F76241-05CA-4AAD-BE83-06DE4A278D20}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input7" GUID="{84842031-CFA8-49A7-B750-416C6BCE4E87}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input8" GUID="{3DDC205F-0563-436D-BC74-2304D9F0000D}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Input9" GUID="{36E1B91B-E583-4B5D-A742-122CDA40F844}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="SDCIClass" Required="true" Internal="true"/>
		<Client Name="SdciIn" Required="true" Internal="false"/>
	</Channels>
	<Network Name="IFM2400Input">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "SDCIClass"
				GUID       = "{2E6AEBB7-8381-452B-BC56-3FB38CC6BD00}"
				Class      = "SDCIClassIFM_AL2401"
				Position   = "(150,120)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="ActualMode"/>
					<Server Name="ClassState"/>
					<Server Name="DeviceID"/>
					<Server Name="DirectInput"/>
					<Server Name="FaultFlags"/>
					<Server Name="Input"/>
					<Server Name="MinCycleTime"/>
					<Server Name="NbrOfEventsAvailable"/>
					<Server Name="Output"/>
					<Server Name="PortStateBits"/>
					<Server Name="VendorID"/>
					<Client Name="ReadPdoSize" Value="0"/>
					<Client Name="Required" Value="0"/>
					<Client Name="SdciIn"/>
					<Client Name="SkipEndianSwap" Value="0"/>
					<Client Name="StartUpMode" Value="_SDCI"/>
					<Client Name="WritePdoSize" Value="0"/>
				</Channels>
				<AdditionalData>
					<Entry Name="DeviceType" Value="SDCIClassIFM_AL2401"/>
				</AdditionalData>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.SDCIClass" Destination="SDCIClass.ClassState"/>
			<Connection Source="SDCIClass.SdciIn" Destination="this.SdciIn" Vertices="(150,210),(38,210),"/>
			<Connection Source="this.ClassState" Destination="SDCIClass.ClassState" Vertices="(990,270),(818,210),"/>
			<Connection Source="this.ActualMode" Destination="SDCIClass.ActualMode" Vertices="(990,330),(818,450),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
IFM2400Input : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	ClassState 	: SvrChCmd_t_e_VaranErrors;
	ActualMode 	: SvrCh_t_SDCIPortMode_PTofCls_SdiasSDCIMaster;
	Input1 	: SvrCh_DINT;
	Input2 	: SvrCh_DINT;
	Input3 	: SvrCh_DINT;
	Input4 	: SvrCh_DINT;
	Input5 	: SvrCh_DINT;
	Input6 	: SvrCh_DINT;
	Input7 	: SvrCh_DINT;
	Input8 	: SvrCh_DINT;
	Input9 	: SvrCh_DINT;
	Input10 	: SvrCh_DINT;
	Input11 	: SvrCh_DINT;
	Input12 	: SvrCh_DINT;
	Input13 	: SvrCh_DINT;
	Input14 	: SvrCh_DINT;
	Input15 	: SvrCh_DINT;
	Input16 	: SvrCh_DINT;
  //Clients:
	SdciIn 	: CltChCmd_DINT;
	SDCIClass 	: CltChCmd_SDCIClassIFM_AL2401;
  //Variables:
		bdInputs : BDINT
		[
		];

  //Functions:
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL ClassState::Read
		VAR_OUTPUT
			output (EAX) 	: t_e_VaranErrors;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL ActualMode::Read
		VAR_OUTPUT
			output (EAX) 	: SdiasSDCIMaster::t_SDCIPortMode;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma using SDCIClassIFM_AL2401


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB IFM2400Input::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_IFM2400INPUT
0$UINT, 0$UINT, (SIZEOF(::IFM2400Input))$UINT, 
19$UINT, 2$UINT, 0$UINT, 
TO_UDINT(3349218532), "IFM2400Input", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::IFM2400Input.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::IFM2400Input.ClassState.pMeth)$UINT, _CH_SVR_OBJ$UINT, 2#0000000000000000$UINT, TO_UDINT(1096059024), "ClassState", 
(::IFM2400Input.ActualMode.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(208673156), "ActualMode", 
(::IFM2400Input.Input1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1344628668), "Input1", 
(::IFM2400Input.Input2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3375117830), "Input2", 
(::IFM2400Input.Input3.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3190490768), "Input3", 
(::IFM2400Input.Input4.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(542085939), "Input4", 
(::IFM2400Input.Input5.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1464378277), "Input5", 
(::IFM2400Input.Input6.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3460428319), "Input6", 
(::IFM2400Input.Input7.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3108422281), "Input7", 
(::IFM2400Input.Input8.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(704241432), "Input8", 
(::IFM2400Input.Input9.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1593765774), "Input9", 
(::IFM2400Input.Input10.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(912000481), "Input10", 
(::IFM2400Input.Input11.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1096496503), "Input11", 
(::IFM2400Input.Input12.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3629278413), "Input12", 
(::IFM2400Input.Input13.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2941604955), "Input13", 
(::IFM2400Input.Input14.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(825344504), "Input14", 
(::IFM2400Input.Input15.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1178005870), "Input15", 
(::IFM2400Input.Input16.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3745489108), "Input16", 
//Clients:
(::IFM2400Input.SdciIn.pCh)$UINT, _CH_CLT_CMD$UINT, 2#0000000000000110$UINT, TO_UDINT(3500080180), "SdciIn", 
(::IFM2400Input.SDCIClass.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2173222264), "SDCIClass", TO_UDINT(394119762), "SDCIClassIFM_AL2401", 0$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_IFM2400Input 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_IFM2400Input] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION IFM2400Input::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_IFM2400Input, pCmd := #vmt.CmdTable);
	vmt.CmdTable.CyWork		:= #CyWork();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, ClassState.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Read		:= #ClassState::Read();
	ClassState.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassState.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	ActualMode.pMeth			:= StoreMethod( #ActualMode::Read(), #M_NO_F() );
	IF ActualMode.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL IFM2400Input::CyWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR

  //read from io link from ifm splitterbox
  bdInputs := SDCIClass.GetReadPdoDWord(ReadOffset:=0);
  // if connection is ok
  if SDCIClass.ClassState = _ClassOk then
    // send inputs to servers
    Input1 := bdInputs.25;   // X1.0 - I1  
    Input2 := bdInputs.17;   // X1.0 - I2
    Input3 := bdInputs.26;   // X1.1 - I1
    Input4 := bdInputs.18;   // X1.1 - I2
    Input5 := bdInputs.27;   // X1.2 - I1
    Input6 := bdInputs.19;   // X1.2 - I2
    Input7 := bdInputs.28;   // X1.3 - I1
    Input8 := bdInputs.20;   // X1.3 - I2
    
    Input9 := bdInputs.29;   // X1.4 - I1
    Input10 := bdInputs.21; // X1.4 - I2
    Input11 := bdInputs.30; // X1.5 - I1
    Input12 := bdInputs.22; // X1.5 - I2
    Input13 := bdInputs.31; // X1.6 - I1
    Input14 := bdInputs.23; // X1.6 - I2
    Input15 := bdInputs.32; // X1.7 - I1
    Input16 := bdInputs.24; // X1.7 - I2
  else
    // if no hardware, no inputs
    Input1 := 0;
    Input2 := 0;
    Input3 := 0;
    Input4 := 0;
    Input5 := 0;
    Input6 := 0;
    Input7 := 0;
    Input8 := 0;
    Input9 := 0;
    Input10:= 0;
    Input11 := 0;
    Input12 := 0;
    Input13 := 0;
    Input14 := 0;
    Input15 := 0;
    Input16 := 0;    
  end_if;

	state := READY;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL IFM2400Input::ClassState::Read
	VAR_OUTPUT
		output (EAX) 	: t_e_VaranErrors;
	END_VAR

	ClassState := SDCIClass.ClassState.Read();
	output := ClassState;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL IFM2400Input::ActualMode::Read
	VAR_OUTPUT
		output (EAX) 	: SdiasSDCIMaster::t_SDCIPortMode;
	END_VAR

	ActualMode := SDCIClass.ActualMode.Read();
	output := ActualMode;

END_FUNCTION