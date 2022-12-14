//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "profileInfo"
	Revision           = "0.0"
	GUID               = "{95E9C681-30A1-48BE-9C32-1BE22785830D}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "true"
	DefBackground      = "10 ms"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(780,120)">
	<Channels>
		<Server Name="ClassSvr" GUID="{77379084-CE5A-4310-BCE8-8ED289D3F7A1}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length1" GUID="{6CDAED49-153D-4640-9E70-059DB12FFC22}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length10" GUID="{EDC02757-01A1-48B0-931B-FEEF49E899D6}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length2" GUID="{EB12E840-7C95-410E-B156-4BE99EF3071C}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length3" GUID="{B749EA55-AB19-4746-A796-759F9A0F932E}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length4" GUID="{23FE6453-5600-4B8A-AAD7-341BDC7BCB3F}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length5" GUID="{A0EA5558-BCAF-4DB1-8097-52AB98D1B0B5}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length6" GUID="{5A5E45AC-B502-4530-9E0E-F751CB04FD08}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length7" GUID="{BF0AF8D7-DFA7-47FF-AFD9-0CD86E3A9E30}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length8" GUID="{28BBB64E-B11D-4B0B-8044-D4234F52BE82}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="length9" GUID="{007B7D0F-A7B1-4663-B120-AE9156049CD8}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr1" GUID="{DC716294-1AAC-4E8F-BF10-54697FC83289}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr10" GUID="{F7CB8CB6-1B49-4869-B97E-C2FA011ED3FD}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr2" GUID="{F7232D52-2EEE-42B1-AB04-561E9B984643}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr3" GUID="{AA43C7A2-1EC4-4B81-A78D-A07F23EB35F1}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr4" GUID="{C6AD97C2-F507-4773-A67D-21A1F87737C3}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr5" GUID="{D4F2EC7A-BFAC-4A5D-B6D0-B73BECB80C11}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr6" GUID="{FF6227DC-31FB-4052-AD0A-6FF39FA1797E}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr7" GUID="{A52D3D28-4E37-4E12-9E01-0FCD5FEFB1B2}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr8" GUID="{424F50C1-966B-4A7A-AA0F-7068D9E707AC}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="recNr9" GUID="{0EB59B0A-435B-4356-A853-140BD7609478}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="ctrlAssemDb" Required="true" Internal="false"/>
		<Client Name="String1" Required="true" Internal="true"/>
		<Client Name="String10" Required="true" Internal="true"/>
		<Client Name="String2" Required="true" Internal="true"/>
		<Client Name="String3" Required="true" Internal="true"/>
		<Client Name="String4" Required="true" Internal="true"/>
		<Client Name="String5" Required="true" Internal="true"/>
		<Client Name="String6" Required="true" Internal="true"/>
		<Client Name="String7" Required="true" Internal="true"/>
		<Client Name="String8" Required="true" Internal="true"/>
		<Client Name="String9" Required="true" Internal="true"/>
	</Channels>
	<Network Name="profileInfo">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "String1"
				GUID       = "{62605441-EF01-4290-8B96-C48B03AF8D71}"
				Class      = "String"
				Position   = "(270,300)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String10"
				GUID       = "{9CCE67EA-D7CF-4529-A5FC-5CD211CAD1BA}"
				Class      = "String"
				Position   = "(270,1650)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String2"
				GUID       = "{E4B749C1-2EFB-4C43-9BC8-043F2DB29465}"
				Class      = "String"
				Position   = "(270,450)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String3"
				GUID       = "{1B436ADA-CA76-4434-9FE2-3C135CB2425C}"
				Class      = "String"
				Position   = "(270,600)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String4"
				GUID       = "{CEBC492D-2E67-4AEA-AF5A-D39E15BB9290}"
				Class      = "String"
				Position   = "(270,750)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String5"
				GUID       = "{9673F010-F81B-46DE-847B-81E14A7823A4}"
				Class      = "String"
				Position   = "(270,900)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String6"
				GUID       = "{BF394F9E-3B30-4C34-9E1F-99FCDE2C1DD5}"
				Class      = "String"
				Position   = "(270,1050)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String7"
				GUID       = "{CF08A39C-52C0-45EC-8AEA-B2608A51FD9A}"
				Class      = "String"
				Position   = "(270,1200)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String8"
				GUID       = "{D9B5A471-D4E3-4608-AE0D-E3F9EFB9DF86}"
				Class      = "String"
				Position   = "(270,1350)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
			<Object
				Name       = "String9"
				GUID       = "{19ADB22D-C93B-436C-8F8C-24882C93390E}"
				Class      = "String"
				Position   = "(270,1500)"
				Visualized = "true"
				Remotely   = "true">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.String1" Destination="String1.Data"/>
			<Connection Source="this.String2" Destination="String2.Data"/>
			<Connection Source="this.String3" Destination="String3.Data"/>
			<Connection Source="this.String4" Destination="String4.Data"/>
			<Connection Source="this.String5" Destination="String5.Data"/>
			<Connection Source="this.String6" Destination="String6.Data"/>
			<Connection Source="this.String7" Destination="String7.Data"/>
			<Connection Source="this.String8" Destination="String8.Data"/>
			<Connection Source="this.String9" Destination="String9.Data"/>
			<Connection Source="this.String10" Destination="String10.Data"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
profileInfo : CLASS
	TYPE
#pragma pack(push, 1)
	  nameAndLength : STRUCT
	    name : gbl_datatypes::tStr20;
	    length : DINT;
	    recNr : DINT;
	  END_STRUCT;
#pragma pack(pop)
	END_TYPE
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	length1 	: SvrCh_DINT;
	recNr1 	: SvrCh_DINT;
	length2 	: SvrCh_DINT;
	recNr2 	: SvrCh_DINT;
	length3 	: SvrCh_DINT;
	recNr3 	: SvrCh_DINT;
	length4 	: SvrCh_DINT;
	recNr4 	: SvrCh_DINT;
	length5 	: SvrCh_DINT;
	recNr5 	: SvrCh_DINT;
	length6 	: SvrCh_DINT;
	recNr6 	: SvrCh_DINT;
	length7 	: SvrCh_DINT;
	recNr7 	: SvrCh_DINT;
	length8 	: SvrCh_DINT;
	recNr8 	: SvrCh_DINT;
	length9 	: SvrCh_DINT;
	recNr9 	: SvrCh_DINT;
	length10 	: SvrCh_DINT;
	recNr10 	: SvrCh_DINT;
  //Clients:
	String1 	: CltChCmd_String;
	String2 	: CltChCmd_String;
	String3 	: CltChCmd_String;
	String4 	: CltChCmd_String;
	String5 	: CltChCmd_String;
	String6 	: CltChCmd_String;
	String7 	: CltChCmd_String;
	String8 	: CltChCmd_String;
	String9 	: CltChCmd_String;
	String10 	: CltChCmd_String;
	ctrlAssemDb 	: CltChCmd_AssemblyDbV2;
  //Variables:
		oldAmountDone 	: DINT;
		oldAmountToDo 	: DINT;
		oldRecepiNr 	: UDINT;
		cntr 	: DINT;
		cntr2 	: DINT;
		cntrRec 	: DINT;
		tmpAssembly 	: AssemblyDbV2::tRecipeData;
		initDone 	: DINT;
		strEmpty 	: gbl_datatypes::tStr20;
		data : ARRAY [1..10] OF nameAndLength;

		refreshCounter 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL Background
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT := READY;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma using String
#pragma usingLtd AssemblyDbV2


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB profileInfo::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_PROFILEINFO
0$UINT, 0$UINT, (SIZEOF(::profileInfo))$UINT, 
21$UINT, 11$UINT, 0$UINT, 
TO_UDINT(2772636538), "profileInfo", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::profileInfo.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::profileInfo.length1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2727976539), "length1", 
(::profileInfo.recNr1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1247917971), "recNr1", 
(::profileInfo.length2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(999346145), "length2", 
(::profileInfo.recNr2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3546867241), "recNr2", 
(::profileInfo.length3.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1285029751), "length3", 
(::profileInfo.recNr3.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2758792895), "recNr3", 
(::profileInfo.length4.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3539167956), "length4", 
(::profileInfo.recNr4.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(973816604), "recNr4", 
(::profileInfo.length5.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2784254530), "length5", 
(::profileInfo.recNr5.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1292661642), "recNr5", 
(::profileInfo.length6.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1023216632), "length6", 
(::profileInfo.recNr6.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3557106224), "recNr6", 
(::profileInfo.length7.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1274690414), "length7", 
(::profileInfo.recNr7.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2734822054), "recNr7", 
(::profileInfo.length8.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3678742271), "length8", 
(::profileInfo.recNr8.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(868028215), "recNr8", 
(::profileInfo.length9.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2890012265), "length9", 
(::profileInfo.recNr9.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1153056673), "recNr9", 
(::profileInfo.length10.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(146853571), "length10", 
(::profileInfo.recNr10.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2643950696), "recNr10", 
//Clients:
(::profileInfo.String1.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(677614747), "String1", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String2.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2976564513), "String2", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String3.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3329095095), "String3", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String4.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1477009428), "String4", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String5.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(789467266), "String5", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String6.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3053912376), "String6", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String7.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3238015406), "String7", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String8.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1371483199), "String8", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String9.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(649600169), "String9", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.String10.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2469328505), "String10", TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 
(::profileInfo.ctrlAssemDb.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2044656588), "ctrlAssemDb", TO_UDINT(2560758913), "AssemblyDbV2", 1$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_profileInfo 1

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_profileInfo] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION profileInfo::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_profileInfo, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Init		:= #Init();
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #Background();

#pragma warning (default : 74)
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 27-12-2019: profileInfo, set profile information of 10 next assemblies in string and length dints
// stop if one is already completed

FUNCTION VIRTUAL GLOBAL profileInfo::Background
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;(* := READY *)
	END_VAR


  IF oldAmountDone <> ctrlAssemDb.AmountDone | oldAmountToDo <> ctrlAssemDb.AmountToDo |
        oldRecepiNr <> ctrlAssemDb.RecipeId | refreshCounter > 1000 THEN //on change, or after 10 seconds
        
    refreshCounter:= 0;
    oldAmountDone:= ctrlAssemDb.AmountDone;
    oldAmountToDo:= ctrlAssemDb.AmountToDo;
    oldRecepiNr:= ctrlAssemDb.RecipeId;
    cntrRec:=0;
    //first write all to empty
    FOR cntr:=1 TO 10 DO
      data[cntr].length:= 0;
      data[cntr].recNr:= 0;
      data[cntr].name:=strEmpty;
    END_FOR;


    FOR cntr:=1 TO 10 DO //try a maximum of 10 assembly's
      tmpAssembly:=ctrlAssemDb.GetRecipe(id:=to_dint(ctrlAssemDb.RecipeId)+cntrRec);
      IF tmpAssembly.amountToDo > tmpAssembly.amountDone THEN
        FOR cntr2:=1 TO tmpAssembly.amountToDo - tmpAssembly.amountDone DO
          data[cntr].name:=tmpAssembly.description;
          data[cntr].length:=tmpAssembly.inputLength;
          data[cntr].recNr:= to_dint(ctrlAssemDb.RecipeId)+cntrRec;
          cntr+=1;
          IF cntr > 10 THEN
            exit; //only fill 10 data sets
          END_IF;
        END_FOR;
        cntrRec+=1;
        cntr-= 1; //counting up is already done, and because we are in for loop it's done again
      ELSE
        exit; //stop if amount of one of the assemblies is reached
      END_IF;
    
    END_FOR;
    
    //now write data to servers
    String1.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[1].name[0]);  //.SetDataAt(pData:=#data[1].name[0], udAt:=0);
    String2.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[2].name[0]);
    String3.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[3].name[0]);
    String4.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[4].name[0]);
    String5.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[5].name[0]);
    String6.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[6].name[0]);
    String7.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[7].name[0]);
    String8.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[8].name[0]);
    String9.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[9].name[0]);
    String10.WriteDataOff(udLen:=20, udOff:=0, pData:=#data[10].name[0]);    
    length1:=data[1].length;
    length2:=data[2].length;
    length3:=data[3].length;
    length4:=data[4].length;
    length5:=data[5].length;
    length6:=data[6].length;
    length7:=data[7].length;
    length8:=data[8].length;
    length9:=data[9].length;
    length10:=data[10].length;
    recNr1:=data[1].recNr;
    recNr2:=data[2].recNr;
    recNr3:=data[3].recNr;
    recNr4:=data[4].recNr;
    recNr5:=data[5].recNr;
    recNr6:=data[6].recNr;
    recNr7:=data[7].recNr;
    recNr8:=data[8].recNr;
    recNr9:=data[9].recNr;
    recNr10:=data[10].recNr;
  ELSE
    refreshCounter+= 1;
  END_IF;
  

END_FUNCTION


FUNCTION VIRTUAL GLOBAL profileInfo::Init

  IF initDone= 0 THEN
    _memset(dest:=#strEmpty[0], usByte:=0, cntr:=SIZEOF(strEmpty));
    _memcpy(ptr1:=#strEmpty[0], ptr2:="empty", cntr:=5);
    initDone:= 1;
    
  END_IF;
  

END_FUNCTION
