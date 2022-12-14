//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "Logic_And_4"
	Revision           = "1.2"
	GUID               = "{80091770-DE5A-11D5-B925-0010609208D7}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\Logic_And_4\Logic_And_Base.ico"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)"
	Comment            = "V1.2 Logic AND class with 4 operands">
	<Channels>
		<Server
			Name           = "result"
			Initialize     = "false"
			Visualized     = "true"
			WriteProtected = "true"
			Comment        = "result of the calculation of operand1 - operand4">
		</Server>
		<Client Name="Op1" Required="false" Internal="false" Comment="Operand 1"/>
		<Client Name="Op2" Required="false" Internal="false" Comment="Operand 2"/>
		<Client Name="Op3" Required="false" Internal="false" Comment="Operand 3"/>
		<Client Name="Op4" Required="false" Internal="false" Comment="Operand 4"/>
	</Channels>
	<Network Name="Logic_And_4">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{80091775-DE5A-11D5-B925-0010609208D7}"
				Class      = "Logic_And_Base"
				Position   = "(660,540)"
				Visualized = "true">
				<Channels>
					<Server Name="result"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.result" Destination="_base.result" Vertices="(1132,210),(960,630),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using Logic_And_Base

Logic_And_4 : CLASS
: Logic_And_Base
  //Servers:
  //Clients:
	Op1 	: CltCh_DINT;
	Op2 	: CltCh_DINT;
	Op3 	: CltCh_DINT;
	Op4 	: CltCh_DINT;
  //Variables:
  //Functions:
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB Logic_And_4::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_LOGIC_AND_4
1$UINT, 2$UINT, (SIZEOF(::Logic_And_4))$UINT, 
0$UINT, 4$UINT, 0$UINT, 
TO_UDINT(2837629666), "Logic_And_4", //Class
TO_UDINT(427688042), "Logic_And_Base", 1$UINT, 11$UINT, //Baseclass
//Servers:
//Clients:
(::Logic_And_4.Op1.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1877102209), "Op1", 
(::Logic_And_4.Op2.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(4142604091), "Op2", 
(::Logic_And_4.Op3.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2179739565), "Op3", 
(::Logic_And_4.Op4.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(529054222), "Op4", 
END_FUNCTION


#define USER_CNT_Logic_And_4 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_Logic_And_4] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION Logic_And_4::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= Logic_And_Base::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= Logic_And_Base::result.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, Logic_And_Base::result.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_Logic_And_4;
	Logic_And_Base::result.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF Logic_And_Base::result.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION

