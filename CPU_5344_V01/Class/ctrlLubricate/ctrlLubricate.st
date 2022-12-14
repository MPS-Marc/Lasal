//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "ctrlLubricate"
	Revision           = "0.0"
	GUID               = "{3D7894F3-4576-4A26-B195-28AAC97AE2ED}"
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
	Objectsize         = "(540,480)">
	<Channels>
		<Server Name="Actuate" GUID="{02F5D441-714E-434E-B4D2-DF1F9F2C5B68}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="ClassSvr" GUID="{A73036E1-0A77-434F-A9DD-3E98CC485B3D}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="CycleTIme" GUID="{580DDBD4-4AEF-4D1D-BAD4-42724A7CB07D}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Offtime" GUID="{8AB17BDC-D4A6-488D-A30C-9A8DD9DDF948}" Visualized="true" Initialize="true" DefValue="400" WriteProtected="false" Retentive="File"/>
		<Server Name="Ontime" GUID="{F8E4164B-4BE4-4461-A8C0-5FED2EB0DC21}" Visualized="true" Initialize="true" DefValue="200" WriteProtected="false" Retentive="File"/>
		<Server Name="Stepper" GUID="{2E61BB55-6163-4B09-95FA-2803AF8DFE12}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="TotalCycleTime" GUID="{CDB9E339-F210-4364-98D6-8E880D7804F7}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="Air" Required="false" Internal="false"/>
		<Client Name="iEnableLubricate" Required="false" Internal="false"/>
		<Client Name="iPulsesPerSecond" Required="true" Internal="false"/>
		<Client Name="Oil" Required="false" Internal="false"/>
	</Channels>
</Class>
*)
ctrlLubricate : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	Stepper 	: SvrCh_DINT;
	CycleTIme 	: SvrCh_UDINT;
	TotalCycleTime 	: SvrCh_UDINT;
	Ontime 	: SvrCh_UDINT;
	Offtime 	: SvrCh_UDINT;
	Actuate 	: SvrCh_DINT;
  //Clients:
	Oil 	: CltCh_DINT;
	Air 	: CltCh_DINT;
	iPulsesPerSecond 	: CltCh_DINT;
	iEnableLubricate 	: CltCh_DINT;
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION GLOBAL Smeren;
	
	FUNCTION ReadInputs;
	
	FUNCTION WriteOutputs;
	
	FUNCTION GLOBAL Start;
	
	FUNCTION GLOBAL Stop;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB ctrlLubricate::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CTRLLUBRICATE
0$UINT, 0$UINT, (SIZEOF(::ctrlLubricate))$UINT, 
7$UINT, 4$UINT, 0$UINT, 
TO_UDINT(1456709137), "ctrlLubricate", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::ctrlLubricate.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::ctrlLubricate.Stepper.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(663165702), "Stepper", 
(::ctrlLubricate.CycleTIme.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2924485542), "CycleTIme", 
(::ctrlLubricate.TotalCycleTime.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2441426597), "TotalCycleTime", 
(::ctrlLubricate.Ontime.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(3494532575), "Ontime", 
(::ctrlLubricate.Offtime.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(1507341467), "Offtime", 
(::ctrlLubricate.Actuate.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1856341330), "Actuate", 
//Clients:
(::ctrlLubricate.Oil.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3663129112), "Oil", 
(::ctrlLubricate.Air.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(717748849), "Air", 
(::ctrlLubricate.iPulsesPerSecond.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(4213299412), "iPulsesPerSecond", 
(::ctrlLubricate.iEnableLubricate.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3064673589), "iEnableLubricate", 
END_FUNCTION


#define USER_CNT_ctrlLubricate 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_ctrlLubricate] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION ctrlLubricate::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_ctrlLubricate, pCmd := #vmt.CmdTable);
	vmt.CmdTable.CyWork		:= #CyWork();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Ontime.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Ontime.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Offtime.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Offtime.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Actuate.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Actuate.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 7-8-2019 ctrlLubricate copied from 4090 to 4284
// function is to control lubrication with oil and sometimes air, if no air offtime will be 0, so oil is continue on


FUNCTION VIRTUAL GLOBAL ctrlLubricate::CyWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR
  
  ReadInputs();
  
  if Actuate | iEnableLubricate then // als het object smering aangeroepen wordt wordt de functie gestart
    Smeren();
  else // als het startsignaal niet aanwezig is of afvalt dan worden de startcondities gezet
    Stepper := 0;
    Air := FALSE;
    Oil := FALSE;
  end_if;
  
  WriteOutputs();
  

	state := READY;

END_FUNCTION


FUNCTION GLOBAL ctrlLubricate::Smeren
  

  TotalCycleTime := Ontime + Offtime; // berekenen van de totale cycletijd nav de inputvariabelen
  
  case Stepper of


  0: //  starttijd van de cyclus vasststellen en lucht en olie inschakelen
    CycleTime := ops.tAbsolute;
    Air := TRUE;
    Oil := TRUE;
    if Offtime > 0 then //else just keep everything on
      Stepper +=1;
    end_if;
  
  1:// Olie uitschakelen als ontime verstreken is
    if ops.tAbsolute - CycleTime > Ontime then
      Oil := FALSE;
      Stepper +=1;
    end_if;
    
    
  2: // weer terug naar begin en dus olie weer inschakelen na verstrijken van totale cycletijd
    if ops.tAbsolute - CycleTime > TotalCycleTime then
      Stepper := 0;
    end_if;
    
  end_case;

END_FUNCTION


FUNCTION ctrlLubricate::ReadInputs
iPulsesPerSecond := iPulsesPerSecond.Read();
iEnableLubricate := iEnableLubricate.Read();

if iPulsesPerSecond > 0 then
  Offtime := 60000 / to_udint(iPulsesPerSecond);
end_if;

END_FUNCTION


FUNCTION ctrlLubricate::WriteOutputs

  Air.Write(Air);
  Oil.Write(Oil);
    
END_FUNCTION


FUNCTION GLOBAL ctrlLubricate::Start

  Actuate := TRUE;

END_FUNCTION


FUNCTION GLOBAL ctrlLubricate::Stop

  Actuate := FALSE;

END_FUNCTION
