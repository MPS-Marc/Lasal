//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)

//{{LSL_DEFINES
#define DEVICE_ID_TO161 1004

#define TO161_ADDR_CYC_WRITE  0
#define TO161_ADDR_CYC_READ   2

#define TO161_WRITE_LENGTH    2
#define TO161_READ_LENGTH     2
//}}LSL_DEFINES

//{{LSL_DECLARATION

(*!
<Class
	Name               = "TO161"
	Revision           = "1.34"
	GUID               = "{78AAE409-7501-4931-B9D4-19A72CDBDC7E}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\s-dias.ico"
	SharedCommandTable = "true"
	Objectsize         = "(494,120)"
	Comment            = "This hardware class is used to control the TO161 hardware module with 16 digital outputs.">
	<Channels>
		<Server Name="Output1" GUID="{A535B172-6509-4D2F-9403-6D76A25EBAB2}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 1"/>
		<Server Name="Output10" GUID="{028D539C-1D75-49BE-B037-9FCCEACAA58C}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 10"/>
		<Server Name="Output11" GUID="{932CF279-7BB4-425A-8212-77CD997D4CCF}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 11"/>
		<Server Name="Output12" GUID="{F24CCE95-8628-4AAE-A139-D8D11C1760D8}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 12"/>
		<Server Name="Output13" GUID="{AEAA2D74-3B1D-4DF4-A274-A848D4786748}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 13"/>
		<Server Name="Output14" GUID="{4447E8E2-E782-44D8-8236-6E1C078E0530}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 14"/>
		<Server Name="Output15" GUID="{3DD40430-CD20-422C-BC22-94684E5D4185}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 15"/>
		<Server Name="Output16" GUID="{FDF5B915-2CEE-40EA-B924-E1DAF42E6463}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 16"/>
		<Server Name="Output2" GUID="{08A7B7BF-7444-4F00-A42F-C3B91E1FC977}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 2"/>
		<Server Name="Output3" GUID="{97021B80-0DEA-4A73-9752-96B36B6B2B6D}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 3"/>
		<Server Name="Output4" GUID="{B83DA051-C514-415F-B414-2E7A4C67F52A}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 4"/>
		<Server Name="Output5" GUID="{F39C94BF-9881-432D-B9C9-0BE16D529698}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 5"/>
		<Server Name="Output6" GUID="{419DED21-ECDC-4290-A3E3-F214FE742F33}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 6"/>
		<Server Name="Output7" GUID="{0151FAA5-AB72-450E-9D25-DD374BD122BE}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 7"/>
		<Server Name="Output8" GUID="{629ED003-1CE7-406F-A243-E66325CD076A}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 8"/>
		<Server Name="Output9" GUID="{172ECE95-D381-46E2-B205-8C0FCFCF1C98}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Digital Output 9"/>
		<Server Name="OutputWord" GUID="{7FDBD7FF-D323-44BD-AAD4-1DC8C7A1023C}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="The digital outputs are displayed in this server in a 16-bit field"/>
		<Server Name="VoltageOkBank1" GUID="{382154C9-20B2-4EFF-91A5-1800888DAFAD}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false" Comment="Supply voltage ok&#13;&#10;+24V1 (Digital Out 1-8)"/>
		<Server Name="VoltageOkBank2" GUID="{F06CD6F6-6DF3-4040-860E-94B0350E38FC}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false" Comment="Supply voltage ok&#13;&#10;+24V2 (Digital Out 9-16)"/>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek" Author="BeiWol"/>
		<Dokumentation Revision="1.34" Date="12.08.2019" Author="LazJos" Company="Sigmatek" Description="Added support for HWAlarms."/>
		<Dokumentation Revision="1.33" Date="09.01.2019" Author="FurDom" Company="Sigmatek" Description="Added function for Spi Write in SdiasBase class."/>
		<Dokumentation Revision="1.32" Date="08.06.2018" Author="RamAnd" Company="Sigmatek" Description="LASAL Hardware Description (.lhd) file has been updated."/>
		<Dokumentation Revision="1.31" Date="16.05.2017" Author="RamAnd" Company="Sigmatek" Description="When adding an SDO (i.e. via ReadSPIData) from background priority it was possible that the adding process got interrupted by receiving the answer to this SDO which is handled in cyclic priority. In the error case the answer was unexpected and therefore ignored. Then the class signals a timeout while waiting for the answer, which already arrived before waiting for it. Added mutex and changed instruction order to prevent this error."/>
		<Dokumentation Revision="1.30" Date="12.07.2016" Author="SeiChr" Company="Sigmatek" Description="Added Values for the total Current calculation. SA 31571"/>
		<Dokumentation Revision="1.29" Date="01.03.2016" Author="EisMic" Company="Sigmatek" Description="Corrected BoundExceed Error in base class at Write method of LEDControl Server when Place = LSL_DEACTIVATED."/>
		<Dokumentation Revision="1.28" Date="22.06.2015" Author="EisMic" Company="Sigmatek" Description="The servers FPGAVersion, SerialNo, Device ID and status and input servers are now not reset anymore when the module is disconnected.&#13;&#10;Outputs are now written to the hardware in any case after a reconnect."/>
		<Dokumentation Revision="1.27" Date="27.05.2015" Author="EisMic" Company="Sigmatek" Description="Corrected ConnectEvent Method that outputs are set after reconnect."/>
		<Dokumentation Revision="1.26" Date="16.04.2015" Author="EisMic&#13;&#10;LanSte" Company="Sigmatek" Description="Added support for visualisation in graphical hardware editor.&#13;&#10;Added support for calculating resources for graphical hardware editor."/>
		<Dokumentation Revision="1.25" Date="17.03.2015" Author="RamAnd" Company="Sigmatek" Description="Added HW Version for sdias clients."/>
		<Dokumentation Revision="1.24" Date="11.02.2015" Author="PieSte" Company="Sigmatek" Description="Corrected read spi data for hardwaretree in methode GetSPIDataFromID from baseclass."/>
		<Dokumentation Revision="1.23" Date="03.12.2014" Author="PieSte" Company="Sigmatek" Description="Add OutputByte in .lhd file."/>
		<Dokumentation Revision="1.22" Date="18.11.2014" Author="PieSte" Company="Sigmatek" Description="Added possibility  to read more data from spi flash then one sdo access.&#13;&#10;Set methode GetDeviceID to global.&#13;&#10;Add methode to calculate checksum of spi flash."/>
		<Dokumentation Revision="1.21" Date="09.07.2014" Author="EisMic" Company="Sigmatek" Description="Added support for reading hardware diagnosis and hardwaretree entry."/>
		<Dokumentation Revision="1.20" Date="20.01.2014" Author="PieSte" Company="Sigmatek" Description="Read Client Required and Place in Init SdiasBase"/>
		<Dokumentation Revision="1.10" Date="05.12.2013" Author="RamAnd" Company="Sigmatek" Description="Changed login mechanism to sdias manager class to be independent of bus accesses."/>
		<Dokumentation Revision="1.0" Date="25.07.2013" Author="BeiWol" Company="Sigmatek" Description="First library version"/>
	</RevDoku>
	<Network Name="TO161">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{39CA0B4C-BD6A-4F71-8017-750C0F80AE6E}"
				Class      = "SdiasBase"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassState"/>
					<Server Name="DeviceID"/>
					<Server Name="FPGAVersion"/>
					<Server Name="HwVersion"/>
					<Server Name="LEDControl" Value="0"/>
					<Server Name="RetryCounter"/>
					<Server Name="SDOState"/>
					<Server Name="SerialNo"/>
					<Client Name="Place" Value="0"/>
					<Client Name="Required" Value="1"/>
					<Client Name="SdiasIn"/>
					<Client Name="ToStdLib"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.ClassState" Destination="_base.ClassState" Vertices="(804,210),(632,210),"/>
			<Connection Source="this.DeviceID" Destination="_base.DeviceID" Vertices="(804,270),(632,270),"/>
			<Connection Source="this.SerialNo" Destination="_base.SerialNo" Vertices="(804,450),(632,450),"/>
			<Connection Source="this.RetryCounter" Destination="_base.RetryCounter" Vertices="(804,510),(632,510),"/>
			<Connection Source="_base.SdiasIn" Destination="this.SdiasIn" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.Place" Destination="this.Place" Vertices="(218,270),(38,270),"/>
			<Connection Source="_base.Required" Destination="this.Required" Vertices="(218,330),(38,330),"/>
			<Connection Source="this.LEDControl" Destination="_base.LEDControl" Vertices="(804,570),(632,570),"/>
			<Connection Source="this.FPGAVersion" Destination="_base.FPGAVersion" Vertices="(804,330),(632,330),"/>
			<Connection Source="this.HwVersion" Destination="_base.HwVersion" Vertices="(804,390),(632,390),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using SdiasBase

TO161 : CLASS
: SdiasBase
	TYPE
	  t_VoltageOk : BINT
	  [
	    1 Ok24V1,
	    2 Ok24V2,
	  ];
	END_TYPE
  //Servers:
	Output1 	: SvrCh_DINT;
	Output2 	: SvrCh_DINT;
	Output3 	: SvrCh_DINT;
	Output4 	: SvrCh_DINT;
	Output5 	: SvrCh_DINT;
	Output6 	: SvrCh_DINT;
	Output7 	: SvrCh_DINT;
	Output8 	: SvrCh_DINT;
	Output9 	: SvrCh_DINT;
	Output10 	: SvrCh_DINT;
	Output11 	: SvrCh_DINT;
	Output12 	: SvrCh_DINT;
	Output13 	: SvrCh_DINT;
	Output14 	: SvrCh_DINT;
	Output15 	: SvrCh_DINT;
	Output16 	: SvrCh_DINT;
	OutputWord 	: SvrCh_BDINT;
	VoltageOkBank1 	: SvrCh_DINT;
	VoltageOkBank2 	: SvrCh_DINT;
  //Clients:
  //Variables:
		bdOutputBitsOld : BDINT
		[
		];
			//! <Variable Comment="Merker for old OutputStatus." Name="bdOutputBitsOld"/>
		pReadData 	: ^UINT;			//! <Variable Comment="Read-Data from the Module." Name="pReadData"/>
		pWriteData 	: ^UINT;			//! <Variable Comment="WriteData of the Module." Name="pWriteData"/>
  //Functions:
				//! <Function Comment="Realtime Update Methode which runs in PreScan." Name="UpdateRt"/>
	FUNCTION VIRTUAL GLOBAL UpdateRt;
				//! <Function Comment="Realtime Update Methode which runs in PostScan." Name="UpdateRtPostScan"/>
	FUNCTION VIRTUAL GLOBAL UpdateRtPostScan;
				//! <Function Comment="Methode is called if this Module gets connected." Name="ConnectEvent"/>
	FUNCTION VIRTUAL GLOBAL ConnectEvent;
				//! <Function Comment="Methode is called if this Module gets disconnected." Name="DisconnectEvent"/>
	FUNCTION VIRTUAL GLOBAL DisconnectEvent;
				//! <Function Comment="This Methode should is used, to check the DeviceID of the Module." Name="CheckDeviceID"/>
	FUNCTION VIRTUAL GLOBAL CheckDeviceID
		VAR_INPUT
			udID2Check 	: UDINT;			//! <Variable Comment="Device ID of connected Module." Name="CheckDeviceID.udID2Check"/>
		END_VAR
		VAR_OUTPUT
			bIsOK 	: BOOL;			//! <Variable Comment="FALSE = Wrong DeviceID for Module&#13;&#10;TRUE  = DeviceID of Module is correct" Name="CheckDeviceID.bIsOK"/>
		END_VAR;
	
	FUNCTION VIRTUAL GetTaskCfg
		VAR_OUTPUT
			TaskCfg 	: BDINT;			//! <Variable Comment="Select which tasks will be available for this module:&#13;&#10;Bit0..Realtime PreScan&#13;&#10;Bit1..Realtime PostScan&#13;&#10;Bit2..Cyclic&#13;&#10;&#13;&#10;e.g. if only realtime postscan is needed:&#13;&#10;2#010" Name="GetTaskCfg.TaskCfg"/>
		END_VAR;
	
	FUNCTION VIRTUAL GetDeviceID
		VAR_OUTPUT
			output 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output1::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output2::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output3::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output4::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output5::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output6::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output7::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output8::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output9::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output10::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output11::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output12::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output13::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output14::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output15::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Output16::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL OutputWord::Write
		VAR_INPUT
			input (EAX) 	: BDINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: BDINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB TO161::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_TO161
1$UINT, 34$UINT, (SIZEOF(::TO161))$UINT, 
19$UINT, 0$UINT, 0$UINT, 
TO_UDINT(900581525), "TO161", //Class
TO_UDINT(3175101883), "SdiasBase", 1$UINT, 60$UINT, //Baseclass
//Servers:
(::TO161.Output1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2425114930), "Output1", 
(::TO161.Output2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(159711368), "Output2", 
(::TO161.Output3.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2122461214), "Output3", 
(::TO161.Output4.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3773212093), "Output4", 
(::TO161.Output5.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2548143403), "Output5", 
(::TO161.Output6.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(250135697), "Output6", 
(::TO161.Output7.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2045768711), "Output7", 
(::TO161.Output8.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3914394006), "Output8", 
(::TO161.Output9.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2656557312), "Output9", 
(::TO161.Output10.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1016857328), "Output10", 
(::TO161.Output11.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1268462182), "Output11", 
(::TO161.Output12.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3532809180), "Output12", 
(::TO161.Output13.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2778026826), "Output13", 
(::TO161.Output14.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1005700841), "Output14", 
(::TO161.Output15.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1291253375), "Output15", 
(::TO161.Output16.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3590301637), "Output16", 
(::TO161.OutputWord.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(62362399), "OutputWord", 
(::TO161.VoltageOkBank1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(761780748), "VoltageOkBank1", 
(::TO161.VoltageOkBank2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3027143606), "VoltageOkBank2", 
//Clients:
END_FUNCTION


#define USER_CNT_TO161 25

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_TO161] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION TO161::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= SdiasBase::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= SdiasBase::ClassState.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, SdiasBase::ClassState.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_TO161;
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #UpdateRt();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[1]		:= #UpdateRtPostScan();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[5]		:= #ConnectEvent();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[6]		:= #DisconnectEvent();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[8]		:= #CheckDeviceID();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[13]		:= #GetTaskCfg();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[14]		:= #GetDeviceID();

#pragma warning (default : 74)
	SdiasBase::ClassState.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF SdiasBase::ClassState.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output1.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output1::Write() );
	IF Output1.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output2.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output2::Write() );
	IF Output2.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output3.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output3::Write() );
	IF Output3.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output4.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output4::Write() );
	IF Output4.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output5.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output5::Write() );
	IF Output5.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output6.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output6::Write() );
	IF Output6.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output7.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output7::Write() );
	IF Output7.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output8.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output8::Write() );
	IF Output8.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output9.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output9::Write() );
	IF Output9.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output10.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output10::Write() );
	IF Output10.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output11.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output11::Write() );
	IF Output11.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output12.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output12::Write() );
	IF Output12.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output13.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output13::Write() );
	IF Output13.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output14.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output14::Write() );
	IF Output14.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output15.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output15::Write() );
	IF Output15.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Output16.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Output16::Write() );
	IF Output16.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	OutputWord.pMeth			:= StoreMethod( #M_RD_DIRECT(), #OutputWord::Write() );
	IF OutputWord.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL TO161::UpdateRt
  VAR
    VoltageOkTmp  : t_VoltageOk;
  END_VAR

  VoltageOkTmp := (pReadData^)$BINT;
  
  VoltageOkBank1 := VoltageOkTmp.Ok24V1;
  VoltageOkBank2 := VoltageOkTmp.Ok24V2;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::UpdateRtPostScan

  if OutputWord <> bdOutputBitsOld then
    pWriteData^ := OutputWord$BINT;
  
    bdOutputBitsOld := OutputWord;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::CheckDeviceID
	VAR_INPUT
		udID2Check 	: UDINT;
	END_VAR
	VAR_OUTPUT
		bIsOK 	: BOOL;
	END_VAR
  
  //look if it is right hardware
	if ( udID2Check <> DEVICE_ID_TO161 ) then
		bIsOK := FALSE;
	else
    bIsOK := TRUE;
	end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::ConnectEvent

  // start the accesses on the SDIAS (initialize the control byte in the DPRAM)
  if DefaultAccesses.ReadAccess.pControlByte then
    pReadData := DefaultAccesses.ReadAccess.pData$^UINT;

    DefaultAccesses.ReadAccess.pControlByte^.EnableDO := TRUE;
  else
    eInitState := _DOHandleInvalid;
    return;
  end_if;

  if DefaultAccesses.WriteAccess.pControlByte then
    pWriteData := DefaultAccesses.WriteAccess.pData$^UINT;

    DefaultAccesses.WriteAccess.pControlByte^.EnableDO := TRUE;
  else
    eInitState := _DOHandleInvalid;
    return;
  end_if;
  
  //Set to write outputs at first access and after reconnect
  bdOutputBitsOld := NOT OutputWord;
  
  // module is ok
  eInitState := _ClassOk;
 
END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::DisconnectEvent
  
  //Reset Write-Memory
  if pWriteData then
    _memset(dest := pWriteData, usByte := 0, cntr := sizeof(pWriteData^));
  end_if;

  // reset general module information shown on servers
  SdiasBase::DisconnectEvent();

  VoltageOkBank1 := 0;
  VoltageOkBank2 := 0;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output1::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR
  
  if input then  
    result  := 1;  
    Output1 := 1;  
    OutputWord.1  := 1;
  else  
    result  := 0;  
    Output1 := 0;  
    OutputWord.1  := 0;
  end_if;
	
END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output2::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output2 := 1;  
    OutputWord.2  := 1;
  else  
    result  := 0;  
    Output2 := 0;  
    OutputWord.2  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output3::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output3 := 1;  
    OutputWord.3  := 1;
  else  
    result  := 0;  
    Output3 := 0;  
    OutputWord.3  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output4::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output4 := 1;  
    OutputWord.4  := 1;
  else  
    result  := 0;  
    Output4 := 0;  
    OutputWord.4  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output5::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output5 := 1;  
    OutputWord.5  := 1;
  else  
    result  := 0;  
    Output5 := 0;  
    OutputWord.5  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output6::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output6 := 1;  
    OutputWord.6  := 1;
  else  
    result  := 0;  
    Output6 := 0;  
    OutputWord.6  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output7::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output7 := 1;  
    OutputWord.7  := 1;
  else  
    result  := 0;  
    Output7 := 0;  
    OutputWord.7  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output8::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output8 := 1;  
    OutputWord.8  := 1;
  else  
    result  := 0;  
    Output8 := 0;  
    OutputWord.8  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output9::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output9 := 1;  
    OutputWord.9  := 1;
  else  
    result  := 0;  
    Output9 := 0;  
    OutputWord.9  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output10::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output10 := 1;  
    OutputWord.10  := 1;
  else  
    result  := 0;  
    Output10 := 0;  
    OutputWord.10  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output11::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output11 := 1;  
    OutputWord.11  := 1;
  else  
    result  := 0;  
    Output11 := 0;  
    OutputWord.11  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output12::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output12 := 1;  
    OutputWord.12  := 1;
  else  
    result  := 0;  
    Output12 := 0;  
    OutputWord.12  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output13::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output13 := 1;  
    OutputWord.13  := 1;
  else  
    result  := 0;  
    Output13 := 0;  
    OutputWord.13  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output14::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output14 := 1;  
    OutputWord.14  := 1;
  else  
    result  := 0;  
    Output14 := 0;  
    OutputWord.14  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output15::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output15 := 1;  
    OutputWord.15  := 1;
  else  
    result  := 0;  
    Output15 := 0;  
    OutputWord.15  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::Output16::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input then  
    result  := 1;  
    Output16 := 1;  
    OutputWord.16  := 1;
  else  
    result  := 0;  
    Output16 := 0;  
    OutputWord.16  := 0;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL TO161::OutputWord::Write
	VAR_INPUT
		input (EAX) 	: BDINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: BDINT;
	END_VAR
  
  if( input$hint <> OutputWord$hint)then
    Output1 :=  (input and 2#1)$DINT;
    Output2 :=  (input and 2#10)$DINT shr 1;
    Output3 :=  (input and 2#100)$DINT shr 2;
    Output4 :=  (input and 2#1000)$DINT shr 3;
    Output5 :=  (input and 2#10000)$DINT shr 4;
    Output6 :=  (input and 2#100000)$DINT shr 5;
    Output7 :=  (input and 2#1000000)$DINT shr 6;
    Output8 :=  (input and 2#10000000)$DINT shr 7;  
    Output9 :=  (input and 2#100000000)$DINT shr 8;
    Output10 := (input and 2#1000000000)$DINT shr 9;
    Output11 := (input and 2#10000000000)$DINT shr 10;
    Output12 := (input and 2#100000000000)$DINT shr 11;
    Output13 := (input and 2#1000000000000)$DINT shr 12;
    Output14 := (input and 2#10000000000000)$DINT shr 13;
    Output15 := (input and 2#100000000000000)$DINT shr 14;
    Output16 := (input and 2#1000000000000000)$DINT shr 15;
  end_if;
 	OutputWord := result := input;

END_FUNCTION


FUNCTION VIRTUAL TO161::GetTaskCfg
	VAR_OUTPUT
		TaskCfg 	: BDINT;
	END_VAR

  TaskCfg := SDIAS_TASK_MASK_RT_PRE OR SDIAS_TASK_MASK_RT_POST;

END_FUNCTION


FUNCTION VIRTUAL TO161::GetDeviceID
	VAR_OUTPUT
		output 	: UDINT;
	END_VAR
  
  output := DEVICE_ID_TO161;

END_FUNCTION
