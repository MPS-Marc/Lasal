//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "FestoConfig"
	Revision           = "0.1"
	GUID               = "{DB85852C-6A6F-4B9C-ABEE-1719C7B54681}"
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
	</Channels>
	<Network Name="FestoConfig">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{84A793DA-5620-4AA7-937C-6925E126801E}"
				Class      = "ConfigDefBase"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="Server0"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.Server0" Destination="_base.Server0" Vertices="(690,210),(518,210),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using ConfigDefBase

FestoConfig : CLASS
: ConfigDefBase
  //Servers:
  //Clients:
  //Variables:
  //Functions:
				//! <Function Comment="[#ENGLISH]&#13;&#10;" Name="GetPtr"/>
	FUNCTION VIRTUAL GLOBAL GetPtr
		VAR_OUTPUT
			Pointer 	: ^DINT;			//! <Variable Comment="Poiner to configdata" Name="GetPtr.Pointer"/>
		END_VAR;
	
	FUNCTION TAB MyDef;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB FestoConfig::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_FESTOCONFIG
0$UINT, 1$UINT, (SIZEOF(::FestoConfig))$UINT, 
0$UINT, 0$UINT, 0$UINT, 
TO_UDINT(2427020002), "FestoConfig", //Class
TO_UDINT(3828351829), "ConfigDefBase", 0$UINT, 0$UINT, //Baseclass
//Servers:
//Clients:
END_FUNCTION


#define USER_CNT_FestoConfig 2

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_FestoConfig] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION FestoConfig::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= ConfigDefBase::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= ConfigDefBase::Server0.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, ConfigDefBase::Server0.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_FestoConfig;
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #GetPtr();

#pragma warning (default : 74)
	ConfigDefBase::Server0.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ConfigDefBase::Server0.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL FestoConfig::GetPtr
	VAR_OUTPUT
		Pointer 	: ^DINT;
	END_VAR
  
  Pointer	:= #MyDef()$^DINT;

END_FUNCTION


FUNCTION TAB FestoConfig::MyDef
(*
 *  Config table for 128 Outputs and 64 Inputs.
 *)

  //  PDO Mapping TxPDO1: Master => Slave
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1400$Uint, 01$Usint, 16#80000000$Dint,   // TxPDO1 invalid
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1600$Uint, 00$Usint, 16#00000000$Dint,   // off
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 01$Usint, 16#62000108$Dint,   // Status output   0..  7
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 02$Usint, 16#62000208$Dint,   // Status output   8.. 15
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 03$Usint, 16#62000308$Dint,   // Status output  16.. 23
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 04$Usint, 16#62000408$Dint,   // Status output  24.. 31
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 05$Usint, 16#62000508$Dint,   // Status output  32.. 39
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 06$Usint, 16#62000608$Dint,   // Status output  40.. 47
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 07$Usint, 16#62000708$Dint,   // Status output  48.. 55
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1600$Uint, 08$Usint, 16#62000808$Dint,   // Status output  56.. 63
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1600$Uint, 00$Usint, 16#00000008$Dint,   // on
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1400$Uint, 02$Usint,           1$Dint,   // Sync type, Sync with synchronisation
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1400$Uint, 01$Usint, 16#00000200$Dint,   // TxPDO1 valid + Node NR (auto in class)
  //  PDO Mapping TxPDO2: Master => Slave
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1401$Uint, 01$Usint, 16#80000000$Dint,   // TxPDO2 invalid
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1601$Uint, 00$Usint, 16#00000000$Dint,   // off
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1601$Uint, 01$Usint, 16#63000210$Dint,   // Status output  16.. 31
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1601$Uint, 02$Usint, 16#63000310$Dint,   // Status output  32.. 47
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1601$Uint, 03$Usint, 16#63000410$Dint,   // Status output  48.. 63
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1601$Uint, 04$Usint, 16#63000510$Dint,   // Status output  64.. 79
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1601$Uint, 00$Usint, 16#00000004$Dint,   // on
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1401$Uint, 02$Usint,           1$Dint,   // Sync type, Sync with synchronisation
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1401$Uint, 01$Usint, 16#00000300$Dint,   // TxPDO2 valid + Node NR (auto in class)
  //  PDO Mapping TxPDO3: Master => Slave
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1402$Uint, 01$Usint, 16#80000000$Dint,   // TxPDO3 invalid
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1602$Uint, 00$Usint, 16#00000000$Dint,   // off
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1602$Uint, 01$Usint, 16#63000610$Dint,   // Status output  80.. 95
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1602$Uint, 02$Usint, 16#63000710$Dint,   // Status output  96..111
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1602$Uint, 03$Usint, 16#63000810$Dint,   // Status output 112..127
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1602$Uint, 04$Usint, 16#63000110$Dint,   // Status output   0.. 15 // For 9 is not an option!
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1602$Uint, 00$Usint, 16#00000004$Dint,   // on
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1402$Uint, 02$Usint,           1$Dint,   // Sync type, Sync with synchronisation
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1402$Uint, 01$Usint, 16#00000400$Dint,   // TxPDO3 valid + Node NR (auto in class)
  
//  PDO Mapping RxPDO1: Slave => Master
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1800$Uint, 01$Usint, 16#80000000$Dint,   // RxPDO1 invalid
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1A00$Uint, 00$Usint, 16#00000000$Dint,   // off
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 01$Usint, 16#60000108$Dint,   // Status input   0..  7
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 02$Usint, 16#60000208$Dint,   // Status input   8.. 15
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 03$Usint, 16#60000308$Dint,   // Status input  16.. 23
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 04$Usint, 16#60000408$Dint,   // Status input  24.. 31
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 05$Usint, 16#60000508$Dint,   // Status input  32.. 39
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 06$Usint, 16#60000608$Dint,   // Status input  40.. 47
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 07$Usint, 16#60000708$Dint,   // Status input  48.. 55
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A00$Uint, 08$Usint, 16#60000808$Dint,   // Status input  56.. 63
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1A00$Uint, 00$Usint, 16#00000008$Dint,   // on
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1800$Uint, 02$Usint,           1$Dint,   // Sync type, Sync with synchronisation
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1800$Uint, 01$Usint, 16#00000180$Dint,   // RxPDO1 valid + Node NR (auto in class)
//  PDO Mapping RxPDO2: Slave => Master
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1801$Uint, 01$Usint, 16#80000000$Dint,   // RxPDO2 invalid
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1A01$Uint, 00$Usint, 16#00000000$Dint,   // off
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A01$Uint, 01$Usint, 16#61000210$Dint,   // Status input  16.. 31
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A01$Uint, 02$Usint, 16#61000310$Dint,   // Status input  32.. 47
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A01$Uint, 03$Usint, 16#61000410$Dint,   // Status input  48.. 63
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A01$Uint, 04$Usint, 16#61000510$Dint,   // Status input  64.. 79
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1A01$Uint, 00$Usint, 16#00000004$Dint,   // on
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1801$Uint, 02$Usint,           1$Dint,   // Sync type, Sync with synchronisation
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1801$Uint, 01$Usint, 16#00000280$Dint,   // RxPDO2 valid + Node NR (auto in class)
//  PDO Mapping RxPDO3: Slave => Master
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1802$Uint, 01$Usint, 16#80000000$Dint,   // RxPDO2 invalid
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1A02$Uint, 00$Usint, 16#00000000$Dint,   // off
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A02$Uint, 01$Usint, 16#61000610$Dint,   // Status input  80.. 95
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A02$Uint, 02$Usint, 16#61000710$Dint,   // Status input  96..111
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A02$Uint, 03$Usint, 16#61000810$Dint,   // Status input 112..127
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1A02$Uint, 04$Usint, 16#61000110$Dint,   // Status input   0.. 15 // For 9 is not an option!
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1A02$Uint, 00$Usint, 16#00000004$Dint,   // on
  cSdoTx1$Hint, cWrReq1$Bsint,  16#1802$Uint, 02$Usint,           1$Dint,   // Sync type, Sync with synchronisation
  cSdoTx1$Hint, cWrReq4$Bsint,  16#1802$Uint, 01$Usint, 16#00000380$Dint,   // RxPDO2 valid + Node NR (auto in class)

END_FUNCTION