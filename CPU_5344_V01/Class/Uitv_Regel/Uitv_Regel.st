//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "Uitv_Regel"
	Revision           = "0.0"
	GUID               = "{C1DC2256-EFC6-4901-829B-EFCF09D93CE4}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(300,720)">
	<Channels>
		<Server Name="actione" GUID="{0212FC05-4422-4B2E-8894-92AA7FAC1384}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="ClassSvr" GUID="{9CF7DAE2-85E1-43DA-8B8A-E03988B44888}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="Cmd" GUID="{EA749F08-58D0-45D6-B0E3-8DE5458FF3F9}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="outputRule" GUID="{022612E5-CD64-4A7A-B4A6-3220AD05AD57}" Visualized="false" Initialize="true" DefValue="0" WriteProtected="false" Retentive="false"/>
		<Server Name="Rnr" GUID="{4EF64556-3957-4568-A02A-813BA3B51260}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="speed" GUID="{297CA3A8-1C0F-466D-BC37-6C0FF252A67A}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Units" GUID="{550AD941-DA6A-4430-B8DC-BEDF8871604B}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="volgorde" GUID="{F6F8CEDA-0FB2-4E81-95EE-D5E3579D6C0E}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="x1pos" GUID="{90ED08F3-C57B-412F-9520-816B5F063E0A}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="xy1Angle" GUID="{F4921EC1-0F17-4A2A-962B-E3380040ACBE}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="xz1Angle" GUID="{6804B8E0-A266-4300-BF87-E179EC408C11}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="y1pos" GUID="{55536E88-3427-4D76-ACA2-54E220E6CCAB}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="z1pos" GUID="{7D6839A2-02BD-4BAB-BFA3-BA6915936F1F}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="zy1Angle" GUID="{57D22686-8945-4010-9B96-BB2F80425316}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="list" Required="true" Internal="false"/>
		<Client Name="nextRegel" Required="false" Internal="false"/>
	</Channels>
</Class>
*)
Uitv_Regel : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	Rnr 	: SvrCh_DINT;
	Cmd 	: SvrCh_DINT;
	Units 	: SvrCh_BDINT;
	x1pos 	: SvrCh_DINT;
	y1pos 	: SvrCh_DINT;
	z1pos 	: SvrCh_DINT;
	zy1Angle 	: SvrCh_DINT;
	xz1Angle 	: SvrCh_DINT;
	xy1Angle 	: SvrCh_DINT;
	actione 	: SvrCh_DINT;
	speed 	: SvrCh_DINT;
	volgorde 	: SvrCh_DINT;
	outputRule 	: SvrCh_DINT;
  //Clients:
	nextRegel 	: CltCh_DINT;
	list 	: CltChCmd_GlobalList;
  //Variables:
		conNext 	: DINT;
		actRegel 	: SRegelInfo;
		cntr 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL ClassSvr::Write
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

#pragma usingLtd GlobalList


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB Uitv_Regel::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_UITV_REGEL
0$UINT, 0$UINT, (SIZEOF(::Uitv_Regel))$UINT, 
14$UINT, 2$UINT, 0$UINT, 
TO_UDINT(3416199855), "Uitv_Regel", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::Uitv_Regel.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::Uitv_Regel.Rnr.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2078699935), "Rnr", 
(::Uitv_Regel.Cmd.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3120258634), "Cmd", 
(::Uitv_Regel.Units.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(518305529), "Units", 
(::Uitv_Regel.x1pos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1877578215), "x1pos", 
(::Uitv_Regel.y1pos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1384757335), "y1pos", 
(::Uitv_Regel.z1pos.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(355058311), "z1pos", 
(::Uitv_Regel.zy1Angle.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3914873007), "zy1Angle", 
(::Uitv_Regel.xz1Angle.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2593465679), "xz1Angle", 
(::Uitv_Regel.xy1Angle.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2877112274), "xy1Angle", 
(::Uitv_Regel.actione.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3470375588), "actione", 
(::Uitv_Regel.speed.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4168236102), "speed", 
(::Uitv_Regel.volgorde.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3901612893), "volgorde", 
(::Uitv_Regel.outputRule.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2258520770), "outputRule", 
//Clients:
(::Uitv_Regel.nextRegel.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2141844633), "nextRegel", 
(::Uitv_Regel.list.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1918703020), "list", TO_UDINT(2390595228), "GlobalList", 0$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_Uitv_Regel 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_Uitv_Regel] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION Uitv_Regel::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_Uitv_Regel, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Write		:= #Write();
	vmt.CmdTable.Init		:= #Init();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Rnr.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Rnr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	outputRule.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF outputRule.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL Uitv_Regel::Init
  conNext := IsClientConnected(#nextRegel);

END_FUNCTION


FUNCTION VIRTUAL GLOBAL Uitv_Regel::ClassSvr::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR  

  //JdK 2-4-2019: made difference between lines for input and output system
  if ClassSvr <> input & input >= 0 & input < 5*CMAXREGEL then
    if input > ClassSvr then //JdK 22-4-2019 make it possible to go forward and back
      for cntr:=input to 5*CMAXREGEL do
        // we gaan deze regel ophalen uit de tabel
        actRegel := list.readLine(Nr:=cntr);
        if (actRegel.Units.DoWithOutput=0 & outputRule=0) | (actRegel.Units.DoWithOutput=1 & outputRule=1) then
        
          
          ClassSvr := cntr;


          
          // schrijf dit naar huidige data
          Rnr := ClassSvr;
          Cmd := actRegel.Command;
          Units := actRegel.Units;
          x1pos := actRegel.x1Pos;
          y1pos := actRegel.y1Pos;
          z1pos := actRegel.z1Pos;
          zy1Angle := actRegel.zy1Angle;
          xz1Angle := actRegel.xz1Angle;
          xy1Angle := actRegel.xy1Angle;
          actione := actRegel.actione;
          speed := actRegel.speed;
          // als de regel hierna bestaat hier het volgende rnr naartoe schrijven
          if conNext then
            nextRegel.Write(input:=ClassSvr+1);
          end_if;
          exit;
        end_if;
      end_for;
    else
      for cntr:=input to 0 by -1 do
        // we gaan deze regel ophalen uit de tabel
        actRegel := list.readLine(Nr:=cntr);
        if (actRegel.Units.DoWithOutput=0 & outputRule=0) | (actRegel.Units.DoWithOutput=1 & outputRule=1) then
        
          
          ClassSvr := cntr;


          
          // schrijf dit naar huidige data
          Rnr := ClassSvr;
          Cmd := actRegel.Command;
          Units := actRegel.Units;
          x1pos := actRegel.x1Pos;
          y1pos := actRegel.y1Pos;
          z1pos := actRegel.z1Pos;
          zy1Angle := actRegel.zy1Angle;
          xz1Angle := actRegel.xz1Angle;
          xy1Angle := actRegel.xy1Angle;
          actione := actRegel.actione;
          speed := actRegel.speed;
          // als de regel hierna bestaat hier het volgende rnr naartoe schrijven
          if conNext then
            nextRegel.Write(input:=ClassSvr+1);
          end_if;
          exit;
        end_if;
      end_for;    
    end_if;
  end_if;    
	result := ClassSvr;

END_FUNCTION
