//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "generalMPScontrolSettings"
	Revision           = "1.0"
	GUID               = "{8A1EFEFB-096E-4647-B12B-8122DF8D38F5}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(660,1080)">
	<Channels>
		<Server Name="addOutputOperations" GUID="{168FE282-BC3B-4AB5-9D05-CAFEFA5E38B7}" Visualized="true" Initialize="true" WriteProtected="false" Retentive="false"/>
		<Server Name="amountOfUnits" GUID="{2EE8891B-2B1C-412F-B765-2B797DA3B08B}" Visualized="true" Initialize="true" DefValue="7" WriteProtected="false" Retentive="false"/>
		<Server Name="ClassSvr" GUID="{FF172FC5-564A-4C6C-8F7D-5B15C34C6FE3}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="combineOperations" GUID="{528CCF84-8E4C-4E7A-878B-608757D36702}" Visualized="true" Initialize="true" DefValue="1" WriteProtected="false" Retentive="false"/>
		<Server Name="freeLoadDistance" GUID="{34BBD889-5DC0-4C14-9537-86003147400D}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="gripDistanceInputWagon" GUID="{6407BEB4-836D-49CB-A571-6913A3CD04AD}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="lengthBetweenPieces" GUID="{69B26B3A-C34C-4602-B1F5-320556049153}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="machineName" GUID="{9091A9D1-D271-4B78-85C1-3B662BFB25E0}" Class="StringRAM" Visualized="true" Remotely="true" Initialize="true" WriteProtected="false" Retentive="false"/>
		<Server Name="maxProductLength" GUID="{6E451173-6BC6-4C57-9751-FDF81F105E00}" Visualized="true" Initialize="true" WriteProtected="false" Retentive="false"/>
		<Server Name="maxScrapLength" GUID="{87D6850E-104A-4857-BB7E-F22260A3E0BD}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="maxTakeOverPos" GUID="{E107979D-562F-42F2-9B7A-98F975076015}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="minPosWagonUp" GUID="{D81157F0-8124-4B37-8845-3F8C5D92B19E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="minProductLength" GUID="{4DBE343B-6E39-4714-A5D7-9D4B678A247C}" Visualized="true" Initialize="true" DefValue="1000" WriteProtected="false" Retentive="false"/>
		<Server Name="minScrapLengthEnd" GUID="{C61A4E1C-458C-40BC-A2A2-8BAE5E7EE5EA}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="minScrapLengthFront" GUID="{620D2E45-0D89-4D61-8949-89B9ADF82E58}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="minTakeOverPos" GUID="{C3126533-DECF-48DF-93C4-CD5B4A3B35A6}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="moveBigWasteToMagazine" GUID="{A573C7F7-4328-4A94-AF21-ACE60B7178F0}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="moveToMinPosAfterProduction" GUID="{9E077F12-0331-4529-813A-6D65847C13B9}" Visualized="true" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false"/>
		<Server Name="MPS_nr" GUID="{8D600D69-3E97-4888-A080-9DF9DE0D0906}" Visualized="true" Initialize="true" DefValue="4444" WriteProtected="true" Retentive="false"/>
		<Server Name="noEndSaw" GUID="{B1653181-63AE-4367-8F0F-0492CDCD1C0D}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="noFrontSaw" GUID="{E4A67BDD-DAA4-4F9E-945D-5AE610CA7E1F}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="noWasteStop" GUID="{C9B0346E-7E78-43F7-9A30-0ED6F92925F7}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="optimumTakeOverPos" GUID="{8739B056-2D4C-480D-BCBC-44DE1AA12949}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="overtakeActive" GUID="{91307D01-356B-4CD4-908B-44DA546FD272}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="turnPointSawAtOutputSide" GUID="{EED6949A-E491-41CE-BD83-FD55B9C11F83}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="wasteAtFront" GUID="{335CB604-7960-42DA-8559-07CB7DDC403B}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="wasteStopForEndWaste" GUID="{34D314B2-2988-4016-AB58-9896DF8907BB}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="yPosTurnPointSaw" GUID="{43FF0509-8539-44C9-94F0-75F6DD98D47E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="ctrlCalc" Required="true" Internal="false"/>
		<Client Name="ctrlSettings" Required="true" Internal="false"/>
		<Client Name="iMaxPosWagon" Required="true" Internal="false"/>
		<Client Name="typeMachine" Required="true" Internal="true"/>
	</Channels>
	<Network Name="generalMPScontrolSettings">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "typeMachine"
				GUID       = "{A2A15072-FB33-4DA3-9FB4-62D986583918}"
				Class      = "StringRAM"
				Position   = "(60,180)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
					<Client Name="UseFile"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.typeMachine" Destination="typeMachine.Data"/>
			<Connection Source="this.machineName" Destination="typeMachine.Data" Vertices="(758,330),(586,270),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
generalMPScontrolSettings : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	MPS_nr 	: SvrCh_DINT;
	machineName 	: SvrChCmd_UDINT;
	amountOfUnits 	: SvrCh_DINT;
	minProductLength 	: SvrCh_DINT;
	maxProductLength 	: SvrCh_DINT;
	minScrapLengthFront 	: SvrCh_DINT;
	minScrapLengthEnd 	: SvrCh_DINT;
	maxScrapLength 	: SvrCh_DINT;
	lengthBetweenPieces 	: SvrCh_DINT;
	freeLoadDistance 	: SvrCh_DINT;
	noFrontSaw 	: SvrCh_DINT;
	noEndSaw 	: SvrCh_DINT;
	wasteAtFront 	: SvrCh_DINT;
	turnPointSawAtOutputSide 	: SvrCh_DINT;
	yPosTurnPointSaw 	: SvrCh_DINT;
	moveToMinPosAfterProduction 	: SvrCh_DINT;
	gripDistanceInputWagon 	: SvrCh_DINT;
	moveBigWasteToMagazine 	: SvrCh_DINT;
	overtakeActive 	: SvrCh_DINT;
	combineOperations 	: SvrCh_DINT;
	noWasteStop 	: SvrCh_DINT;
	wasteStopForEndWaste 	: SvrCh_DINT;
	optimumTakeOverPos 	: SvrCh_DINT;
	minTakeOverPos 	: SvrCh_DINT;
	maxTakeOverPos 	: SvrCh_DINT;
	minPosWagonUp 	: SvrCh_DINT;
	addOutputOperations 	: SvrCh_DINT;
  //Clients:
	typeMachine 	: CltChCmd_StringRAM;
	ctrlSettings 	: CltChCmd_dbSettings;
	iMaxPosWagon 	: CltCh_DINT;
	ctrlCalc 	: CltChCmd_calcOperationListV2;
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL machineName::Read
		VAR_OUTPUT
			output (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL machineName::Write
		VAR_INPUT
			input (EAX) 	: UDINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL maxProductLength::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL maxProductLength::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL minScrapLengthFront::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL minScrapLengthEnd::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL maxScrapLength::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL lengthBetweenPieces::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL freeLoadDistance::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL noFrontSaw::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL noEndSaw::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL wasteAtFront::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL turnPointSawAtOutputSide::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL yPosTurnPointSaw::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL moveToMinPosAfterProduction::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL gripDistanceInputWagon::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL moveBigWasteToMagazine::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL overtakeActive::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL noWasteStop::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL wasteStopForEndWaste::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL optimumTakeOverPos::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL minTakeOverPos::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL maxTakeOverPos::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL minPosWagonUp::Read
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

#pragma using StringRAM
#pragma usingLtd calcOperationListV2
#pragma usingLtd dbSettings


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB generalMPScontrolSettings::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_GENERALMPSCONTROLSETTINGS
1$UINT, 0$UINT, (SIZEOF(::generalMPScontrolSettings))$UINT, 
28$UINT, 4$UINT, 0$UINT, 
TO_UDINT(4196407235), "generalMPScontrolSettings", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::generalMPScontrolSettings.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::generalMPScontrolSettings.MPS_nr.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1875962952), "MPS_nr", 
(::generalMPScontrolSettings.machineName.pMeth)$UINT, _CH_SVR_OBJ$UINT, 2#0000000001000000$UINT, TO_UDINT(660909857), "machineName", 
(::generalMPScontrolSettings.amountOfUnits.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2945880123), "amountOfUnits", 
(::generalMPScontrolSettings.minProductLength.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4261772416), "minProductLength", 
(::generalMPScontrolSettings.maxProductLength.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2952579037), "maxProductLength", 
(::generalMPScontrolSettings.minScrapLengthFront.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(872445508), "minScrapLengthFront", 
(::generalMPScontrolSettings.minScrapLengthEnd.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3535700538), "minScrapLengthEnd", 
(::generalMPScontrolSettings.maxScrapLength.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(860104596), "maxScrapLength", 
(::generalMPScontrolSettings.lengthBetweenPieces.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1874566905), "lengthBetweenPieces", 
(::generalMPScontrolSettings.freeLoadDistance.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4021275301), "freeLoadDistance", 
(::generalMPScontrolSettings.noFrontSaw.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(375344345), "noFrontSaw", 
(::generalMPScontrolSettings.noEndSaw.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(901878337), "noEndSaw", 
(::generalMPScontrolSettings.wasteAtFront.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2197696780), "wasteAtFront", 
(::generalMPScontrolSettings.turnPointSawAtOutputSide.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2873789763), "turnPointSawAtOutputSide", 
(::generalMPScontrolSettings.yPosTurnPointSaw.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1463883333), "yPosTurnPointSaw", 
(::generalMPScontrolSettings.moveToMinPosAfterProduction.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2119231917), "moveToMinPosAfterProduction", 
(::generalMPScontrolSettings.gripDistanceInputWagon.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(554666797), "gripDistanceInputWagon", 
(::generalMPScontrolSettings.moveBigWasteToMagazine.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2595059426), "moveBigWasteToMagazine", 
(::generalMPScontrolSettings.overtakeActive.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4129118557), "overtakeActive", 
(::generalMPScontrolSettings.combineOperations.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1976633377), "combineOperations", 
(::generalMPScontrolSettings.noWasteStop.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3367664392), "noWasteStop", 
(::generalMPScontrolSettings.wasteStopForEndWaste.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1182298673), "wasteStopForEndWaste", 
(::generalMPScontrolSettings.optimumTakeOverPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2032970462), "optimumTakeOverPos", 
(::generalMPScontrolSettings.minTakeOverPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(816517621), "minTakeOverPos", 
(::generalMPScontrolSettings.maxTakeOverPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2307754628), "maxTakeOverPos", 
(::generalMPScontrolSettings.minPosWagonUp.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1657154697), "minPosWagonUp", 
(::generalMPScontrolSettings.addOutputOperations.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1502633335), "addOutputOperations", 
//Clients:
(::generalMPScontrolSettings.typeMachine.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1122157015), "typeMachine", TO_UDINT(2408581120), "StringRAM", 1$UINT, 10$UINT, 
(::generalMPScontrolSettings.ctrlSettings.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(928794703), "ctrlSettings", TO_UDINT(3270182861), "dbSettings", 0$UINT, 0$UINT, 
(::generalMPScontrolSettings.iMaxPosWagon.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(612734082), "iMaxPosWagon", 
(::generalMPScontrolSettings.ctrlCalc.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2182073200), "ctrlCalc", TO_UDINT(3979889133), "calcOperationListV2", 1$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_generalMPScontrolSettings 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_generalMPScontrolSettings] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION generalMPScontrolSettings::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_generalMPScontrolSettings, pCmd := #vmt.CmdTable);
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, machineName.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Read		:= #machineName::Read();
	vmt.CmdTable.Write		:= #machineName::Write();
	machineName.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF machineName.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	amountOfUnits.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF amountOfUnits.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	minProductLength.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF minProductLength.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	maxProductLength.pMeth			:= StoreMethod( #maxProductLength::Read(), #maxProductLength::Write() );
	IF maxProductLength.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	minScrapLengthFront.pMeth			:= StoreMethod( #minScrapLengthFront::Read(), #M_WR_DIRECT() );
	IF minScrapLengthFront.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	minScrapLengthEnd.pMeth			:= StoreMethod( #minScrapLengthEnd::Read(), #M_WR_DIRECT() );
	IF minScrapLengthEnd.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	maxScrapLength.pMeth			:= StoreMethod( #maxScrapLength::Read(), #M_WR_DIRECT() );
	IF maxScrapLength.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	lengthBetweenPieces.pMeth			:= StoreMethod( #lengthBetweenPieces::Read(), #M_WR_DIRECT() );
	IF lengthBetweenPieces.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	freeLoadDistance.pMeth			:= StoreMethod( #freeLoadDistance::Read(), #M_WR_DIRECT() );
	IF freeLoadDistance.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	noFrontSaw.pMeth			:= StoreMethod( #noFrontSaw::Read(), #M_WR_DIRECT() );
	IF noFrontSaw.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	noEndSaw.pMeth			:= StoreMethod( #noEndSaw::Read(), #M_WR_DIRECT() );
	IF noEndSaw.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	wasteAtFront.pMeth			:= StoreMethod( #wasteAtFront::Read(), #M_WR_DIRECT() );
	IF wasteAtFront.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	turnPointSawAtOutputSide.pMeth			:= StoreMethod( #turnPointSawAtOutputSide::Read(), #M_WR_DIRECT() );
	IF turnPointSawAtOutputSide.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	yPosTurnPointSaw.pMeth			:= StoreMethod( #yPosTurnPointSaw::Read(), #M_WR_DIRECT() );
	IF yPosTurnPointSaw.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	moveToMinPosAfterProduction.pMeth			:= StoreMethod( #moveToMinPosAfterProduction::Read(), #M_WR_DIRECT() );
	IF moveToMinPosAfterProduction.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	gripDistanceInputWagon.pMeth			:= StoreMethod( #gripDistanceInputWagon::Read(), #M_WR_DIRECT() );
	IF gripDistanceInputWagon.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	moveBigWasteToMagazine.pMeth			:= StoreMethod( #moveBigWasteToMagazine::Read(), #M_NO_F() );
	IF moveBigWasteToMagazine.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	overtakeActive.pMeth			:= StoreMethod( #overtakeActive::Read(), #M_WR_DIRECT() );
	IF overtakeActive.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	combineOperations.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF combineOperations.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	noWasteStop.pMeth			:= StoreMethod( #noWasteStop::Read(), #M_WR_DIRECT() );
	IF noWasteStop.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	wasteStopForEndWaste.pMeth			:= StoreMethod( #wasteStopForEndWaste::Read(), #M_WR_DIRECT() );
	IF wasteStopForEndWaste.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	optimumTakeOverPos.pMeth			:= StoreMethod( #optimumTakeOverPos::Read(), #M_WR_DIRECT() );
	IF optimumTakeOverPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	minTakeOverPos.pMeth			:= StoreMethod( #minTakeOverPos::Read(), #M_WR_DIRECT() );
	IF minTakeOverPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	maxTakeOverPos.pMeth			:= StoreMethod( #maxTakeOverPos::Read(), #M_WR_DIRECT() );
	IF maxTakeOverPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	minPosWagonUp.pMeth			:= StoreMethod( #minPosWagonUp::Read(), #M_WR_DIRECT() );
	IF minPosWagonUp.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	addOutputOperations.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF addOutputOperations.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 4-2-2020: generalMPScontrolSettings created for first test to read in settings to pc
// at this moment the class is only for storage off fixed machine data

FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::machineName::Read
	VAR_OUTPUT
		output (EAX) 	: UDINT;
	END_VAR

	machineName := typeMachine.Data.Read();
	output := machineName;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::machineName::Write
	VAR_INPUT
		input (EAX) 	: UDINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: UDINT;
	END_VAR

	machineName := input;
	result := (typeMachine.Data.Write(machineName))$UDINT;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::maxProductLength::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  iMaxPosWagon:= iMaxPosWagon.Read();
  maxProductLength:=iMaxPosWagon-ctrlSettings.offsetTakeIn-ctrlSettings.freeSpaceLoadMaterial;
	output := maxProductLength;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::minScrapLengthFront::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  minScrapLengthFront:=ctrlSettings.minFrontWaste;
	output := minScrapLengthFront;

END_FUNCTION

FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::minScrapLengthEnd::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  minScrapLengthEnd:=ctrlSettings.minEndWaste;
	output := minScrapLengthEnd;

END_FUNCTION

FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::maxScrapLength::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  maxScrapLength:=ctrlSettings.maxLengthWaste;
	output := maxScrapLength;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::freeLoadDistance::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  freeLoadDistance:=ctrlSettings.freeSpaceLoadMaterial;
	output := freeLoadDistance;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::noFrontSaw::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  noFrontSaw:=ctrlSettings.doFrontWaste=0;//   .DoFrontWastePiece=0;
	output := noFrontSaw;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::noEndSaw::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  noEndSaw:=ctrlSettings.DoEndWaste=0;
	output := noEndSaw;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::wasteAtFront::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  wasteAtFront:=ctrlSettings.allWasteAtFront;
	output := wasteAtFront;

END_FUNCTION





FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::turnPointSawAtOutputSide::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  turnPointSawAtOutputSide:=ctrlCalc.sParTurnPointAtOutputSide;
	output := turnPointSawAtOutputSide;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::yPosTurnPointSaw::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  yPosTurnPointSaw:=ctrlCalc.sParYposTurnPoint;
	output := yPosTurnPointSaw;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::moveToMinPosAfterProduction::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  moveToMinPosAfterProduction:=ctrlCalc;
	output := moveToMinPosAfterProduction;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::gripDistanceInputWagon::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  gripDistanceInputWagon:=ctrlSettings.lengthGripProfile;
	output := gripDistanceInputWagon;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::moveBigWasteToMagazine::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  
  moveBigWasteToMagazine:= ctrlSettings.moveBigWasteToMagazin;
	output := moveBigWasteToMagazine;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::overtakeActive::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR
  
  overtakeActive:= ctrlSettings.overTakeActive;
	output := overtakeActive;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::noWasteStop::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  noWasteStop:= ctrlSettings.noWasteStop;
	output := noWasteStop;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::wasteStopForEndWaste::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  wasteStopForEndWaste:= ctrlSettings.wasteStopForEndWaste & ctrlSettings.noWasteStop=0;
	output := wasteStopForEndWaste;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::optimumTakeOverPos::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  optimumTakeOverPos:= ctrlSettings.optimumTakeOverPos;
	output := optimumTakeOverPos;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::minTakeOverPos::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  minTakeOverPos:= ctrlSettings.minTakeOverPos;
	output := minTakeOverPos;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::maxTakeOverPos::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  maxTakeOverPos:= ctrlSettings.maxTakeOverPos;
	output := maxTakeOverPos;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::minPosWagonUp::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  minPosWagonUp:= ctrlSettings.minPosWagonUp;
	output := minPosWagonUp;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::maxProductLength::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	maxProductLength := maxProductLength.Read();
	result := maxProductLength;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL generalMPScontrolSettings::lengthBetweenPieces::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  lengthBetweenPieces:= ctrlSettings.lengthBetweenPiece;
	output := lengthBetweenPieces;

END_FUNCTION
