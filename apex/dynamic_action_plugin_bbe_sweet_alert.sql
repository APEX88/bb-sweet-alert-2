prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7647952902809282
,p_default_application_id=>103
,p_default_id_offset=>10249793742143532
,p_default_owner=>'WKSP_DEMO'
);
end;
/
 
prompt APPLICATION 103 - APEX OCI AI
--
-- Application Export:
--   Application:     103
--   Name:            APEX OCI AI
--   Date and Time:   14:31 Monday September 23, 2024
--   Exported By:     DEMO
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 14475058735422507
--   Manifest End
--   Version:         24.1.1
--   Instance ID:     7647774669774403
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/bbe_sweet_alert
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(14475058735422507)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'BBE_SWEET_ALERT'
,p_display_name=>'Sweet Alert'
,p_category=>'NOTIFICATION'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#sweetalert2.all.min.js',
'#PLUGIN_FILES#bbesweetalertPlugin#MIN#.js'))
,p_css_file_urls=>'#APP_FILES#sweetalert2.min.css'
,p_api_version=>1
,p_render_function=>'bbe_plugin.render'
,p_standard_attributes=>'ONLOAD:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT:INIT_JAVASCRIPT_CODE'
,p_substitute_attributes=>true
,p_version_scn=>41134221041565
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'An Oracle APEX dynamic action plug-in built on top of the SweetAlert2 library. ',
'A beautiful, responsive, customizable and accessible (WAI-ARIA) replacement for JavaScript''''s popup boxes, supported fork of sweetalert.',
'https://sweetalert2.github.io/'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/APEX88/bbe-sweet-alert-2'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'An Oracle APEX dynamic action plug-in built on top of the SweetAlert2 library. ',
'A beautiful, responsive, customizable and accessible (WAI-ARIA) replacement for JavaScript''''s popup boxes, supported fork of sweetalert.',
'https://sweetalert2.github.io/'))
,p_files_version=>45
,p_created_on=>wwv_flow_imp.dz('20240919093403Z')
,p_updated_on=>wwv_flow_imp.dz('20240923140651Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14479066018431917)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_help_text=>'The title of the Alert'
,p_created_on=>wwv_flow_imp.dz('20240919093537Z')
,p_updated_on=>wwv_flow_imp.dz('20240919104930Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14479396792432533)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Message'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_help_text=>'The required message of the Alert'
,p_created_on=>wwv_flow_imp.dz('20240919093543Z')
,p_updated_on=>wwv_flow_imp.dz('20240919104945Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14479660059434409)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Icon List'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'success'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(14518102256067388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'Predefined most used icons and associated colors (Success, Error, Warning, Information or Question)'
,p_created_on=>wwv_flow_imp.dz('20240919093602Z')
,p_updated_on=>wwv_flow_imp.dz('20240919112213Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14479919185434988)
,p_plugin_attribute_id=>wwv_flow_imp.id(14479660059434409)
,p_display_sequence=>10
,p_display_value=>'Success'
,p_return_value=>'success'
,p_created_on=>wwv_flow_imp.dz('20240919093608Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093608Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14480326046435440)
,p_plugin_attribute_id=>wwv_flow_imp.id(14479660059434409)
,p_display_sequence=>20
,p_display_value=>'Error'
,p_return_value=>'error'
,p_created_on=>wwv_flow_imp.dz('20240919093612Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093612Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14480743997436008)
,p_plugin_attribute_id=>wwv_flow_imp.id(14479660059434409)
,p_display_sequence=>30
,p_display_value=>'Warning'
,p_return_value=>'warning'
,p_created_on=>wwv_flow_imp.dz('20240919093618Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093618Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14481100350436673)
,p_plugin_attribute_id=>wwv_flow_imp.id(14479660059434409)
,p_display_sequence=>40
,p_display_value=>'Information'
,p_return_value=>'info'
,p_created_on=>wwv_flow_imp.dz('20240919093625Z')
,p_updated_on=>wwv_flow_imp.dz('20240919111227Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14481503962437203)
,p_plugin_attribute_id=>wwv_flow_imp.id(14479660059434409)
,p_display_sequence=>50
,p_display_value=>'Question'
,p_return_value=>'question'
,p_created_on=>wwv_flow_imp.dz('20240919093630Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093630Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14482094385440232)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(14518102256067388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'To modify the color of an Icon; enter either the color name, hexa code or CSS variable as in the example bellow :',
'<ul>',
'<li>Color name   : Orange</li>',
'<li>Hexa code    : #e18212</li>',
'<li>CSS variable : var(--rw-palette-orange-80)</li>',
'</ul>'))
,p_help_text=>'Modify the color of the selected Icon (List or Font Class)'
,p_created_on=>wwv_flow_imp.dz('20240919093700Z')
,p_updated_on=>wwv_flow_imp.dz('20240919114108Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14493238838757110)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>35
,p_prompt=>'Font Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(14479660059434409)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NULL'
,p_examples=>'fa fa-404 fa-2x'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://apex.oracle.com/pls/apex/r/apex_pm/ut211/icons',
'<BR>Font APEX icons - There are over 1150 icons in Font APEX, and there are 25 modifiers you can place on top of any existing icons so you can customize any icon to fit your needs'))
,p_created_on=>wwv_flow_imp.dz('20240919102949Z')
,p_updated_on=>wwv_flow_imp.dz('20240919113758Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14482673812444601)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Animation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(14518102256067388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'To animate either the Icon List or Font Class, by default is set to Yes (true)'
,p_created_on=>wwv_flow_imp.dz('20240919093744Z')
,p_updated_on=>wwv_flow_imp.dz('20240923140643Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14482900607445326)
,p_plugin_attribute_id=>wwv_flow_imp.id(14482673812444601)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'true'
,p_created_on=>wwv_flow_imp.dz('20240919093751Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093751Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(14483358809446156)
,p_plugin_attribute_id=>wwv_flow_imp.id(14482673812444601)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'false'
,p_created_on=>wwv_flow_imp.dz('20240919093759Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093759Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14518102256067388)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>25
,p_prompt=>'Icon'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'To have an Icon or not in the alert.'
,p_created_on=>wwv_flow_imp.dz('20240919112132Z')
,p_updated_on=>wwv_flow_imp.dz('20240919113326Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14556920222020354)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Confirm Button'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_created_on=>wwv_flow_imp.dz('20240919140021Z')
,p_updated_on=>wwv_flow_imp.dz('20240919143203Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14557677973023436)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Confirm Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(14556920222020354)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_created_on=>wwv_flow_imp.dz('20240919140052Z')
,p_updated_on=>wwv_flow_imp.dz('20240919140128Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(14568734471130597)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Confirm Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(14556920222020354)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_created_on=>wwv_flow_imp.dz('20240919141844Z')
,p_updated_on=>wwv_flow_imp.dz('20240919141844Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15940165875712100)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>22
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'center'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'To manage the popup window position, can be :',
'<ul>',
'<li>Top</li>',
'<li>Top Start</li>',
'<li>Top End</li>',
'<li>Center</li>',
'<li>Center Start</li>',
'<li>Center End</li>',
'<li>Bottom</li>',
'<li>Bottom Start</li>',
'<li>Bottom End</li>',
'</ul>'))
,p_help_text=>'To manage the popup window position, can be ''Top'', ''Top Start'', ''Top End'', ''Center'', ''Center Start'', ''Center End'', ''Bottom'', ''Bottom Start'', or ''Bottom End''.'
,p_created_on=>wwv_flow_imp.dz('20240923113539Z')
,p_updated_on=>wwv_flow_imp.dz('20240923114959Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15943206937713403)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>10
,p_display_value=>'Top'
,p_return_value=>'top'
,p_created_on=>wwv_flow_imp.dz('20240923113552Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113552Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15946359969716198)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>20
,p_display_value=>'Top Start'
,p_return_value=>'top-start'
,p_created_on=>wwv_flow_imp.dz('20240923113620Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113620Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15946793820718042)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>30
,p_display_value=>'Top End'
,p_return_value=>'top-end'
,p_created_on=>wwv_flow_imp.dz('20240923113638Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113638Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15947144809718722)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>40
,p_display_value=>'Center'
,p_return_value=>'center'
,p_created_on=>wwv_flow_imp.dz('20240923113645Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113645Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15947566890720898)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>50
,p_display_value=>'Center Start'
,p_return_value=>'center-start'
,p_created_on=>wwv_flow_imp.dz('20240923113707Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113707Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15947933602722653)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>60
,p_display_value=>'Center End'
,p_return_value=>'center-end'
,p_created_on=>wwv_flow_imp.dz('20240923113724Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113724Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15948352385723946)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>70
,p_display_value=>'Bottom'
,p_return_value=>'bottom'
,p_created_on=>wwv_flow_imp.dz('20240923113737Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113737Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15948763759725665)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>80
,p_display_value=>'Bottom Start'
,p_return_value=>'bottom-start'
,p_created_on=>wwv_flow_imp.dz('20240923113754Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113819Z')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(15949166387727070)
,p_plugin_attribute_id=>wwv_flow_imp.id(15940165875712100)
,p_display_sequence=>90
,p_display_value=>'Bottom End'
,p_return_value=>'bottom-start'
,p_created_on=>wwv_flow_imp.dz('20240923113809Z')
,p_updated_on=>wwv_flow_imp.dz('20240923113809Z')
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15975734289308007)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>23
,p_prompt=>'Background'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_default_value=>'#fff'
,p_is_translatable=>false
,p_examples=>'#9387bd'
,p_help_text=>'To manage the popup window background (CSS background property). The default background is ''#fff''.'
,p_created_on=>wwv_flow_imp.dz('20240923131458Z')
,p_updated_on=>wwv_flow_imp.dz('20240923131642Z')
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(14475335701422514)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_name=>'INIT_JAVASCRIPT_CODE'
,p_is_required=>false
,p_created_on=>wwv_flow_imp.dz('20240919093403Z')
,p_updated_on=>wwv_flow_imp.dz('20240919093403Z')
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172206262655F706C7567696E203D207B0A20202020696E697469616C697A653A66756E6374696F6E28297B0A202020202275736520737472696374223B0A202020200A202020207661722064613D746869733B0A20202020617065782E6465627567';
wwv_flow_imp.g_varchar2_table(2) := '2E6C6F6728276262655F706C7567696E2E696E697469616C697A65272C6461293B0A0A20202020766172206D657373616765202020202020203D2064612E616374696F6E2E61747472696275746530313B0A20202020766172207469746C652020202020';
wwv_flow_imp.g_varchar2_table(3) := '202020203D2064612E616374696F6E2E61747472696275746530323B0A202020207661722069636F6E202020202020202020203D2064612E616374696F6E2E61747472696275746530333B0A202020207661722069636F6E436F6C6F7220202020203D20';
wwv_flow_imp.g_varchar2_table(4) := '64612E616374696F6E2E61747472696275746530343B0A202020207661722069636F6E48746D6C2020202020203D2064612E616374696F6E2E61747472696275746530353B0A2020202076617220616E696D6174696F6E20202020203D2064612E616374';
wwv_flow_imp.g_varchar2_table(5) := '696F6E2E6174747269627574653036203D3D3D202774727565273B0A202020207661722073686F77436F6E6669726D427574746F6E202020202020203D2064612E616374696F6E2E6174747269627574653038203D3D3D202759273B0A20202020766172';
wwv_flow_imp.g_varchar2_table(6) := '20636F6E6669726D427574746F6E54657874202020202020203D2064612E616374696F6E2E61747472696275746530393B0A2020202076617220636F6E6669726D427574746F6E436F6C6F722020202020203D2064612E616374696F6E2E617474726962';
wwv_flow_imp.g_varchar2_table(7) := '75746531303B20200A202020207661722073686F7743616E63656C427574746F6E20202020202020203D2064612E616374696F6E2E6174747269627574653131203D3D3D202759273B0A202020207661722063616E63656C427574746F6E546578742020';
wwv_flow_imp.g_varchar2_table(8) := '2020202020203D2064612E616374696F6E2E61747472696275746531323B0A202020207661722063616E63656C427574746F6E436F6C6F72202020202020203D2064612E616374696F6E2E61747472696275746531333B2020200A202020207661722070';
wwv_flow_imp.g_varchar2_table(9) := '6F736974696F6E202020202020202020202020202020203D2064612E616374696F6E2E61747472696275746531343B20200A20202020766172206261636B67726F756E6420202020202020202020202020203D2064612E616374696F6E2E617474726962';
wwv_flow_imp.g_varchar2_table(10) := '75746531353B20200A0A2020202066756E6374696F6E206262655377656574416C6572742028705F7469746C652C705F6D6573736167652C705F69636F6E2C705F69636F6E436F6C6F722C705F69636F6E48746D6C2C705F616E696D6174696F6E2C0A20';
wwv_flow_imp.g_varchar2_table(11) := '202020202020202020202020202020202020202020202020202020705F73686F77436F6E6669726D427574746F6E2C705F636F6E6669726D427574746F6E546578742C705F636F6E6669726D427574746F6E436F6C6F722C0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(12) := '2020202020202020202020202020202020705F73686F7743616E63656C427574746F6E2C705F63616E63656C427574746F6E546578742C705F63616E63656C427574746F6E436F6C6F722C705F706F736974696F6E2C705F6261636B67726F756E64297B';
wwv_flow_imp.g_varchar2_table(13) := '0A20202020202020205377616C2E66697265287B0A20202020202020202020202020202020202020207469746C65202020203A2020705F7469746C652C0A20202020202020202020202020202020202020207465787420202020203A2020705F6D657373';
wwv_flow_imp.g_varchar2_table(14) := '6167652C0A202020202020202020202020202020202020202069636F6E20202020203A2020705F69636F6E2C0A202020202020202020202020202020202020202069636F6E436F6C6F723A2020705F69636F6E436F6C6F722C0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(15) := '2020202020202020202069636F6E48746D6C203A2020705F69636F6E48746D6C2C0A2020202020202020202020202020202020202020616E696D6174696F6E3A2020705F616E696D6174696F6E2C0A202020202020202020202020202020202020202073';
wwv_flow_imp.g_varchar2_table(16) := '686F77436F6E6669726D427574746F6E20203A20705F73686F77436F6E6669726D427574746F6E2C0A2020202020202020202020202020202020202020636F6E6669726D427574746F6E5465787420203A20705F636F6E6669726D427574746F6E546578';
wwv_flow_imp.g_varchar2_table(17) := '742C0A2020202020202020202020202020202020202020636F6E6669726D427574746F6E436F6C6F72203A20705F636F6E6669726D427574746F6E436F6C6F722C0A202020202020202020202020202020202020202073686F7743616E63656C42757474';
wwv_flow_imp.g_varchar2_table(18) := '6F6E2020203A20705F73686F7743616E63656C427574746F6E2C0A202020202020202020202020202020202020202063616E63656C427574746F6E546578742020203A20705F63616E63656C427574746F6E546578742C0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(19) := '202020202020202063616E63656C427574746F6E436F6C6F7220203A20705F63616E63656C427574746F6E436F6C6F722C0A2020202020202020202020202020202020202020706F736974696F6E20202020202020202020203A20705F706F736974696F';
wwv_flow_imp.g_varchar2_table(20) := '6E2C0A20202020202020202020202020202020202020206261636B67726F756E642020202020202020203A20705F6261636B67726F756E642C0A20202020202020202020202020202020202020207D293B0A202020207D0A0A2020202062626553776565';
wwv_flow_imp.g_varchar2_table(21) := '74416C657274287469746C652C6D6573736167652C69636F6E2C69636F6E436F6C6F722C69636F6E48746D6C2C616E696D6174696F6E2C0A202020202073686F77436F6E6669726D427574746F6E2C636F6E6669726D427574746F6E546578742C636F6E';
wwv_flow_imp.g_varchar2_table(22) := '6669726D427574746F6E436F6C6F722C0A202020202073686F7743616E63656C427574746F6E2C63616E63656C427574746F6E546578742C63616E63656C427574746F6E436F6C6F722C706F736974696F6E2C6261636B67726F756E64293B0A20202020';
wwv_flow_imp.g_varchar2_table(23) := '7D0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(14475823222427394)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_file_name=>'bbesweetalertPlugin.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20240923130356Z')
,p_updated_on=>wwv_flow_imp.dz('20240923130356Z')
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172206262655F706C7567696E3D7B696E697469616C697A653A66756E6374696F6E28297B2275736520737472696374223B76617220743D746869733B617065782E64656275672E6C6F6728226262655F706C7567696E2E696E697469616C697A6522';
wwv_flow_imp.g_varchar2_table(2) := '2C74293B76617220692C612C6F2C6E2C652C632C722C752C622C6C2C732C422C662C672C6D3D742E616374696F6E2E61747472696275746530312C433D742E616374696F6E2E61747472696275746530322C703D742E616374696F6E2E61747472696275';
wwv_flow_imp.g_varchar2_table(3) := '746530332C783D742E616374696F6E2E61747472696275746530342C683D742E616374696F6E2E61747472696275746530352C763D2274727565223D3D3D742E616374696F6E2E61747472696275746530362C773D2259223D3D3D742E616374696F6E2E';
wwv_flow_imp.g_varchar2_table(4) := '61747472696275746530382C643D742E616374696F6E2E61747472696275746530392C7A3D742E616374696F6E2E61747472696275746531302C543D2259223D3D3D742E616374696F6E2E61747472696275746531312C593D742E616374696F6E2E6174';
wwv_flow_imp.g_varchar2_table(5) := '7472696275746531322C5F3D742E616374696F6E2E61747472696275746531332C6B3D742E616374696F6E2E61747472696275746531342C483D742E616374696F6E2E61747472696275746531353B693D432C613D6D2C6F3D702C6E3D782C653D682C63';
wwv_flow_imp.g_varchar2_table(6) := '3D762C723D772C753D642C623D7A2C6C3D542C733D592C423D5F2C663D6B2C673D482C5377616C2E66697265287B7469746C653A692C746578743A612C69636F6E3A6F2C69636F6E436F6C6F723A6E2C69636F6E48746D6C3A652C616E696D6174696F6E';
wwv_flow_imp.g_varchar2_table(7) := '3A632C73686F77436F6E6669726D427574746F6E3A722C636F6E6669726D427574746F6E546578743A752C636F6E6669726D427574746F6E436F6C6F723A622C73686F7743616E63656C427574746F6E3A6C2C63616E63656C427574746F6E546578743A';
wwv_flow_imp.g_varchar2_table(8) := '732C63616E63656C427574746F6E436F6C6F723A422C706F736974696F6E3A662C6261636B67726F756E643A677D297D7D3B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(15969858866241806)
,p_plugin_id=>wwv_flow_imp.id(14475058735422507)
,p_file_name=>'bbesweetalertPlugin.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20240923130356Z')
,p_updated_on=>wwv_flow_imp.dz('20240923130356Z')
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
