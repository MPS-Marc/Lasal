//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "Ram_CNC"
	Revision           = "0.0"
	GUID               = "{A0140B73-B9FC-48CE-90B4-4F3A2184D1C8}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(388,120)">
	<Channels>
		<Server Name="ActHomePos" GUID="{B8FBD4D4-061E-425A-98CD-B9E97FEBFCBC}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="ActMaxPos" GUID="{257EB4FA-5842-43F2-B71B-9BC467C23DF0}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="ActMinPos" GUID="{CF736C74-54C9-4DC5-AE45-787A3173D0CE}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Afronding" GUID="{415A4476-125A-4ED6-90CE-8560E3EE8267}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Amax" GUID="{AA0313F6-0E2B-4F33-825A-6D3704608859}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="DragLim" GUID="{D57F2EB7-FA86-494A-81F3-70FD1D3DAEAC}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="File"/>
		<Server Name="ExtUnits" GUID="{EC64FB18-4DA4-43B6-A7A9-B86F081BE938}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="File"/>
		<Server Name="HomePos" GUID="{4B18F2A9-5216-4C73-BC9C-543A77DA2F8F}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="InPosBand" GUID="{58581DDC-CB6B-4DEE-B8A8-BF36FAE3D0B5}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="IntUnits" GUID="{C571BB20-BC7A-4E9B-90B5-7D38EC705D4C}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="File"/>
		<Server Name="Kd" GUID="{59A5AC97-D6CF-40F6-BCEF-C763832D856C}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Ki" GUID="{6D27BE70-8299-4F3B-B91B-F13A26F67967}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="KISafe" GUID="{0B1F5ACD-4B85-4BF2-B4A9-8497424BCA68}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Kv" GUID="{6A986EF8-554A-4FA5-BA88-7E35CDA5F03D}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="lengteNeusstuk" GUID="{B061A093-1C07-4091-A45B-7598CB5E0DC1}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="MaxDecAs" GUID="{7FBE5DB0-7645-4892-810B-1674AD30FB8B}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="MaxSignal" GUID="{384003D1-0686-4F2B-BF33-201595F41756}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="MaxSpeed" GUID="{95DA4C75-9EC1-4019-9E65-D6ADD377AFF7}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="NeusstukActief" GUID="{95C24822-3C4E-42EE-84BB-EEA07F44D7E5}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="NullenAfrondingEnPosband" GUID="{6684219A-4DD2-47F4-9A72-E7644280C2A1}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="RefAcc" GUID="{D52BD126-5F13-4314-9B69-3D2FBAD69763}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="RefRichting" GUID="{1253CEBD-1F81-48B7-B020-C37B72EB91CA}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="RefSpeed1" GUID="{5F7CB8C7-1EA2-4B74-9FBA-5FE8B71A9449}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="RefSpeed2" GUID="{35E4D560-6468-471D-8B99-E431009F28FB}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="RemActief" GUID="{AC913045-1B72-4210-BF54-7ADE1F4987AD}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Richting" GUID="{B9A8C0F3-6971-413C-A031-6B18A180178E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="SW_MaxPos" GUID="{6AC16F54-C9D6-4CE3-8F3F-FF0751AF72B5}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="SW_MinPos" GUID="{605A3ECC-2C4F-4325-A686-722CF23F983E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="TijdRemLos" GUID="{601C2C4E-021C-46E4-B0ED-4FA20D3B34D5}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="TijdRemVast" GUID="{697D1449-7139-4E29-B6EC-85D73C7C50D0}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Vmax" GUID="{5D522B7B-741A-497C-B4D0-B641B6F908B4}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="Vu" GUID="{0603576E-7EF0-4311-98C8-FBC9284498C6}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="XtraIfactor" GUID="{CBFE73C4-B7F2-462F-B7C7-F715A1ECEBAB}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="XtraIWindow" GUID="{506F2A08-F8D1-40DC-AEB1-6B04FAA312AC}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Client Name="AMaxWr" Required="true" Internal="false"/>
		<Client Name="cAmax" Required="false" Internal="false"/>
		<Client Name="cDragLim" Required="false" Internal="false"/>
		<Client Name="cExtUnits" Required="false" Internal="false"/>
		<Client Name="cHomePos" Required="false" Internal="false"/>
		<Client Name="cIntUnits" Required="false" Internal="false"/>
		<Client Name="cKv" Required="false" Internal="false"/>
		<Client Name="cMaxSignal" Required="false" Internal="false"/>
		<Client Name="cMaxSpeed" Required="false" Internal="false"/>
		<Client Name="cRefAcc" Required="false" Internal="false"/>
		<Client Name="cRefRichting" Required="true" Internal="false"/>
		<Client Name="cRefSpeed1" Required="false" Internal="false"/>
		<Client Name="cRefSpeed2" Required="false" Internal="false"/>
		<Client Name="cRichting" Required="false" Internal="false"/>
		<Client Name="cSw_MaxPos" Required="false" Internal="false"/>
		<Client Name="cVmax" Required="false" Internal="false"/>
		<Client Name="ExUnitsWr" Required="true" Internal="false"/>
		<Client Name="HomeOk" Required="true" Internal="false"/>
		<Client Name="IntUnitsWr" Required="true" Internal="false"/>
		<Client Name="MaxPosWr" Required="true" Internal="false"/>
		<Client Name="MinPosWr" Required="true" Internal="false"/>
		<Client Name="Resolutie" Required="true" Internal="false"/>
		<Client Name="VMaxWr" Required="true" Internal="false"/>
	</Channels>
	<Network Name="Ram_CNC">
		<!-- List of Components in this network -->
		<Components>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
Ram_CNC : CLASS
  //Servers:
	ExtUnits 	: SvrChCmd_DINT;
	IntUnits 	: SvrChCmd_DINT;
	Vmax 	: SvrChCmd_DINT;
	Amax 	: SvrChCmd_DINT;
	MaxSpeed 	: SvrChCmd_DINT;
	Kv 	: SvrChCmd_DINT;
	Vu 	: SvrChCmd_DINT;
	Ki 	: SvrChCmd_DINT;
	Kd 	: SvrChCmd_DINT;
	DragLim 	: SvrChCmd_DINT;
	SW_MinPos 	: SvrCh_DINT;
	SW_MaxPos 	: SvrCh_DINT;
	HomePos 	: SvrCh_DINT;
	RefSpeed1 	: SvrCh_DINT;
	RefSpeed2 	: SvrCh_DINT;
	RefAcc 	: SvrCh_DINT;
	MaxSignal 	: SvrCh_DINT;
	Richting 	: SvrCh_DINT;
	RefRichting 	: SvrCh_DINT;
	KISafe 	: SvrCh_DINT;
	XtraIfactor 	: SvrCh_DINT;
	XtraIWindow 	: SvrCh_DINT;
	TijdRemVast 	: SvrCh_UDINT;
	TijdRemLos 	: SvrCh_UDINT;
	InPosBand 	: SvrCh_DINT;
	RemActief 	: SvrCh_DINT;
	Afronding 	: SvrCh_DINT;
	NullenAfrondingEnPosband 	: SvrCh_DINT;
	ActMinPos 	: SvrCh_DINT;
	ActMaxPos 	: SvrCh_DINT;
	ActHomePos 	: SvrCh_DINT;
	NeusstukActief 	: SvrCh_DINT;
	lengteNeusstuk 	: SvrCh_DINT;
	MaxDecAs 	: SvrCh_DINT;
  //Clients:
	cExtUnits 	: CltCh_DINT;
	cIntUnits 	: CltCh_DINT;
	cVmax 	: CltCh_DINT;
	cAmax 	: CltCh_DINT;
	cMaxSpeed 	: CltCh_DINT;
	cKv 	: CltCh_DINT;
	cDragLim 	: CltCh_DINT;
	cSw_MaxPos 	: CltCh_DINT;
	cHomePos 	: CltCh_DINT;
	cRefSpeed1 	: CltCh_DINT;
	cRefSpeed2 	: CltCh_DINT;
	cRefAcc 	: CltCh_DINT;
	cMaxSignal 	: CltCh_DINT;
	cRichting 	: CltCh_DINT;
	cRefRichting 	: CltCh_DINT;
	HomeOk 	: CltCh_DINT;
	ExUnitsWr 	: CltCh_DINT;
	IntUnitsWr 	: CltCh_DINT;
	VMaxWr 	: CltCh_DINT;
	AMaxWr 	: CltCh_DINT;
	Resolutie 	: CltCh_DINT;
	MinPosWr 	: CltCh_DINT;
	MaxPosWr 	: CltCh_DINT;
  //Variables:
		First 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION Check;
	
	FUNCTION OerInit;
	
	FUNCTION ResetCNC;
	
	FUNCTION VIRTUAL GLOBAL ExtUnits::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL IntUnits::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Vmax::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Amax::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SW_MinPos::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL SW_MaxPos::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL HomePos::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL MaxSignal::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Richting::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL RefRichting::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL NeusstukActief::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL lengteNeusstuk::Write
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


FUNCTION GLOBAL TAB Ram_CNC::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_RAM_CNC
0$UINT, 0$UINT, (SIZEOF(::Ram_CNC))$UINT, 
34$UINT, 23$UINT, 0$UINT, 
TO_UDINT(769408029), "Ram_CNC", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::Ram_CNC.ExtUnits.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000011000$UINT, TO_UDINT(1539096373), "ExtUnits", 
(::Ram_CNC.IntUnits.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000011000$UINT, TO_UDINT(136119182), "IntUnits", 
(::Ram_CNC.Vmax.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000001000$UINT, TO_UDINT(1001535091), "Vmax", 
(::Ram_CNC.Amax.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000001000$UINT, TO_UDINT(4135344469), "Amax", 
(::Ram_CNC.MaxSpeed.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000001000$UINT, TO_UDINT(3947575129), "MaxSpeed", 
(::Ram_CNC.Kv.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000001000$UINT, TO_UDINT(3495719152), "Kv", 
(::Ram_CNC.Vu.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000001000$UINT, TO_UDINT(3057208662), "Vu", 
(::Ram_CNC.Ki.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(1565818117), "Ki", 
(::Ram_CNC.Kd.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000001000$UINT, TO_UDINT(602210744), "Kd", 
(::Ram_CNC.DragLim.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000011000$UINT, TO_UDINT(1600686928), "DragLim", 
(::Ram_CNC.SW_MinPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1400470316), "SW_MinPos", 
(::Ram_CNC.SW_MaxPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(377174190), "SW_MaxPos", 
(::Ram_CNC.HomePos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(4044363034), "HomePos", 
(::Ram_CNC.RefSpeed1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1364338969), "RefSpeed1", 
(::Ram_CNC.RefSpeed2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(3361437859), "RefSpeed2", 
(::Ram_CNC.RefAcc.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(2603692956), "RefAcc", 
(::Ram_CNC.MaxSignal.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(166684301), "MaxSignal", 
(::Ram_CNC.Richting.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(4288407600), "Richting", 
(::Ram_CNC.RefRichting.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(83317817), "RefRichting", 
(::Ram_CNC.KISafe.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(2311813907), "KISafe", 
(::Ram_CNC.XtraIfactor.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(3708271283), "XtraIfactor", 
(::Ram_CNC.XtraIWindow.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(3151736686), "XtraIWindow", 
(::Ram_CNC.TijdRemVast.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(238462436), "TijdRemVast", 
(::Ram_CNC.TijdRemLos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1836428626), "TijdRemLos", 
(::Ram_CNC.InPosBand.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1430848891), "InPosBand", 
(::Ram_CNC.RemActief.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(214839137), "RemActief", 
(::Ram_CNC.Afronding.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(2162860306), "Afronding", 
(::Ram_CNC.NullenAfrondingEnPosband.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3660353354), "NullenAfrondingEnPosband", 
(::Ram_CNC.ActMinPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(733575920), "ActMinPos", 
(::Ram_CNC.ActMaxPos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1857763698), "ActMaxPos", 
(::Ram_CNC.ActHomePos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3372026994), "ActHomePos", 
(::Ram_CNC.NeusstukActief.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1781142568), "NeusstukActief", 
(::Ram_CNC.lengteNeusstuk.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(2241168428), "lengteNeusstuk", 
(::Ram_CNC.MaxDecAs.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(3179210519), "MaxDecAs", 
//Clients:
(::Ram_CNC.cExtUnits.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1065896752), "cExtUnits", 
(::Ram_CNC.cIntUnits.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1814689675), "cIntUnits", 
(::Ram_CNC.cVmax.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3280420075), "cVmax", 
(::Ram_CNC.cAmax.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(239686605), "cAmax", 
(::Ram_CNC.cMaxSpeed.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2407514972), "cMaxSpeed", 
(::Ram_CNC.cKv.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(471369860), "cKv", 
(::Ram_CNC.cDragLim.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3427913), "cDragLim", 
(::Ram_CNC.cSw_MaxPos.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1719007445), "cSw_MaxPos", 
(::Ram_CNC.cHomePos.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2924269571), "cHomePos", 
(::Ram_CNC.cRefSpeed1.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(559737186), "cRefSpeed1", 
(::Ram_CNC.cRefSpeed2.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3092625624), "cRefSpeed2", 
(::Ram_CNC.cRefAcc.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3262915237), "cRefAcc", 
(::Ram_CNC.cMaxSignal.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2044831478), "cMaxSignal", 
(::Ram_CNC.cRichting.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2611944501), "cRichting", 
(::Ram_CNC.cRefRichting.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(1398294202), "cRefRichting", 
(::Ram_CNC.HomeOk.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(27976227), "HomeOk", 
(::Ram_CNC.ExUnitsWr.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(3214532342), "ExUnitsWr", 
(::Ram_CNC.IntUnitsWr.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(223282646), "IntUnitsWr", 
(::Ram_CNC.VMaxWr.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(4209929642), "VMaxWr", 
(::Ram_CNC.AMaxWr.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(3829227401), "AMaxWr", 
(::Ram_CNC.Resolutie.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(445347747), "Resolutie", 
(::Ram_CNC.MinPosWr.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(3598368737), "MinPosWr", 
(::Ram_CNC.MaxPosWr.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(807014400), "MaxPosWr", 
END_FUNCTION


#define USER_CNT_Ram_CNC 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_Ram_CNC] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION Ram_CNC::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_Ram_CNC, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Write		:= #Write();
	vmt.CmdTable.Init		:= #Init();
	ExtUnits.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ExtUnits.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, IntUnits.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #IntUnits::Write();
	IntUnits.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF IntUnits.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, Vmax.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #Vmax::Write();
	Vmax.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Vmax.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, Amax.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #Amax::Write();
	Amax.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Amax.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, MaxSpeed.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #MaxSpeed::M_WR_DIRECT();
	MaxSpeed.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF MaxSpeed.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, Kv.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #Kv::M_WR_DIRECT();
	Kv.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Kv.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, Vu.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #Vu::M_WR_DIRECT();
	Vu.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Vu.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, Ki.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #Ki::M_WR_DIRECT();
	Ki.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Ki.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, Kd.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #Kd::M_WR_DIRECT();
	Kd.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Kd.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	_memcpy((#vmt.CmdTable)$^USINT, DragLim.pMeth, SIZEOF(CMDMETH));
	vmt.CmdTable.nCmds		:= nSTDCMD;
	vmt.CmdTable.Write		:= #DragLim::M_WR_DIRECT();
	DragLim.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF DragLim.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SW_MinPos.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SW_MinPos::Write() );
	IF SW_MinPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	SW_MaxPos.pMeth			:= StoreMethod( #M_RD_DIRECT(), #SW_MaxPos::Write() );
	IF SW_MaxPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	HomePos.pMeth			:= StoreMethod( #M_RD_DIRECT(), #HomePos::Write() );
	IF HomePos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	RefSpeed1.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF RefSpeed1.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	RefSpeed2.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF RefSpeed2.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	RefAcc.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF RefAcc.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	MaxSignal.pMeth			:= StoreMethod( #M_RD_DIRECT(), #MaxSignal::Write() );
	IF MaxSignal.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Richting.pMeth			:= StoreMethod( #M_RD_DIRECT(), #Richting::Write() );
	IF Richting.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	RefRichting.pMeth			:= StoreMethod( #M_RD_DIRECT(), #RefRichting::Write() );
	IF RefRichting.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	KISafe.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF KISafe.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	XtraIfactor.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF XtraIfactor.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	XtraIWindow.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF XtraIWindow.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	TijdRemVast.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF TijdRemVast.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	TijdRemLos.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF TijdRemLos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	InPosBand.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF InPosBand.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	RemActief.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF RemActief.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Afronding.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Afronding.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	NeusstukActief.pMeth			:= StoreMethod( #M_RD_DIRECT(), #NeusstukActief::Write() );
	IF NeusstukActief.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	lengteNeusstuk.pMeth			:= StoreMethod( #M_RD_DIRECT(), #lengteNeusstuk::Write() );
	IF lengteNeusstuk.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	MaxDecAs.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF MaxDecAs.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION

FUNCTION VIRTUAL GLOBAL Ram_CNC::Init

  If First= 0 Then
    OerInit();
    First := 1;
  End_If;

END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::Init




FUNCTION Ram_CNC::OerInit

  if ExtUnits <> 0 then //wachten tot ext units niet meer nul zijn
    
    Resolutie := Resolutie.Read();
    if Resolutie = 1000 then
      NullenAfrondingEnPosband := 4;
    elsif Resolutie = 100 then
      NullenAfrondingEnPosband := 3;
    elsif Resolutie = 10 then
      NullenAfrondingEnPosband := 2;
    else
      NullenAfrondingEnPosband := 1;
    end_if;
    
    If ExtUnits= 0 Then
      cExtUnits 	  := cExtUnits.read();  
      ExtUnits.Write(input:=cExtUnits);
    End_If;
    
    If IntUnits= 0 Then
      cIntUnits 	  := cIntUnits.read();
      IntUnits.Write(input:=cIntUnits);
    End_If;
    
    If Vmax= 0 Then
      cVmax 		    := cVmax.read();
      Vmax.Write(input:=cVmax);    
    End_If;
    
    If Amax= 0 Then
      cAmax 		    := cAmax.read();
      Amax.Write(input:=cAmax);
    End_If;
    
    If MaxSpeed= 0 Then
      cMaxSpeed   	:= cMaxSpeed.read();
      MaxSpeed.Write(input:=cMaxSpeed);
    End_If;
    
    If Kv= 0 Then
      cKv 			    := cKv.read();
      Kv.Write(input:=cKv);
    End_If;
   
    If DragLim= 0 Then
      cDragLim 	    := cDragLim.read();
      DragLim.Write(input:=cDragLim);
    End_If;

    If SW_Maxpos= 0 Then
      cSW_Maxpos    := cSW_MaxPos.read();
      SW_Maxpos.Write(input:=cSw_MaxPos);
    End_If;
    
    If HomePos= 0 Then
      cHomePos      := cHomePos.read();  
      HomePos.Write(input:=cHomePos);
    End_If;
    
    If RefSpeed1= 0 Then
      cRefSpeed1    := cRefSpeed1.read();
      RefSpeed1.Write(input:=cRefSpeed1);
    End_If;
    
    If RefSpeed2= 0 Then
      cRefSpeed2    := cRefSpeed2.read();
      RefSpeed2.Write(input:=cRefSpeed2);
    End_If;
    
    If RefAcc= 0 Then
      cRefAcc    	  := cRefAcc.read();
      RefAcc.Write(input:=cRefAcc);
    End_If;
    
    If MaxSignal= 0 Then
      cMaxSignal    := cMaxSignal.read();
    
      MaxSignal.Write(input:=cMaxSignal);
      
      //Default-Richting inlezen
      cRichting  := cRichting.read() And 2#1;
      Richting.Write(input:=cRichting And 2#1);
      
      //Default-Referentie Richting inlezen
      cRefRichting := cRefRichting.read() And 2#1;
      RefRichting.Write(input:=cRefRichting And 2#1);
      
    End_If;
    
    ExUnitsWr := ExtUnits;
    ExUnitsWr.Write(input:=ExUnitsWr);
    IntUnitsWr := IntUnits;
    IntUnitsWr.Write(input:=IntUnitsWr);
    VMaxWr :=Vmax;
    VMaxWr.Write(input:=VMaxWr);
    AMaxWr := Amax;
    AMaxWr.Write(input:=AMaxWr);
    MinPosWr := SW_MinPos - 10; //anders gaat de boel bij overshoot in error
    MinPosWr.Write(input:=MinPosWr);
    MaxPosWr := SW_MaxPos + 10; //anders gaat de boel bij overshoot in error
    MaxPosWr.Write(input:=MaxPosWr);
    Ki := KISafe;
  end_if;
  
  
  Check();
END_FUNCTION

FUNCTION Ram_CNC::Check


  If Richting = 0 then
    If IntUnits< 0 Then
      IntUnits.Write(input:=IntUnits*-1);
    End_If;
    
//    If MaxSignal< 0 Then
//      MaxSignal.Write(input:=MaxSignal* -1);
//    End_If;
//    
  Else
    If IntUnits> 0 Then
      IntUnits.Write(input:=IntUnits* -1);
    End_If;
//    
//    If MaxSignal> 0 Then
//      MaxSignal.Write(input:=MaxSignal* -1);
//    End_If;
//    
//    
  End_if;


  if NeusstukActief = 0 then
    ActHomePos := HomePos;
    ActMaxPos := SW_MaxPos;
    ActMinPos := SW_MinPos;
  else
    ActHomePos := HomePos - lengteNeusstuk;
    ActMaxPos := SW_MaxPos - lengteNeusstuk;
    ActMinPos := SW_MinPos - lengteNeusstuk;
  end_if;


END_FUNCTION


FUNCTION VIRTUAL GLOBAL Ram_CNC::ExtUnits::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  If Input<> 0 Then
    ExtUnits := input;
    result := ExtUnits;
    ExUnitsWr := ExtUnits;
    ExUnitsWr.Write(input:=ExUnitsWr);
    ResetCNC();
  Else
    Result  := Access_Denied;
  End_If;
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::ExtUnits::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::IntUnits::Write
VAR_INPUT
	input		: DINT;
END_VAR
VAR_OUTPUT
	result		: DINT;
END_VAR

  If Input> 0 Then
   If Richting= 0 Then
     IntUnits := input;
     result := IntUnits;
     ResetCNC();
    Else
      Result  := Access_Denied;
    End_If;
  ElsIf Input< 0 Then
    If Richting= 1 Then
      IntUnits := input;
      result := IntUnits;
      ResetCNC();
    Else
      Result  := Access_Denied;
    End_If;
  Else
    Result  := Access_Denied;
  End_If;
  
  IntUnitsWr := IntUnits;
  IntUnitsWr.Write(input:=IntUnitsWr);
  
  
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::IntUnits::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::Vmax::Write
VAR_INPUT
	input		: DINT;
END_VAR
VAR_OUTPUT
	result		: DINT;
END_VAR

	Vmax := input;
  VMaxWr := Vmax;
  VMaxWr.Write(input:=VMaxWr);
 	result := Vmax;
  
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::Vmax::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::Amax::Write
VAR_INPUT
	input		: DINT;
END_VAR
VAR_OUTPUT
	result		: DINT;
END_VAR

	Amax := input;
  AMaxWr := Amax;
  AMaxWr.Write(input:=AMaxWr);
 	result := Amax;
  
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::Amax::Write


 //VIRTUAL GLOBAL Ram_CNC::MaxSpeed::Write


 //VIRTUAL GLOBAL Ram_CNC::Kv::Write


 //VIRTUAL GLOBAL Ram_CNC::Vu::Write


 //VIRTUAL GLOBAL Ram_CNC::Ki::Write


 //VIRTUAL GLOBAL Ram_CNC::Kd::Write


 //VIRTUAL GLOBAL Ram_CNC::DragLim::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::SW_MinPos::Write
VAR_INPUT
	input		: DINT;
END_VAR
VAR_OUTPUT
	result		: DINT;
END_VAR

	SW_MinPos := input;
  MinPosWr := SW_MinPos - 10; //anders gaat de boel bij overshoot in error
  MinPosWr.Write(input:=MinPosWr);
 	result := SW_MinPos;
  ResetCNC();
  Check();
  
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::SW_MinPos::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::SW_MaxPos::Write
VAR_INPUT
	input		: DINT;
END_VAR
VAR_OUTPUT
	result		: DINT;
END_VAR

	SW_MaxPos := input;
  MaxPosWr := SW_MaxPos +10; //anders gaat de boel bij overshoot in error
  MaxPosWr.Write(input:=MaxPosWr);
 	result := SW_MaxPos;
  ResetCNC();
  Check();
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::SW_MaxPos::Write


 //VIRTUAL GLOBAL Ram_CNC::HomePos::Write


 //VIRTUAL GLOBAL Ram_CNC::RefSpeed1::Write


 //VIRTUAL GLOBAL Ram_CNC::RefSpeed2::Write


 //VIRTUAL GLOBAL Ram_CNC::RefAcc::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::MaxSignal::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

//  If Input   > 0
//   & Richting= 0 Then
    MaxSignal := input;
    result := MaxSignal;
    ResetCNC();
//  ElsIf Input   < 0
//      & Richting= 1 Then
//    MaxSignal := input;
//    result := MaxSignal;
//    ResetCNC();
//  Else
//    Result  := Access_Denied;
//  End_If;
END_FUNCTION


FUNCTION VIRTUAL GLOBAL Ram_CNC::Richting::Write
VAR_INPUT
	input		: DINT;
END_VAR
VAR_OUTPUT
	result		: DINT;
END_VAR

	Richting := input And 2#1;
  Check();
  ResetCNC();
 	result := Richting;
END_FUNCTION //VIRTUAL GLOBAL Ram_CNC::Richting::Write


FUNCTION VIRTUAL GLOBAL Ram_CNC::RefRichting::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	RefRichting := input And 2#1;
 	result := RefRichting;
END_FUNCTION




FUNCTION Ram_CNC::ResetCNC

  HomeOk:=0;
  HomeOk.Write (HomeOk);

END_FUNCTION



FUNCTION VIRTUAL GLOBAL Ram_CNC::NeusstukActief::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input <> NeusstukActief then
	  NeusstukActief := input;
    Check();
    HomeOk.Write(input:=0);
  end_if;
	result := NeusstukActief;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL Ram_CNC::lengteNeusstuk::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if input <> lengteNeusstuk then
  
	  lengteNeusstuk := input;
  
    if NeusstukActief = 1 then
      Check();
      HomeOk.Write(input:=0);
    end_if;
  end_if;
  
	result := lengteNeusstuk;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL Ram_CNC::HomePos::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	HomePos := input;
	result := HomePos;
  Check();

END_FUNCTION
