//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "_AlarmX3ParaDer"
	Revision           = "0.0"
	GUID               = "{48D1A2FF-4F3F-419B-A0FF-AA836D284DFF}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	DefBackground      = "100 ms"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(300,420)">
	<Channels>
		<Server Name="AlarmActief" GUID="{0467E989-8DB2-4088-9CB9-0CDF83AF9C3B}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="ErrorNr" GUID="{244ACD95-5AC2-4364-B024-A1CC761CF70E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
	</Channels>
	<Network Name="_AlarmX3ParaDer">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{5785EB27-1BCB-4BFE-95D3-58366FCEBDFF}"
				Class      = "_AlarmX3Para"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="Acknow"/>
					<Client Name="Config" Value="0"/>
					<Client Name="Group"/>
					<Client Name="Para1"/>
					<Client Name="Para2"/>
					<Client Name="Para3"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.ClassSvr" Destination="_base.ClassSvr" Vertices="(690,210),(518,210),"/>
			<Connection Source="_base.Config" Destination="this.Config" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.Acknow" Destination="this.Acknow" Vertices="(218,270),(38,270),"/>
			<Connection Source="_base.Group" Destination="this.Group" Vertices="(218,330),(38,330),"/>
			<Connection Source="_base.Para1" Destination="this.Para1" Vertices="(218,390),(38,390),"/>
			<Connection Source="_base.Para2" Destination="this.Para2" Vertices="(218,450),(38,450),"/>
			<Connection Source="_base.Para3" Destination="this.Para3" Vertices="(218,510),(38,510),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using _AlarmX3Para

_AlarmX3ParaDer : CLASS
: _AlarmX3Para
  //Servers:
	AlarmActief 	: SvrCh_DINT;
	ErrorNr 	: SvrCh_DINT;
  //Clients:
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL AlarmActief::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL AlarmActief::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL ErrorNr::Write
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


FUNCTION GLOBAL TAB _AlarmX3ParaDer::@CT_
0$UINT,
2#0100000000000010$UINT, //TY__ALARMX3PARADER
0$UINT, 0$UINT, (SIZEOF(::_AlarmX3ParaDer))$UINT, 
2$UINT, 0$UINT, 0$UINT, 
TO_UDINT(763986700), "_AlarmX3ParaDer", //Class
TO_UDINT(1746090780), "_AlarmX3Para", 0$UINT, 2$UINT, //Baseclass
//Servers:
(::_AlarmX3ParaDer.AlarmActief.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4046712228), "AlarmActief", 
(::_AlarmX3ParaDer.ErrorNr.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3474608145), "ErrorNr", 
//Clients:
END_FUNCTION


#define USER_CNT__AlarmX3ParaDer 5

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT__AlarmX3ParaDer] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION _AlarmX3ParaDer::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= _AlarmX3Para::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= _AlarmX0Para::ClassSvr.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, _AlarmX0Para::ClassSvr.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT__AlarmX3ParaDer;
	_AlarmX0Para::ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF _AlarmX0Para::ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	AlarmActief.pMeth			:= StoreMethod( #AlarmActief::Read(), #AlarmActief::Write() );
	IF AlarmActief.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	ErrorNr.pMeth			:= StoreMethod( #M_RD_DIRECT(), #ErrorNr::Write() );
	IF ErrorNr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION

FUNCTION VIRTUAL GLOBAL _AlarmX3ParaDer::AlarmActief::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  AlarmActief := ClassSvr;
  Para1 := Para1.Read();
  ErrorNr := Para1;
  if ErrorNr <> 0 then
    AlarmActief := 1;
  end_if;



	output := AlarmActief;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _AlarmX3ParaDer::AlarmActief::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	AlarmActief := input;
  ClassSvr.Write(input:=AlarmActief); //JdK 6-8-2019: also write to classSvr, because classSvr handles alarm to screen
  if IsClientConnected(#Para1) then
    Para1 := Para1.Read();
    ErrorNr := Para1;
  else
    Para1 := ErrorNr;
  end_if;
	result := AlarmActief;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _AlarmX3ParaDer::ErrorNr::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	ErrorNr := input;
  Para1 := ErrorNr;
	result := ErrorNr;

END_FUNCTION