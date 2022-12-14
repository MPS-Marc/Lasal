//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "sawToolSettingsMpsControl"
	Revision           = "1.0"
	GUID               = "{45936774-EF97-43DF-93ED-1E925F360C82}"
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
		<Server Name="setting1" GUID="{C326ED34-7D8C-48CD-8FBC-16C69A51FA00}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="min. sawing angle (in 1/10 degree) where 90 degree is right angled "/>
		<Server Name="setting2" GUID="{B5E3F1B2-9CAD-4410-8874-0239F96FD13F}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="max. sawing angle (in 1/10 degree) where 90 degree is right angled"/>
		<Client Name="iMaxAngle" Required="true" Internal="false"/>
		<Client Name="iMinAngle" Required="true" Internal="false"/>
	</Channels>
	<Network Name="sawToolSettingsMpsControl">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{5079A314-12F9-4345-99FA-3B8F35A7E727}"
				Class      = "baseToolSettingsMpsControl"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="amountOfSettings" Value="4"/>
					<Server Name="ClassSvr"/>
					<Server Name="Name"/>
					<Server Name="plane"/>
					<Server Name="toolType" Value="1"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.ClassSvr" Destination="_base.ClassSvr" Vertices="(690,210),(518,210),"/>
			<Connection Source="this.toolType" Destination="_base.toolType" Vertices="(690,270),(518,270),"/>
			<Connection Source="this.amountOfSettings" Destination="_base.amountOfSettings" Vertices="(690,450),(518,450),"/>
			<Connection Source="this.plane" Destination="_base.plane" Vertices="(690,390),(518,390),"/>
			<Connection Source="this.Name" Destination="_base.Name" Vertices="(690,330),(518,330),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using baseToolSettingsMpsControl

sawToolSettingsMpsControl : CLASS
: baseToolSettingsMpsControl
  //Servers:
	setting1 	: SvrCh_DINT;
	setting2 	: SvrCh_DINT;
  //Clients:
	iMinAngle 	: CltCh_DINT;
	iMaxAngle 	: CltCh_DINT;
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL setting1::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL setting2::Read
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

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB sawToolSettingsMpsControl::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_SAWTOOLSETTINGSMPSCONTROL
1$UINT, 0$UINT, (SIZEOF(::sawToolSettingsMpsControl))$UINT, 
2$UINT, 2$UINT, 0$UINT, 
TO_UDINT(3322524006), "sawToolSettingsMpsControl", //Class
TO_UDINT(3548367411), "baseToolSettingsMpsControl", 1$UINT, 0$UINT, //Baseclass
//Servers:
(::sawToolSettingsMpsControl.setting1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2160737533), "setting1", 
(::sawToolSettingsMpsControl.setting2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(432237895), "setting2", 
//Clients:
(::sawToolSettingsMpsControl.iMinAngle.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(4086717916), "iMinAngle", 
(::sawToolSettingsMpsControl.iMaxAngle.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(368505405), "iMaxAngle", 
END_FUNCTION


#define USER_CNT_sawToolSettingsMpsControl 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_sawToolSettingsMpsControl] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION sawToolSettingsMpsControl::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= baseToolSettingsMpsControl::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= baseToolSettingsMpsControl::ClassSvr.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, baseToolSettingsMpsControl::ClassSvr.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_sawToolSettingsMpsControl;
	baseToolSettingsMpsControl::ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF baseToolSettingsMpsControl::ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	setting1.pMeth			:= StoreMethod( #setting1::Read(), #M_WR_DIRECT() );
	IF setting1.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	setting2.pMeth			:= StoreMethod( #setting2::Read(), #M_WR_DIRECT() );
	IF setting2.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 4-2-2020: sawToolSettingsMpsControl created for first test to read in settings to pc
// at this moment the class is only for storage off fixed machine data for saw tools

FUNCTION VIRTUAL GLOBAL sawToolSettingsMpsControl::setting1::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  iMinAngle:=iMinAngle.Read();
  setting1:= iMinAngle;

	output := setting1;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL sawToolSettingsMpsControl::setting2::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  iMaxAngle:=iMaxAngle.Read();
  setting2:= iMaxAngle;
  
	output := setting2;

END_FUNCTION
