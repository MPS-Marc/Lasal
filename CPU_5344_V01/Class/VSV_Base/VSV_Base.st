//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)

//{{LSL_DEFINES
#define VSV046_DEVICE_ID  1082

//}}LSL_DEFINES

//{{LSL_DECLARATION

(*!
<Class
	Name               = "VSV_Base"
	Revision           = "1.18"
	GUID               = "{22FD11EB-F77E-4F27-AA66-D5FB7F6F7FFE}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\Tool.ico"
	SharedCommandTable = "true"
	Objectsize         = "(556,120)">
	<Channels>
		<Server Name="SupplyVaranOut_0" GUID="{81E9150B-3124-4154-AB1B-0015B62A7527}" Visualized="true" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false" Comment="1 .. switch on 24V supply for VaranOut 0&#13;&#10;0 .. switch off 24V supply for VaranOut 0"/>
		<Server Name="SupplyVaranOut_1" GUID="{EC0ECB8D-6993-4925-806F-99065E43796B}" Visualized="true" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false" Comment="1 .. switch on 24V supply for VaranOut 1&#13;&#10;0 .. switch off 24V supply for VaranOut 1"/>
		<Server Name="SupplyVaranOut_2" GUID="{65FAF63F-49F0-4145-A665-930A5968CCFF}" Visualized="true" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false" Comment="1 .. switch on 24V supply for VaranOut 2&#13;&#10;0 .. switch off 24V supply for VaranOut 2"/>
		<Server Name="SupplyVaranOut_3" GUID="{59DB054A-39F0-4D23-A5F1-435B209F6BB0}" Visualized="true" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false" Comment="1 .. switch on 24V supply for VaranOut 3&#13;&#10;0 .. switch off 24V supply for VaranOut 3"/>
		<Server Name="SupplyVaranOut_4" GUID="{EE423C8F-65E0-4FC9-8F29-F8385C912FB9}" Visualized="true" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false" Comment="1 .. switch on 24V supply for VaranOut 4&#13;&#10;0 .. switch off 24V supply for VaranOut 4"/>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek" Author="RamAnd"/>
		<Dokumentation Revision="1.18" Date="09.12.2019" Author="LanSte" Company="Sigmatek" Description="Added Server ProtocolVersion. InterframeGap is included in the resource calculation."/>
		<Dokumentation Revision="1.17" Date="12.01.2018" Author="LanSte" Company="Sigmatek" Description="Added Call to base class for disable device in interrupt."/>
		<Dokumentation Revision="1.16" Date="06.02.2017" Author="PieSte" Company="Sigmatek" Description="Changed &quot;Online&quot; server behavior to set online first if cyclic data is valid due to SA35740."/>
		<Dokumentation Revision="1.15" Date="10.05.2016" Author="RamAnd" Company="Sigmatek" Description="Suppressed warning that would occur with target ARM on compiler version 30 or higher."/>
		<Dokumentation Revision="1.14" Date="24.03.2015" Author="EisMic" Company="Sigmatek" Description="Check pointer p_NodeInfo for validity in method GetRetryTimeout due to access exception error if method Varan_HWDisconnect is called and no hardware was available."/>
		<Dokumentation Revision="1.13" Date="25.07.2014" Author="LanSte" Company="Sigmatek" Description="Added Support for reading hardware diagnose and hardwaretree entry."/>
		<Dokumentation Revision="1.12" Date="06.05.2014" Author="LanSte" Company="Sigmatek" Description="Minimized the interface request via CILGET by useing private pointers to reduce time in init."/>
		<Dokumentation Revision="1.11" Date="07.04.2014" Author="EisMic" Company="Sigmatek" Description="Disabled all DOs which are installed, in the methods Varan_HWInterrupt and Varan_HwDisconnect."/>
		<Dokumentation Revision="1.10" Date="05.12.2013" Author="LanSte" Company="Sigmatek" Description="Added Payload Support"/>
		<Dokumentation Revision="1.6" Date="18.07.2012" Author="ObeChr" Company="Sigmatek" Description="Implemented time measurement for internal tests in methods UpdateRt, UpdateRtPostScan and UpdateCy"/>
		<Dokumentation Revision="1.5" Date="14.10.2011" Author="RamAnd" Company="Sigmatek" Description="RetryCounter functionality has been added"/>
		<Dokumentation Revision="1.4" Date="04.01.2011" Author="BleErn" Company="Sigmatek" Description="Added Client Transparent that allows to disable a VARAN-HW-Class"/>
		<Dokumentation Revision="1.3" Date="30.03.2011" Author="ZoePat" Company="Sigmatek" Description="Switchable power supply didn&apos;t work if the server init value was set to 1."/>
		<Dokumentation Revision="1.2" Date="15.10.2010" Author="BleErn" Company="Sigmatek" Description="Removed Client UseRtPostScan"/>
		<Dokumentation Revision="1.1" Date="11.03.2010" Author="RamAnd" Company="Sigmatek" Description="Added serial number validation"/>
		<Dokumentation Revision="1.0" Date="15.04.2009" Author="RamAnd" Company="Sigmatek" Description="Created this class as base for all VSV-Classes (necessary for supply of VaranOuts of VSV046)"/>
	</RevDoku>
	<Network Name="VSV_Base">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{969B6B0F-9934-4E26-9748-17CB9011CF04}"
				Class      = "Varan_Base"
				Position   = "(218,120)"
				Visualized = "false">
				<Channels>
					<Server Name="ConnectCounter"/>
					<Server Name="DeviceAddress"/>
					<Server Name="DeviceID"/>
					<Server Name="DiagControl"/>
					<Server Name="FaultCounter"/>
					<Server Name="Online"/>
					<Server Name="ProtocolVersion"/>
					<Server Name="Release"/>
					<Server Name="RetryCounter"/>
					<Server Name="RXLost"/>
					<Server Name="SerialNo"/>
					<Server Name="State"/>
					<Server Name="TXLost"/>
					<Server Name="ValidateSerNo"/>
					<Server Name="VendorID"/>
					<Client Name="Required" Value="1"/>
					<Client Name="SerNoValidation"/>
					<Client Name="TimeBase" Value="0"/>
					<Client Name="TimeBaseOffset" Value="0"/>
					<Client Name="To_MultiTask"/>
					<Client Name="To_StdLib"/>
					<Client Name="Transparent"/>
					<Client Name="UserAction"/>
					<Client Name="VaranIn"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.State" Destination="_base.State" Vertices="(874,210),(702,210),"/>
			<Connection Source="this.Online" Destination="_base.Online" Vertices="(874,270),(702,270),"/>
			<Connection Source="this.Release" Destination="_base.Release" Vertices="(874,330),(702,330),"/>
			<Connection Source="this.DeviceAddress" Destination="_base.DeviceAddress" Vertices="(874,390),(702,390),"/>
			<Connection Source="this.VendorID" Destination="_base.VendorID" Vertices="(874,450),(702,450),"/>
			<Connection Source="this.DeviceID" Destination="_base.DeviceID" Vertices="(874,510),(702,510),"/>
			<Connection Source="this.RetryCounter" Destination="_base.RetryCounter" Vertices="(874,630),(702,630),"/>
			<Connection Source="_base.VaranIn" Destination="this.VaranIn" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.Required" Destination="this.Required" Vertices="(218,270),(38,270),"/>
			<Connection Source="_base.UserAction" Destination="this.UserAction" Vertices="(218,330),(38,330),"/>
			<Connection Source="this.SerialNo" Destination="_base.SerialNo" Vertices="(874,570),(702,570),"/>
			<Connection Source="this.ValidateSerNo" Destination="_base.ValidateSerNo" Vertices="(874,690),(702,690),"/>
			<Connection Source="_base.SerNoValidation" Destination="this.SerNoValidation" Vertices="(218,390),(38,390),"/>
			<Connection Source="_base.Transparent" Destination="this.Transparent" Vertices="(218,450),(38,450),"/>
			<Connection Source="this.ProtocolVersion" Destination="_base.ProtocolVersion" Vertices="(874,750),(702,1050),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using Varan_Base

VSV_Base : CLASS
: Varan_Base
	TYPE
#pragma pack(push, 1)
	  t_DO_VSV_SwitchableOutputs : STRUCT
	    p_Handle : ^LSL_VARANFRAME;
	    p_DOSettings : ^t_VaranDOSettingsWr;
	    p_Data : ^USINT;
	    us_OldRetryCounter : USINT;
	    b_DOIsRunning : t_SingleRunState;
	  END_STRUCT;
#pragma pack(pop)
	END_TYPE
  //Servers:
	SupplyVaranOut_0 	: SvrCh_DINT;
	SupplyVaranOut_1 	: SvrCh_DINT;
	SupplyVaranOut_2 	: SvrCh_DINT;
	SupplyVaranOut_3 	: SvrCh_DINT;
	SupplyVaranOut_4 	: SvrCh_DINT;
  //Clients:
  //Variables:
		us_Firstscan 	: USINT;
		sd_RealtimeIP_PortNr 	: DINT;
		b_useSwitchableSupply 	: BOOL;
		s_DO_SwitchableOutput 	: t_DO_VSV_SwitchableOutputs;
		us_OutputByte : BSINT
		[
		];

		us_OutputByteOld : BSINT
		[
		];

  //Functions:
				//! <Function Comment="[#ENGLISH]&#13;&#10;=================================================================================================&#13;&#10;Init for Varan Client&#13;&#10;=================================================================================================&#13;&#10;[server] State    :W  :state of class&#13;&#10;[client] Required   :R  :is class required for varan or not&#13;&#10;[members] p_VaranPosition  :R/W :node string of varan module&#13;&#10;   ud_VaranManagerNr :W  :number of varan manager&#13;&#10;   p_Varan    :W  :pointer to varan OS - Functions&#13;&#10;[locals] sd_retval   :W/R :return value of called functions&#13;&#10;" Name="Init"/>
	FUNCTION VIRTUAL GLOBAL Init;
				//! <Function Comment="[#ENGLISH]&#13;&#10;=================================================================================================&#13;&#10;Cy - Funktion of Varan class ( called bei VaranMaster )&#13;&#10;=================================================================================================&#13;&#10;" Name="UpdateCy"/>
	FUNCTION VIRTUAL GLOBAL UpdateCy;
				//! <Function Comment="[#ENGLISH]&#13;&#10;=================================================================================================&#13;&#10;Function is called if a varan module is connected&#13;&#10;=================================================================================================&#13;&#10;[server] Online  :W  :set if class is ok and all data is valid&#13;&#10;   State  :W  :state of class&#13;&#10;" Name="Varan_HwConnect"/>
	FUNCTION AWL VIRTUAL GLOBAL Varan_HwConnect
		VAR_INPUT
			ud_data 	: UDINT;			//! <Variable Comment="data of callback function" Name="Varan_HwConnect.ud_data"/>
		END_VAR
		VAR_OUTPUT
			sd_retval 	: DINT;			//! <Variable Comment="return value of OS" Name="Varan_HwConnect.sd_retval"/>
		END_VAR;
				//! <Function Comment="Function is called if a varan interrupt occures" Name="Varan_HwInterrupt"/>
	FUNCTION VIRTUAL GLOBAL Varan_HwInterrupt
		VAR_INPUT
			ud_reason 	: UDINT;
			ud_data 	: ^t_CallBackInterrupt;
		END_VAR
		VAR_OUTPUT
			sd_retval 	: DINT;
		END_VAR;
				//! <Function Comment="Function is called if a varan module is disconnected&#13;&#10;" Name="Varan_HwDisconnect"/>
	FUNCTION VIRTUAL GLOBAL Varan_HwDisconnect
		VAR_INPUT
			ud_data 	: UDINT;
		END_VAR
		VAR_OUTPUT
			sd_retval 	: DINT;
		END_VAR;
				//! <Function Comment="Function to set all Data Objects off" Name="SetDOsOff"/>
	FUNCTION VIRTUAL GLOBAL SetDOsOff;
				//! <Function Comment="Function to update module retry counter" Name="UpdateRetryCounter"/>
	FUNCTION VIRTUAL GLOBAL UpdateRetryCounter;
	
	FUNCTION WriteSupplySettings;
	
	FUNCTION VIRTUAL GLOBAL SupplyVaranOut_0::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SupplyVaranOut_1::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SupplyVaranOut_2::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SupplyVaranOut_3::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SupplyVaranOut_4::Write
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


FUNCTION GLOBAL TAB VSV_Base::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_VSV_BASE
1$UINT, 18$UINT, (SIZEOF(::VSV_Base))$UINT, 
5$UINT, 0$UINT, 0$UINT, 
TO_UDINT(1403496763), "VSV_Base", //Class
TO_UDINT(862125188), "Varan_Base", 2$UINT, 18$UINT, //Baseclass
//Servers:
(::VSV_Base.SupplyVaranOut_0.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1138642740), "SupplyVaranOut_0", 
(::VSV_Base.SupplyVaranOut_1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(886669218), "SupplyVaranOut_1", 
(::VSV_Base.SupplyVaranOut_2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2916101656), "SupplyVaranOut_2", 
(::VSV_Base.SupplyVaranOut_3.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3671531150), "SupplyVaranOut_3", 
(::VSV_Base.SupplyVaranOut_4.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1152617261), "SupplyVaranOut_4", 
//Clients:
END_FUNCTION


#define USER_CNT_VSV_Base 48

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_VSV_Base] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION VSV_Base::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= Varan_Base::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= Varan_Base::State.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, Varan_Base::State.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_VSV_Base;
	vmt.CmdTable.Init		:= #Init();
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #UpdateCy();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[5]		:= #Varan_HwConnect();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[7]		:= #Varan_HwInterrupt();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[8]		:= #Varan_HwDisconnect();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[16]		:= #SetDOsOff();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[20]		:= #UpdateRetryCounter();

#pragma warning (default : 74)
	Varan_Base::State.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Varan_Base::State.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SupplyVaranOut_0.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SupplyVaranOut_0::Write() );
	IF SupplyVaranOut_0.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SupplyVaranOut_1.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SupplyVaranOut_1::Write() );
	IF SupplyVaranOut_1.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SupplyVaranOut_2.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SupplyVaranOut_2::Write() );
	IF SupplyVaranOut_2.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SupplyVaranOut_3.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SupplyVaranOut_3::Write() );
	IF SupplyVaranOut_3.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SupplyVaranOut_4.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SupplyVaranOut_4::Write() );
	IF SupplyVaranOut_4.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION

FUNCTION VIRTUAL GLOBAL VSV_Base::Init
  VAR
    sd_retval	: DINT;
  END_VAR

#ifdef IsTransparent_IS_AVAILABLE
  IF IsTransparent() THEN
    return;
  END_IF;
#endif

	//in first Initphase
	if ( us_Firstscan = 0 ) then
		us_Firstscan += 1;			//set init as executed

		//---------------------------------------------------------------------------------------------------------
		//init the base class
		Varan_Base::Init();

		//if an error occurs in base class return
		if ( State <> _NotInitialized ) then
			return;
		end_if;

    // set realtime-port-nr to a invalid value
    sd_RealtimeIP_PortNr := -1;

    // ensure that we have only 0 or 1 on the supply servers
    if SupplyVaranOut_0 <> 0 then
      SupplyVaranOut_0 := 1;
      us_OutputByte := us_OutputByte OR 2#00000001;
    end_if;
    if SupplyVaranOut_1 <> 0 then
      SupplyVaranOut_1 := 1;
      us_OutputByte := us_OutputByte OR 2#00000010;
    end_if;
    if SupplyVaranOut_2 <> 0 then
      SupplyVaranOut_2 := 1;
      us_OutputByte := us_OutputByte OR 2#00000100;
    end_if;
    if SupplyVaranOut_3 <> 0 then
      SupplyVaranOut_3 := 1;
      us_OutputByte := us_OutputByte OR 2#00001000;
    end_if;
    if SupplyVaranOut_4 <> 0 then
      SupplyVaranOut_4 := 1;
      us_OutputByte := us_OutputByte OR 2#00010000;
    end_if;

    if b_useSwitchableSupply then
      //install CY - Varantask (check for change of supply settings)
      VaranIn.AddVaranTask( ud_dol_type	:= VARAN_DOL_ASY
                          , p_this		:= this);

     
      if b_PayloadSupport then       
        sd_retval := AddWrPayloadDO(  ud_dol_type     := VARAN_DOL_ASY
                                    , p_ud_handle     := ( #s_DO_SwitchableOutput.p_Handle)$^UDINT
                                    , ud_offset_write := 1                                
                                    , ud_length_write := SIZEOF( USINT )
                                    , p_ud_data_write := ( #s_DO_SwitchableOutput.p_Data)$^UDINT
                                    , ud_type         := VM_MEMORY_ACCESS);
        
             
      else
        VaranIn.AddWrDO( p_us_position_info := p_VaranPosition
                       , ud_dol_type        := VARAN_DOL_ASY
                       , p_ud_handle        := #s_DO_SwitchableOutput.p_Handle$UDINT
                       , ud_address         := 0
                       , ud_length          := 1
                       , p_ud_data          := #s_DO_SwitchableOutput.p_Data$UDINT
                       , ud_type            := VM_MEMORY_ACCESS );
                       
        s_DO_SwitchableOutput.p_DOSettings := s_DO_SwitchableOutput.p_Data - VM_DO_OFFSET_WR;
      end_if;
    end_if;
		
	elsif ( us_Firstscan = 6 ) then	
		//-----------------------------------------------------------------------------------------------
		//call connect hardware function
		sd_retval := Varan_CallBack	( ud_reason	:= VARANMANAGER_CB_CONNECT
                                , ud_data	:= 0
                                );

		//produce Varan Error if module not ok
		if ( sd_retval <> VARANMANAGER_OK ) then

			VaranIn.SetVaranError( p_Node := p_VaranPosition );
      
		end_if;
    
	end_if;
  
  us_Firstscan += 1;			//set init as executed
  
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::Varan_HwConnect
	VAR_INPUT
		ud_data 	: UDINT;
	END_VAR
	VAR_OUTPUT
		sd_retval 	: DINT;
	END_VAR

	//------------------------------------------------------------------------------------------------
	//get node information
	sd_retval := GetNodeInfo();

	//if an error occurs in base class return
	if ( sd_retval <> VARANMANAGER_OK ) then
		return;
	end_if;

	To_MultiTask.TASKDELAY( timeout0 := 15ms );	

  if b_useSwitchableSupply & 
    b_PayloadSupport = false then
    
    s_DO_SwitchableOutput.p_DOSettings^.ud_Address := DeviceAddress + 1;
	end_if;
  
	//------------------------------------------------------------------------------------------------
	//class ok
	Online 		:= 1;
	State 		:= _ClassOk;
	sd_retval 	:= VARANMANAGER_OK;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::SupplyVaranOut_0::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input & b_useSwitchableSupply & (sd_RealtimeIP_PortNr <> 0) then
    result  := 1;
    SupplyVaranOut_0 := 1;
    us_OutputByte := us_OutputByte OR 2#00000001;
  else
    result  := 0;
    SupplyVaranOut_0 := 0;
    us_OutputByte := us_OutputByte AND 2#11111110;
  end_if;
    
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::SupplyVaranOut_1::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input & b_useSwitchableSupply & (sd_RealtimeIP_PortNr <> 1) then
    result  := 1;
    SupplyVaranOut_1 := 1;
    us_OutputByte := us_OutputByte OR 2#00000010;
  else
    result  := 0;
    SupplyVaranOut_1 := 0;
    us_OutputByte := us_OutputByte AND 2#11111101;
  end_if;
    
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::SupplyVaranOut_2::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input & b_useSwitchableSupply & (sd_RealtimeIP_PortNr <> 2) then
    result  := 1;
    SupplyVaranOut_2 := 1;
    us_OutputByte := us_OutputByte OR 2#00000100;
  else
    result  := 0;
    SupplyVaranOut_2 := 0;
    us_OutputByte := us_OutputByte AND 2#011111011;
  end_if;
    
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::SupplyVaranOut_3::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input & b_useSwitchableSupply & (sd_RealtimeIP_PortNr <> 3) then
    result  := 1;
    SupplyVaranOut_3 := 1;
    us_OutputByte := us_OutputByte OR 2#00001000;
  else
    result  := 0;
    SupplyVaranOut_3 := 0;
    us_OutputByte := us_OutputByte AND 2#11110111;
  end_if;
    
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::SupplyVaranOut_4::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input & b_useSwitchableSupply & (sd_RealtimeIP_PortNr <> 4) then
    result  := 1;
    SupplyVaranOut_4 := 1;
    us_OutputByte := us_OutputByte OR 2#00010000;
  else
    result  := 0;
    SupplyVaranOut_4 := 0;
    us_OutputByte := us_OutputByte AND 2#11101111;
  end_if;
    
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::UpdateCy

//=================================================================================================
#ifdef VM_CLASS_TIME_MEASUREMENT
	StartTimeMeasurement(VARANTIME_CY);
#endif
//=================================================================================================

   // Call base class for disable Device
  Varan_Base::UpdateCy();

  if ( State = _ClassOk ) & us_OutputByte <> us_OutputByteOld & (Release >= 16#10) then
    
    s_DO_SwitchableOutput.p_Data^ := us_OutputByte;
    us_OutputByteOld :=  us_OutputByte;
    if b_PayloadSupport then
      s_DO_SwitchableOutput.b_DOIsRunning.StartRequest := TRUE;
    else
      ResetDataObject( p_handleDO := s_DO_SwitchableOutput.p_Handle
                     , us_state   := VARAN_DO_SINGLE_RUN
                     , ud_bytes   := 1 );
    end_if;
  end_if;


  if b_PayloadSupport then
      
    case s_DO_SwitchableOutput.b_DOIsRunning of
    
      SR_STATE_ENABLE_ME :  // DO is not running and start request is set ----------------------------------------
        EnableDO(ud_DOHandle := s_DO_SwitchableOutput.p_Handle$UDINT);        
        s_DO_SwitchableOutput.b_DOIsRunning  := SR_STATE_DISABLE_ME;
        
      SR_STATE_DISABLE_ME : // DO is running and start request is not set ----------------------------------------
        DisableDO(ud_DOHandle:= s_DO_SwitchableOutput.p_Handle$UDINT);
        s_DO_SwitchableOutput.b_DOIsRunning := SR_STATE_NOTHING;
        
      SR_STATE_LEAVE_ME_ENABLED : // DO is running and another start request is set ------------------------------
        s_DO_SwitchableOutput.b_DOIsRunning := SR_STATE_DISABLE_ME;
        
    end_case;
  end_if;
//=================================================================================================
#ifdef VM_CLASS_TIME_MEASUREMENT
	StopTimeMeasurement(VARANTIME_CY);
#endif
//=================================================================================================

END_FUNCTION


FUNCTION VSV_Base::WriteSupplySettings
  VAR
		sd_retval 	  : DINT;
  END_VAR

  // if FPGA supports it, set PowerSupply settings via Direct Access
  if (Release >= 16#10) then  
  
    // write with direct access
    if b_PayloadSupport then
      sd_retval := MULTI_VARAN_iExecuteDirectAccess(  hNodeHandle := ud_HandleModule
                                                    , udCommand   := VARAN_CMD_MEMORY_WRITE
                                                    , udOffset    := 1
                                                    , udLength    := sizeof(USINT)
                                                    , pusData     := ( #us_OutputByte )$^USINT
                                                    , pudErrorInfo:= NIL);  
                                                
    
    else		
      sd_retval := VARAN_iWriteMemoryDA(  uiManager		:= ud_VaranManagerNr
                                        , uiAddress		:= DeviceAddress + 1 // offset for 24V output enable register
                                        , uiLen			:= 1
                                        , uiRetryTimeout:= GetRetryTimeout( ud_bytes := 1 )
                                        , pvData		     := #us_OutputByte
                                        , puiError		:= NIL
                                        );
    end_if;
    us_OutputByteOld := us_OutputByte;

  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::UpdateRetryCounter
  VAR
    TempRetryCounter : USINT;
  END_VAR

  if s_DO_SwitchableOutput.p_Handle then
    tempRetryCounter := GetRetryCounter(ud_DOHandle := s_DO_SwitchableOutput.p_Handle$UDINT);
    if ( tempRetryCounter <> s_DO_SwitchableOutput.us_OldRetryCounter ) then
      RetryCounter += TO_USINT( tempRetryCounter - s_DO_SwitchableOutput.us_OldRetryCounter );
      s_DO_SwitchableOutput.us_OldRetryCounter := tempRetryCounter;
    end_if;
  end_if;  

END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::SetDOsOff

  DisableDO(ud_DOHandle := s_DO_SwitchableOutput.p_Handle$UDINT);
  s_DO_SwitchableOutput.b_DOIsRunning := 0;
  
END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::Varan_HwInterrupt
	VAR_INPUT
		ud_reason 	: UDINT;
		ud_data 	: ^t_CallBackInterrupt;
	END_VAR
	VAR_OUTPUT
		sd_retval 	: DINT;
	END_VAR
  
  SetDOsOff();

  sd_retval := Varan_Base::Varan_HwInterrupt(ud_reason, ud_data);

END_FUNCTION


FUNCTION VIRTUAL GLOBAL VSV_Base::Varan_HwDisconnect
	VAR_INPUT
		ud_data 	: UDINT;
	END_VAR
	VAR_OUTPUT
		sd_retval 	: DINT;
	END_VAR
  
  SetDOsOff();
  
  sd_retval := Varan_Base::Varan_HwDisconnect(ud_data);

END_FUNCTION
