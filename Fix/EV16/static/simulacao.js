/*!   GeneXus Java 16_0_6-136889 on December 29, 2021 17:53:36.37
*/
gx.evt.autoSkip=!1;gx.define("simulacao",!1,function(){var n,e,o,i,f,r,t,u;this.ServerClass="simulacao";this.PackageName="com.subadquirencia";this.setObjectType("web");this.hasEnterEvent=!1;this.skipOnEnter=!0;this.autoRefresh=!0;this.fullAjax=!0;this.supportAjaxEvents=!0;this.ajaxSecurityToken=!0;this.SetStandaloneVars=function(){this.AV21ParSis=gx.fn.getControlValue("vPARSIS");this.AV15Receber=gx.fn.getControlValue("vRECEBER");this.AV21ParSis=gx.fn.getControlValue("vPARSIS")};this.e112g2_client=function(){return this.executeServerEvent("'DOBTSIMULAR'",!1,null,!1,!1)};this.e122g2_client=function(){return this.executeServerEvent("'DOBTLIMPAR'",!1,null,!1,!1)};this.e162g2_client=function(){return this.executeServerEvent("ENTER",!0,arguments[0],!1,!1)};this.e172g2_client=function(){return this.executeServerEvent("CANCEL",!0,arguments[0],!1,!1)};this.GXValidFnc=[];n=this.GXValidFnc;this.GXCtrlIds=[2,3,4,5,6,7,8,10,11,12,13,14,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,41,42,43,44,45,46,47,48,51,52,54,58,59,60,61,63,64,66,70,71,72,73,74,75,77,78];this.GXLastCtrlId=78;this.GridreceberContainer=new gx.grid.grid(this,2,"WbpLvl2",57,"Gridreceber","Gridreceber","GridreceberContainer",this.CmpContext,this.IsMasterPage,"simulacao",[],!1,1,!1,!0,0,!0,!1,!1,"Collsdt_resultado_simulador.Item",0,"px",0,"px","Novo registro",!0,!1,!1,null,null,!1,"AV15Receber",!1,[1,1,1,1],!1,0,!0,!1);e=this.GridreceberContainer;e.addSingleLineEdit("GXV2",58,"RECEBER__TIPODEPLANO","Plano","","TipoDePlano","svchar",0,"px",40,40,"left",null,[],"GXV2","GXV2",!0,0,!1,!1,"Attribute",1,"WWColumn");e.addSingleLineEdit("GXV3",59,"RECEBER__VALORDAPARCELA","Valor Da Parcela","","ValorDaParcela","decimal",0,"px",22,22,"right",null,[],"GXV3","GXV3",!0,2,!1,!1,"Attribute",1,"WWColumn");e.addSingleLineEdit("GXV4",60,"RECEBER__VALORTOTALDAVENDA","Valor Total","","ValorTotalDaVenda","decimal",0,"px",22,22,"right",null,[],"GXV4","GXV4",!0,2,!1,!1,"Attribute",1,"WWColumn");e.addSingleLineEdit("GXV5",61,"RECEBER__VALORTOTALANTECTIPADO","Valor Antecipado","","ValorTotalAntectipado","decimal",0,"px",22,22,"right",null,[],"GXV5","GXV5",!0,2,!1,!1,"Attribute",1,"WWColumn");this.GridreceberContainer.emptyText="";this.setGrid(e);this.GridvenderContainer=new gx.grid.grid(this,3,"WbpLvl3",69,"Gridvender","Gridvender","GridvenderContainer",this.CmpContext,this.IsMasterPage,"simulacao",[],!1,1,!1,!0,0,!0,!1,!1,"Collsdt_resultado_simulador.Item",0,"px",0,"px","Novo registro",!0,!1,!1,null,null,!1,"AV18VenderPor",!1,[1,1,1,1],!1,0,!0,!1);o=this.GridvenderContainer;o.addSingleLineEdit("GXV7",70,"VENDERPOR__TIPODEPLANO","Plano","","TipoDePlano","svchar",0,"px",40,40,"left",null,[],"GXV7","GXV7",!0,0,!1,!1,"Attribute",1,"WWColumn");o.addSingleLineEdit("GXV8",71,"VENDERPOR__VALORDAPARCELA","Valor Da Parcela","","ValorDaParcela","decimal",0,"px",22,22,"right",null,[],"GXV8","GXV8",!0,2,!1,!1,"Attribute",1,"WWColumn");o.addSingleLineEdit("GXV9",72,"VENDERPOR__VALORTOTALDAVENDA","Valor Total","","ValorTotalDaVenda","decimal",0,"px",22,22,"right",null,[],"GXV9","GXV9",!0,2,!1,!1,"Attribute",1,"WWColumn");o.addSingleLineEdit("GXV10",73,"VENDERPOR__VALORTOTALANTECTIPADO","Valor Antecipado","","ValorTotalAntectipado","decimal",0,"px",22,22,"right",null,[],"GXV10","GXV10",!0,2,!1,!1,"Attribute",1,"WWColumn");this.GridvenderContainer.emptyText="";this.setGrid(o);this.DVPANEL_PDADOSContainer=gx.uc.getNew(this,15,0,"BootstrapPanel","DVPANEL_PDADOSContainer","Dvpanel_pdados","DVPANEL_PDADOS");i=this.DVPANEL_PDADOSContainer;i.setProp("Class","Class","","char");i.setProp("Enabled","Enabled",!0,"boolean");i.setProp("Width","Width","100%","str");i.setProp("Height","Height","100","str");i.setProp("AutoWidth","Autowidth",!1,"bool");i.setProp("AutoHeight","Autoheight",!0,"bool");i.setProp("Cls","Cls","PanelNoHeader","str");i.setProp("ShowHeader","Showheader",!0,"bool");i.setProp("Title","Title","Valor","str");i.setProp("Collapsible","Collapsible",!0,"bool");i.setProp("Collapsed","Collapsed",!1,"bool");i.setProp("ShowCollapseIcon","Showcollapseicon",!1,"bool");i.setProp("IconPosition","Iconposition","Right","str");i.setProp("AutoScroll","Autoscroll",!1,"bool");i.setProp("Visible","Visible",!0,"bool");i.setProp("Gx Control Type","Gxcontroltype","","int");i.setC2ShowFunction(function(n){n.show()});this.setUserControl(i);this.GXUITABSPANEL_TABRESULTADOContainer=gx.uc.getNew(this,49,25,"gx.ui.controls.Tab","GXUITABSPANEL_TABRESULTADOContainer","Gxuitabspanel_tabresultado","GXUITABSPANEL_TABRESULTADO");f=this.GXUITABSPANEL_TABRESULTADOContainer;f.setProp("Enabled","Enabled",!0,"boolean");f.setProp("ActivePage","Activepage","","int");f.setProp("ActivePageControlName","Activepagecontrolname","","char");f.setProp("PageCount","Pagecount",2,"num");f.setProp("Class","Class","","str");f.setProp("HistoryManagement","Historymanagement",!1,"bool");f.setProp("Visible","Visible",!0,"bool");f.setC2ShowFunction(function(n){n.show()});this.setUserControl(f);this.DVPANEL_UNNAMEDTABLE1Container=gx.uc.getNew(this,39,25,"BootstrapPanel","DVPANEL_UNNAMEDTABLE1Container","Dvpanel_unnamedtable1","DVPANEL_UNNAMEDTABLE1");r=this.DVPANEL_UNNAMEDTABLE1Container;r.setProp("Class","Class","","char");r.setProp("Enabled","Enabled",!0,"boolean");r.setProp("Width","Width","100%","str");r.setProp("Height","Height","100","str");r.setProp("AutoWidth","Autowidth",!1,"bool");r.setProp("AutoHeight","Autoheight",!0,"bool");r.setProp("Cls","Cls","PanelNoHeader","str");r.setProp("ShowHeader","Showheader",!0,"bool");r.setProp("Title","Title","Resultado","str");r.setProp("Collapsible","Collapsible",!0,"bool");r.setProp("Collapsed","Collapsed",!1,"bool");r.setProp("ShowCollapseIcon","Showcollapseicon",!1,"bool");r.setProp("IconPosition","Iconposition","Right","str");r.setProp("AutoScroll","Autoscroll",!1,"bool");r.setProp("Visible","Visible",!0,"bool");r.setProp("Gx Control Type","Gxcontroltype","","int");r.setC2ShowFunction(function(n){n.show()});this.setUserControl(r);this.UCMSGContainer=gx.uc.getNew(this,76,25,"DVelop_DVMessage","UCMSGContainer","Ucmsg","UCMSG");t=this.UCMSGContainer;t.setProp("Class","Class","","char");t.setProp("Enabled","Enabled",!0,"boolean");t.setProp("Width","Width","300","str");t.setProp("MinHeight","Minheight","16","str");t.setProp("StylingType","Stylingtype","fontawesome","str");t.setProp("DefaultMessageType","Defaultmessagetype","info","str");t.setProp("TitleEscape","Titleescape",!1,"bool");t.setProp("TextEscape","Textescape",!1,"bool");t.setProp("ChangeNewLinesToBRs","Changenewlinestobrs",!0,"bool");t.setProp("Hide","Hide",!0,"bool");t.setProp("DelayUntilHide","Delayuntilhide",8e3,"num");t.setProp("MouseHideReset","Mousehidereset",!0,"bool");t.setProp("MessageAdditionalClasses","Messageadditionalclasses","","str");t.setProp("MessageCornerClass","Messagecornerclass","","str");t.setProp("Shadow","Shadow",!0,"bool");t.setProp("Opacity","Opacity","1","str");t.setProp("StackVerticalFirstPos","Stackverticalfirstpos",15,"num");t.setProp("StackHorizontalFirstPos","Stackhorizontalfirstpos",15,"num");t.setProp("StackVerticalSpacing","Stackverticalspacing",15,"num");t.setProp("StackHorizontalSpacing","Stackhorizontalspacing",15,"num");t.setProp("EffectIn","Effectin","fade","str");t.setProp("EffectOut","Effectout","fade","str");t.setProp("AnimationSpeed","Animationspeed",600,"num");t.setProp("StartPosition","Startposition","TopRight","str");t.setProp("NextMessagePosition","Nextmessageposition","down","str");t.setProp("Closer","Closer",!0,"bool");t.setProp("CloserHover","Closerhover",!0,"bool");t.setProp("Sticker","Sticker",!1,"bool");t.setProp("StickerHover","Stickerhover",!0,"bool");t.setProp("LabelCloseButton","Labelclosebutton","Close","str");t.setProp("LabelStickButton","Labelstickbutton","Stick","str");t.setProp("showEvenOnNonblock","Showevenonnonblock",!1,"bool");t.setProp("NonBlock","Nonblock",!1,"bool");t.setProp("NonBlockOpacity","Nonblockopacity",".2","str");t.setProp("EnableHistory","Enablehistory",!0,"bool");t.setProp("Menu","Menu",!1,"bool");t.setProp("FixedMenu","Fixedmenu",!0,"bool");t.setProp("MaxOnScreen","Maxonscreen","Infinity","str");t.setProp("LabelRedisplay","Labelredisplay","Redisplay","str");t.setProp("LabelAll","Labelall","All","str");t.setProp("LabelLast","Labellast","Last","str");t.setProp("Visible","Visible",!0,"bool");t.setProp("Gx Control Type","Gxcontroltype","","int");t.setC2ShowFunction(function(n){n.show()});this.setUserControl(t);this.UCTTContainer=gx.uc.getNew(this,79,25,"BootstrapTooltip","UCTTContainer","Uctt","UCTT");u=this.UCTTContainer;u.setProp("Class","Class","","char");u.setProp("Enabled","Enabled",!0,"boolean");u.setProp("ClassSelector","Classselector","BootstrapTooltip","str");u.setProp("DefaultPosition","Defaultposition","right","str");u.setProp("LabelsShowDelay","Labelsshowdelay",300,"num");u.setProp("ButtonsShowDelay","Buttonsshowdelay",300,"num");u.setProp("InputsShowDelay","Inputsshowdelay",300,"num");u.setProp("ImagesShowDelay","Imagesshowdelay",0,"num");u.setProp("HideDelay","Hidedelay",0,"num");u.setProp("Visible","Visible",!0,"bool");u.setProp("Gx Control Type","Gxcontroltype","","int");u.setC2ShowFunction(function(n){n.show()});this.setUserControl(u);n[2]={id:2,fld:"",grid:0};n[3]={id:3,fld:"LAYOUTMAINTABLE",grid:0};n[4]={id:4,fld:"",grid:0};n[5]={id:5,fld:"",grid:0};n[6]={id:6,fld:"TABLEMAIN",grid:0};n[7]={id:7,fld:"",grid:0};n[8]={id:8,fld:"",grid:0};n[10]={id:10,fld:"",grid:0};n[11]={id:11,fld:"",grid:0};n[12]={id:12,fld:"TABLECONTENT",grid:0};n[13]={id:13,fld:"",grid:0};n[14]={id:14,fld:"",grid:0};n[17]={id:17,fld:"PDADOS",grid:0};n[18]={id:18,fld:"",grid:0};n[19]={id:19,fld:"",grid:0};n[20]={id:20,fld:"UNNAMEDTABLE4",grid:0};n[21]={id:21,fld:"",grid:0};n[22]={id:22,fld:"",grid:0};n[23]={id:23,fld:"",grid:0};n[24]={id:24,fld:"",grid:0};n[25]={id:25,lvl:0,type:"decimal",len:18,dec:2,sign:!1,pic:"R$ ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:0,grid:0,gxgrid:null,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"vVALOR",gxz:"ZV17Valor",gxold:"OV17Valor",gxvar:"AV17Valor",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",v2v:function(n){n!==undefined&&(gx.O.AV17Valor=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV17Valor=gx.fn.toDecimalValue(n,".",","))},v2c:function(){gx.fn.setDecimalValue("vVALOR",gx.O.AV17Valor,2,",")},c2v:function(){this.val()!==undefined&&(gx.O.AV17Valor=this.val())},val:function(){return gx.fn.getDecimalValue("vVALOR",".",",")},nac:gx.falseFn};n[26]={id:26,fld:"",grid:0};n[27]={id:27,fld:"",grid:0};n[28]={id:28,fld:"",grid:0};n[29]={id:29,lvl:0,type:"svchar",len:1,dec:0,sign:!1,ro:0,grid:0,gxgrid:null,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"vBANDEIRA",gxz:"ZV5Bandeira",gxold:"OV5Bandeira",gxvar:"AV5Bandeira",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"dyncombo",v2v:function(n){n!==undefined&&(gx.O.AV5Bandeira=n)},v2z:function(n){n!==undefined&&(gx.O.ZV5Bandeira=n)},v2c:function(){gx.fn.setComboBoxValue("vBANDEIRA",gx.O.AV5Bandeira)},c2v:function(){this.val()!==undefined&&(gx.O.AV5Bandeira=this.val())},val:function(){return gx.fn.getControlValue("vBANDEIRA")},nac:gx.falseFn};n[30]={id:30,fld:"",grid:0};n[31]={id:31,fld:"",grid:0};n[32]={id:32,fld:"",grid:0};n[33]={id:33,fld:"",grid:0};n[34]={id:34,fld:"BTNBTSIMULAR",grid:0,evt:"e112g2_client"};n[35]={id:35,fld:"",grid:0};n[36]={id:36,fld:"BTNBTLIMPAR",grid:0,evt:"e122g2_client"};n[37]={id:37,fld:"",grid:0};n[38]={id:38,fld:"",grid:0};n[41]={id:41,fld:"UNNAMEDTABLE1",grid:0};n[42]={id:42,fld:"",grid:0};n[43]={id:43,fld:"",grid:0};n[44]={id:44,fld:"",grid:0};n[45]={id:45,fld:"",grid:0};n[46]={id:46,lvl:0,type:"decimal",len:7,dec:2,sign:!1,pic:"ZZZ9.99",ro:0,grid:0,gxgrid:null,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"vESTTAXANT",gxz:"ZV20EstTaxAnt",gxold:"OV20EstTaxAnt",gxvar:"AV20EstTaxAnt",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",v2v:function(n){n!==undefined&&(gx.O.AV20EstTaxAnt=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV20EstTaxAnt=gx.fn.toDecimalValue(n,".",","))},v2c:function(){gx.fn.setDecimalValue("vESTTAXANT",gx.O.AV20EstTaxAnt,2,",")},c2v:function(){this.val()!==undefined&&(gx.O.AV20EstTaxAnt=this.val())},val:function(){return gx.fn.getDecimalValue("vESTTAXANT",".",",")},nac:gx.falseFn};n[47]={id:47,fld:"",grid:0};n[48]={id:48,fld:"",grid:0};n[51]={id:51,fld:"TABRECEBER_TITLE",format:0,grid:0};n[52]={id:52,fld:"",grid:0};n[54]={id:54,fld:"UNNAMEDTABLE3",grid:0};n[58]={id:58,lvl:2,type:"svchar",len:40,dec:0,sign:!1,ro:1,isacc:0,grid:57,gxgrid:this.GridreceberContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"RECEBER__TIPODEPLANO",gxz:"ZV28GXV2",gxold:"OV28GXV2",gxvar:"GXV2",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",autoCorrect:"1",v2v:function(n){n!==undefined&&(gx.O.GXV2=n)},v2z:function(n){n!==undefined&&(gx.O.ZV28GXV2=n)},v2c:function(n){gx.fn.setGridControlValue("RECEBER__TIPODEPLANO",n||gx.fn.currentGridRowImpl(57),gx.O.GXV2,0)},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV2=this.val(n))},val:function(n){return gx.fn.getGridControlValue("RECEBER__TIPODEPLANO",n||gx.fn.currentGridRowImpl(57))},nac:gx.falseFn};n[59]={id:59,lvl:2,type:"decimal",len:18,dec:2,sign:!0,pic:"ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:1,isacc:0,grid:57,gxgrid:this.GridreceberContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"RECEBER__VALORDAPARCELA",gxz:"ZV29GXV3",gxold:"OV29GXV3",gxvar:"GXV3",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",v2v:function(n){n!==undefined&&(gx.O.GXV3=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV29GXV3=gx.fn.toDecimalValue(n,".",","))},v2c:function(n){gx.fn.setGridDecimalValue("RECEBER__VALORDAPARCELA",n||gx.fn.currentGridRowImpl(57),gx.O.GXV3,2,",")},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV3=this.val(n))},val:function(n){return gx.fn.getGridDecimalValue("RECEBER__VALORDAPARCELA",n||gx.fn.currentGridRowImpl(57),".",",")},nac:gx.falseFn};n[60]={id:60,lvl:2,type:"decimal",len:18,dec:2,sign:!0,pic:"ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:1,isacc:0,grid:57,gxgrid:this.GridreceberContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"RECEBER__VALORTOTALDAVENDA",gxz:"ZV30GXV4",gxold:"OV30GXV4",gxvar:"GXV4",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",v2v:function(n){n!==undefined&&(gx.O.GXV4=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV30GXV4=gx.fn.toDecimalValue(n,".",","))},v2c:function(n){gx.fn.setGridDecimalValue("RECEBER__VALORTOTALDAVENDA",n||gx.fn.currentGridRowImpl(57),gx.O.GXV4,2,",")},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV4=this.val(n))},val:function(n){return gx.fn.getGridDecimalValue("RECEBER__VALORTOTALDAVENDA",n||gx.fn.currentGridRowImpl(57),".",",")},nac:gx.falseFn};n[61]={id:61,lvl:2,type:"decimal",len:18,dec:2,sign:!0,pic:"ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:1,isacc:0,grid:57,gxgrid:this.GridreceberContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"RECEBER__VALORTOTALANTECTIPADO",gxz:"ZV31GXV5",gxold:"OV31GXV5",gxvar:"GXV5",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",v2v:function(n){n!==undefined&&(gx.O.GXV5=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV31GXV5=gx.fn.toDecimalValue(n,".",","))},v2c:function(n){gx.fn.setGridDecimalValue("RECEBER__VALORTOTALANTECTIPADO",n||gx.fn.currentGridRowImpl(57),gx.O.GXV5,2,",")},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV5=this.val(n))},val:function(n){return gx.fn.getGridDecimalValue("RECEBER__VALORTOTALANTECTIPADO",n||gx.fn.currentGridRowImpl(57),".",",")},nac:gx.falseFn};n[63]={id:63,fld:"TABVENDERPOR_TITLE",format:0,grid:0};n[64]={id:64,fld:"",grid:0};n[66]={id:66,fld:"UNNAMEDTABLE2",grid:0};n[70]={id:70,lvl:3,type:"svchar",len:40,dec:0,sign:!1,ro:1,isacc:0,grid:69,gxgrid:this.GridvenderContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"VENDERPOR__TIPODEPLANO",gxz:"ZV33GXV7",gxold:"OV33GXV7",gxvar:"GXV7",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",autoCorrect:"1",v2v:function(n){n!==undefined&&(gx.O.GXV7=n)},v2z:function(n){n!==undefined&&(gx.O.ZV33GXV7=n)},v2c:function(n){gx.fn.setGridControlValue("VENDERPOR__TIPODEPLANO",n||gx.fn.currentGridRowImpl(69),gx.O.GXV7,0)},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV7=this.val(n))},val:function(n){return gx.fn.getGridControlValue("VENDERPOR__TIPODEPLANO",n||gx.fn.currentGridRowImpl(69))},nac:gx.falseFn};n[71]={id:71,lvl:3,type:"decimal",len:18,dec:2,sign:!0,pic:"ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:1,isacc:0,grid:69,gxgrid:this.GridvenderContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"VENDERPOR__VALORDAPARCELA",gxz:"ZV34GXV8",gxold:"OV34GXV8",gxvar:"GXV8",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",v2v:function(n){n!==undefined&&(gx.O.GXV8=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV34GXV8=gx.fn.toDecimalValue(n,".",","))},v2c:function(n){gx.fn.setGridDecimalValue("VENDERPOR__VALORDAPARCELA",n||gx.fn.currentGridRowImpl(69),gx.O.GXV8,2,",")},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV8=this.val(n))},val:function(n){return gx.fn.getGridDecimalValue("VENDERPOR__VALORDAPARCELA",n||gx.fn.currentGridRowImpl(69),".",",")},nac:gx.falseFn};n[72]={id:72,lvl:3,type:"decimal",len:18,dec:2,sign:!0,pic:"ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:1,isacc:0,grid:69,gxgrid:this.GridvenderContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"VENDERPOR__VALORTOTALDAVENDA",gxz:"ZV35GXV9",gxold:"OV35GXV9",gxvar:"GXV9",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",v2v:function(n){n!==undefined&&(gx.O.GXV9=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV35GXV9=gx.fn.toDecimalValue(n,".",","))},v2c:function(n){gx.fn.setGridDecimalValue("VENDERPOR__VALORTOTALDAVENDA",n||gx.fn.currentGridRowImpl(69),gx.O.GXV9,2,",")},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV9=this.val(n))},val:function(n){return gx.fn.getGridDecimalValue("VENDERPOR__VALORTOTALDAVENDA",n||gx.fn.currentGridRowImpl(69),".",",")},nac:gx.falseFn};n[73]={id:73,lvl:3,type:"decimal",len:18,dec:2,sign:!0,pic:"ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99",ro:1,isacc:0,grid:69,gxgrid:this.GridvenderContainer,fnc:null,isvalid:null,evt_cvc:null,evt_cvcing:null,rgrid:[],fld:"VENDERPOR__VALORTOTALANTECTIPADO",gxz:"ZV36GXV10",gxold:"OV36GXV10",gxvar:"GXV10",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",inputType:"text",v2v:function(n){n!==undefined&&(gx.O.GXV10=gx.fn.toDecimalValue(n,",","."))},v2z:function(n){n!==undefined&&(gx.O.ZV36GXV10=gx.fn.toDecimalValue(n,".",","))},v2c:function(n){gx.fn.setGridDecimalValue("VENDERPOR__VALORTOTALANTECTIPADO",n||gx.fn.currentGridRowImpl(69),gx.O.GXV10,2,",")},c2v:function(n){this.val(n)!==undefined&&(gx.O.GXV10=this.val(n))},val:function(n){return gx.fn.getGridDecimalValue("VENDERPOR__VALORTOTALANTECTIPADO",n||gx.fn.currentGridRowImpl(69),".",",")},nac:gx.falseFn};n[74]={id:74,fld:"",grid:0};n[75]={id:75,fld:"",grid:0};n[77]={id:77,fld:"",grid:0};n[78]={id:78,fld:"",grid:0};this.AV17Valor=0;this.ZV17Valor=0;this.OV17Valor=0;this.AV5Bandeira="";this.ZV5Bandeira="";this.OV5Bandeira="";this.AV20EstTaxAnt=0;this.ZV20EstTaxAnt=0;this.OV20EstTaxAnt=0;this.ZV28GXV2="";this.OV28GXV2="";this.ZV29GXV3=0;this.OV29GXV3=0;this.ZV30GXV4=0;this.OV30GXV4=0;this.ZV31GXV5=0;this.OV31GXV5=0;this.ZV33GXV7="";this.OV33GXV7="";this.ZV34GXV8=0;this.OV34GXV8=0;this.ZV35GXV9=0;this.OV35GXV9=0;this.ZV36GXV10=0;this.OV36GXV10=0;this.AV17Valor=0;this.AV5Bandeira="";this.AV20EstTaxAnt=0;this.GXV2="";this.GXV3=0;this.GXV4=0;this.GXV5=0;this.GXV7="";this.GXV8=0;this.GXV9=0;this.GXV10=0;this.AV21ParSis={Ung2Cod:0,DirHom:"",TabVenQtdOptPar:"",RmbArqHorIni:"",RmbArqHorFim:"",RmbLnxWin:"",AdmEml:"",Cnab_Banese:"",ArqBanPthRet:"",AdqCod:0,HorVerDatIni:gx.date.nullDate(),HorVerDatFim:gx.date.nullDate(),IndMccDin:!1,FlgNewTab:"",FlgNewTabPrc:"",AudTaxBan:!1,IndAmbHom:!1,FrmClcTaxAdm:0,IgnoraAJRelatorios:!1,IgnoraMCCRedeCaptura:!1};this.AV15Receber=[];this.Events={e112g2_client:["'DOBTSIMULAR'",!0],e122g2_client:["'DOBTLIMPAR'",!0],e162g2_client:["ENTER",!0],e172g2_client:["CANCEL",!0]};this.EvtParms.REFRESH=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"GRIDVENDER_nEOF"},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{ctrl:"GRIDVENDER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.START=[[{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{av:'gx.fn.getCtrlProperty("vVALOR","Tooltiptext")',ctrl:"vVALOR",prop:"Tooltiptext"},{ctrl:"GRIDVENDER",prop:"Rows"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV17Valor",fld:"vVALOR",pic:"R$ ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99"},{av:'gx.fn.getCtrlProperty("vESTTAXANT","Visible")',ctrl:"vESTTAXANT",prop:"Visible"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{ctrl:"RECEBER__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"VENDERPOR__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms["GRIDVENDER.LOAD"]=[[{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"RECEBER__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"VENDERPOR__VALORTOTALANTECTIPADO",prop:"Visible"},{av:'gx.fn.getCtrlProperty("vESTTAXANT","Visible")',ctrl:"vESTTAXANT",prop:"Visible"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms["GRIDRECEBER.LOAD"]=[[{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"RECEBER__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"VENDERPOR__VALORTOTALANTECTIPADO",prop:"Visible"},{av:'gx.fn.getCtrlProperty("vESTTAXANT","Visible")',ctrl:"vESTTAXANT",prop:"Visible"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms["'DOBTSIMULAR'"]=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"GRIDVENDER_nEOF"},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{ctrl:"GRIDVENDER",prop:"Rows"},{av:"AV17Valor",fld:"vVALOR",pic:"R$ ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99"},{av:"subGridreceber_Rows"},{av:"subGridvender_Rows"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{av:"AV20EstTaxAnt",fld:"vESTTAXANT",pic:"ZZZ9.99"},{ctrl:"RECEBER__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"VENDERPOR__VALORTOTALANTECTIPADO",prop:"Visible"},{av:'gx.fn.getCtrlProperty("vESTTAXANT","Visible")',ctrl:"vESTTAXANT",prop:"Visible"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms["'DOBTLIMPAR'"]=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"subGridreceber_Rows"},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{av:"GRIDVENDER_nEOF"},{av:"subGridvender_Rows"},{ctrl:"GRIDVENDER",prop:"Rows"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{av:"AV17Valor",fld:"vVALOR",pic:"R$ ZZZ,ZZZ,ZZZ,ZZZ,ZZ9.99"},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{av:'gx.fn.getCtrlProperty("vESTTAXANT","Visible")',ctrl:"vESTTAXANT",prop:"Visible"},{ctrl:"RECEBER__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"VENDERPOR__VALORTOTALANTECTIPADO",prop:"Visible"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDRECEBER_FIRSTPAGE=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDRECEBER_PREVPAGE=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDRECEBER_NEXTPAGE=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDRECEBER_LASTPAGE=[[{av:"GRIDRECEBER_nFirstRecordOnPage"},{av:"GRIDRECEBER_nEOF"},{ctrl:"GRIDRECEBER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV15Receber",fld:"vRECEBER",grid:57,pic:""},{av:"nRC_GXsfl_57",ctrl:"GRIDRECEBER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDVENDER_FIRSTPAGE=[[{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"GRIDVENDER_nEOF"},{ctrl:"GRIDVENDER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDVENDER_PREVPAGE=[[{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"GRIDVENDER_nEOF"},{ctrl:"GRIDVENDER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDVENDER_NEXTPAGE=[[{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"GRIDVENDER_nEOF"},{ctrl:"GRIDVENDER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.EvtParms.GRIDVENDER_LASTPAGE=[[{av:"GRIDVENDER_nFirstRecordOnPage"},{av:"GRIDVENDER_nEOF"},{ctrl:"GRIDVENDER",prop:"Rows"},{av:"AV21ParSis",fld:"vPARSIS",pic:"",hsh:!0},{av:"AV18VenderPor",fld:"vVENDERPOR",grid:69,pic:""},{av:"nRC_GXsfl_69",ctrl:"GRIDVENDER",prop:"GridRC"},{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}],[{ctrl:"vBANDEIRA"},{av:"AV5Bandeira",fld:"vBANDEIRA",pic:""}]];this.setVCMap("AV21ParSis","vPARSIS",0,"PARSIS0002",0,0);this.setVCMap("AV15Receber","vRECEBER",0,"Collsdt_resultado_simulador.Item",0,0);this.setVCMap("AV21ParSis","vPARSIS",0,"PARSIS0002",0,0);this.setVCMap("AV21ParSis","vPARSIS",0,"PARSIS0002",0,0);e.addRefreshingVar({rfrVar:"AV21ParSis"});e.addRefreshingParm({rfrVar:"AV21ParSis"});e.addRefreshingParm(this.GXValidFnc[29]);o.addRefreshingVar({rfrVar:"AV21ParSis"});o.addRefreshingParm({rfrVar:"AV21ParSis"});o.addRefreshingParm(this.GXValidFnc[29]);this.addGridBCProperty("Receber",["TipoDePlano"],this.GXValidFnc[58],"AV15Receber");this.addGridBCProperty("Receber",["ValorDaParcela"],this.GXValidFnc[59],"AV15Receber");this.addGridBCProperty("Receber",["ValorTotalDaVenda"],this.GXValidFnc[60],"AV15Receber");this.addGridBCProperty("Receber",["ValorTotalAntectipado"],this.GXValidFnc[61],"AV15Receber");this.addGridBCProperty("Venderpor",["TipoDePlano"],this.GXValidFnc[70],"AV18VenderPor");this.addGridBCProperty("Venderpor",["ValorDaParcela"],this.GXValidFnc[71],"AV18VenderPor");this.addGridBCProperty("Venderpor",["ValorTotalDaVenda"],this.GXValidFnc[72],"AV18VenderPor");this.addGridBCProperty("Venderpor",["ValorTotalAntectipado"],this.GXValidFnc[73],"AV18VenderPor");this.Initialize()});gx.wi(function(){gx.createParentObj(simulacao)})