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
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_default_workspace_id=>8568029521747345
);
end;
/
prompt  WORKSPACE 8568029521747345
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   11:54 Saturday June 24, 2023
--   Exported By:     BURHAN.SANCAKSIZ
--   Export Type:     Workspace Export
--   Version:         23.1.0
--   Instance ID:     7198786797948925
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>8568029521747345);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace BIIS2023...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 8568440621747531
 ,p_provisioning_company_id => 8568029521747345
 ,p_short_name => 'BIIS2023'
 ,p_display_name => 'BIIS2023'
 ,p_first_schema_provisioned => 'WKSP_BIIS2023'
 ,p_company_schemas => 'WKSP_BIIS2023'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'BIIS2023'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'BIIS2023'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1202295901899832,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1202162881899831,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1202047194899829,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22309405349490081',
  p_user_name                    => 'AUGUST.RUPEL@AAAF.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'AUGUST.RUPEL@AAAF.COM',
  p_web_password                 => 'DD38CF9B6438E3A84351658443446A688F0E30C905084F9BB8262960D716B6290E10728D3D2B25237752B9D988F18350B3A2872D33F62B73B1C5398E4045DF6C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8568266292747347',
  p_user_name                    => 'BIIS2023',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '',
  p_web_password                 => '3CBBF94BF7F88CB5384F85C39B0236320C89A6E5088369C4E24AF43031FB2FA6D0AE4F89A3EB95DF8DB51C0CB2A42E9A94DB08029434B490769B1078AB5B30D8',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121249','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8569952567801346',
  p_user_name                    => 'BURHAN.SANCAKLI',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'burhan.sancakli@student.um.si',
  p_web_password                 => 'E5D892AD74B096D51E43DAD1BD263FE74EBB172B4B4B810BA657BA43A81E3C3BF0E1EBDE080D19A1450C5004622E6BC9D3AD384F292D99DF5DDB63D10084541E',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306141040','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 1,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22308213942490021',
  p_user_name                    => 'BURHAN.SANCAKLI@STUDENT.UM.SI',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'BURHAN.SANCAKLI@STUDENT.UM.SI',
  p_web_password                 => 'F74F98B9FAE96A67C048A1462484E852F4C9C6E577BB8B03618F4022DD06B4CC65F9127AA947444818ABD0636738DF9C60987DC4A6A6681C12DA0B07F2CB3238',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '7203579698274894',
  p_user_name                    => 'BURHAN.SANCAKSIZ',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'burhan.sancakli123@gmail.com',
  p_web_password                 => 'E7CE99DB81EBC4F1B899CD56DC8802527C5E9AF7388D85E71240AD0312FF205028E6083B5BBACBA73255399ED8F44D9A813E433CBF462A44AF8FB5C1475ABE15',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306141044','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22310054148490109',
  p_user_name                    => 'CHAYA.GRECZKOWSKI@AAAI.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'CHAYA.GRECZKOWSKI@AAAI.COM',
  p_web_password                 => 'F2BC85A02FDA3856EF175C821CC62617A8C8B7503F809B3E558B944C68D0DB632AB84BFA2D29A30111C0B977D4A3ACC5746F306D3CF394FF606710A45EB6C7AF',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22308810707490052',
  p_user_name                    => 'DEAN.BOLLICH@AAAC.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'DEAN.BOLLICH@AAAC.COM',
  p_web_password                 => '627F762F985927202C8496CB3D6A4D6CC06FE730C1923387078DBBB08709CC51C5B8C0909CD7BE61F2846DE5551708E8EF69FD3C1AE63E226C2753B1C4BC48FA',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8570148874801355',
  p_user_name                    => 'GOERKEM.KARAMOLLA',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'goerkem.karamolla@student.um.si',
  p_web_password                 => '7DE2DEAA20F6556944734FD7BFC7CF3EE0DE6026BFB3BC171EDEC17715C6E96EC6C076BBE29A1DB3E6A403375B832CA0410D44581D85A1BFC371162D66F02110',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306160653','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22308664795490043',
  p_user_name                    => 'GRICELDA.LUEBBERS@AAAB.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'GRICELDA.LUEBBERS@AAAB.COM',
  p_web_password                 => 'FFBE5336CE1A784758E27CF7553E1D2906A55D36F065293F53AFB31507FDEE0C4841192D004DD86CD30C708E451021B16C5ADC1EE1325A43314BF52F41E7B23B',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27005482091983416',
  p_user_name                    => 'KEMAL@GMAIL.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'kemal@gmail.com',
  p_web_password                 => 'C51848886CFFC8DAE2A000EE32C4072A829BADFDBB034240E51C9B1A233F4A88F477CFFF3C5B8296E863FE2451861A83AE9017D0D96422725FCE478E28F3E7A9',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305310000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27003531086963308',
  p_user_name                    => 'KK@GMAIL.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'kk@gmail.com',
  p_web_password                 => '1A7DC0E8001CABF350B3E12CBB892C5628941C4C39F388DEF007FD4648435D7D211C3C494AB06D9BF5F67260A76D23E1173D7B982E1B0603B18A1ACE416DA53D',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306160656','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22309260336490071',
  p_user_name                    => 'LAURICE.KARL@AAAE.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'LAURICE.KARL@AAAE.COM',
  p_web_password                 => '7237F5A1B072B1914C7FB6090268F797CBE560A607A1FF8818C9454CA399BC5C506F5AA45BA8B74E40862C8303AF31FDE1A9CD217708370E64080DE59F51FD03',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22309849489490099',
  p_user_name                    => 'LOVIE.RITACCO@AAAH.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'LOVIE.RITACCO@AAAH.COM',
  p_web_password                 => '321613C371B98CBFAC3426808B05AD6F3FF0101960D4ED26F92FB2DF490AE26AD1E1E5A5783AE5952B464E60A5C36D046F3D451B2B0C4AB7A4AA50A1C050B50A',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8570547807801374',
  p_user_name                    => 'MARIJANA.KOCEVA',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'marijana.koceva@student.um.si',
  p_web_password                 => '2EBA569655BC56FD93F752DFE7D485E785FCEEBE0FC0FC82C8F0CB38CB74B6C776F022FE51F507140C6F5D4F45A339D5CE2BFF5B9BECF3C3B8EA8DC4EC0ED006',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121300','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8569770507801337',
  p_user_name                    => 'MARJETA.MAROLT',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'marjeta.marolt@um.si',
  p_web_password                 => 'DF6A3F593287E4A750935C98A1DFDE6E6000831EF76E9A4F6E65EEC56F21B68760647ADAEE1AB502CD1C5C48FB3511357A929AB45FE3D59ED211A4371ED1356B',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121300','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22309041306490062',
  p_user_name                    => 'MILO.MANONI@AAAD.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'MILO.MANONI@AAAD.COM',
  p_web_password                 => '84CC32ABC3DEE291A29B8B21346AB7F3A9A393F3567B10C387DEE9374AE167BCF24784A7F5336EE4B9CF0BC9C750F2F81B9440AD57E7125A2F8F5C6DD1892DFE',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '26986314775629267',
  p_user_name                    => 'PATRICK@GMAIL.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'patrick@gmail.com',
  p_web_password                 => 'BE89B3FFEFD8A72BE87BF82C9DFED9623001914C843991F575388BB92EC9B51C19E80AD06510B9D386102F7FB5B1ACCD18A10E0F5FACCB636DF160B930D66C65',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306160655','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8569581773801326',
  p_user_name                    => 'ROBERT.LESKOVAR',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'robert.leskovar@um.si',
  p_web_password                 => 'C59A5C429C9DE422E9ED85DC7C351ED097F286672312A1C225BC8C558F1C95B486B0C5158D4F31BDB49F76B26FF05ED7E3400A86561B30B3092637FA405229BB',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121300','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22309698343490090',
  p_user_name                    => 'SALOME.GUISTI@AAAG.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'SALOME.GUISTI@AAAG.COM',
  p_web_password                 => '35CFDA1EB5F7C6D6720BD25FE86293DCEA10EC10C0DB946AE46CE8B24F69CDE0BF3E3EB2AC6F9F7FBBA1EF9ADC1B5CCE620013AC38A068FD5CF9514D4CCBB21F',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202305110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8570951333801392',
  p_user_name                    => 'STEFAN.TUTUNOVIC',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'stefan.tutunovic@student.um.si',
  p_web_password                 => '6F100F966DBC555D1BCABB2EC0A5F1A58842B0131F3BDCE0D973623BE758FA4996D8209CC5EE76BB08FADB4D7BE2BFB89AE115F82DD4D699D7B0E20CE18C84D2',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121300','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8570798824801383',
  p_user_name                    => 'TAMARA.JOVANOVIC',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'tamara.jovanovic@student.um.si',
  p_web_password                 => '8C61C5D56DAB7581989342B0AD03B3D4C46A28A67C1989825CCE348471EB7F45805C35CFB8A616DE00B63E321018AACAEED4D247B092000A9811ABE4ACA695A3',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121301','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8571101057801401',
  p_user_name                    => 'TIL.SCHWEIGER',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'til.schweiger@student.um.si',
  p_web_password                 => '5C7D933A3D42739A677179DC212E6B3778165A024E1E2B961B815931F9E011E333F56AEAC4B0A644742DF29D1F5CB85EC57BEC18A46872DDC9FA1AC248573EDF',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304121301','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8570360865801365',
  p_user_name                    => 'YUNUS.KAYA',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'yunus.kaya@student.um.si',
  p_web_password                 => '48154440E43395A00134BB36C9361B086F412DB49BA668A771C8F2CF282AF0D4216084C3DF9CA7EBC9F67CB55EC9D693B359BBD41BEDDB2B847A99EF8E2987A3',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_BIIS2023',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306140938','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
wwv_flow_team_api.create_feedback (
  p_id => 19772949198066910 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 1
 ,p_feedback_type => 1
 ,p_feedback_status => 0
 ,p_application_id => 112
 ,p_application_name => 'gs1_gorkemkaramolla'
 ,p_page_id => 1
 ,p_page_name => 'Home'
 ,p_page_last_updated_by => 'GOERKEM.KARAMOLLA'
 ,p_page_last_updated_on => to_date('20230417222436','YYYYMMDDHH24MISS')
 ,p_session_id => '308054143643317'
 ,p_apex_user => 'GOERKEM.KARAMOLLA'
 ,p_user_email => 'goerkem.karamolla@student.um.si'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=8568029521747345'||chr(10)||
'expires_on=5/4/2023'||chr(10)||
'ip_address=46.123.254.35'||chr(10)||
'session_id='||chr(10)||
'created_on=5/3/2023'
 ,p_session_state => 'P10050_PAGE_ID="3Etecd8V8t4yGi445WljUA"'||chr(10)||
'P10050_USER_AGENT="z0R3_dBKE-P7715Wq004cBh953TKu7MUv628_iYLv1bMYX9Y5v"'||chr(10)||
'P10050_RATING="ydOjO_QYbUcmj2k3C_JhAA"'||chr(10)||
''
 ,p_parsing_schema => 'WKSP_BIIS2023'
 ,p_http_user_agent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Safari/605.1.15'
 ,p_remote_addr => '46.123.254.35'
 ,p_remote_user => 'ORDS_PLSQL_GATEWAY'
 ,p_http_host => 'g195b0f2533d83c-teylo0bmmoidnciu.adb.eu-frankfurt-1.oraclecloudapps.com'
 ,p_server_name => 'g195b0f2533d83c-teylo0bmmoidnciu.adb.eu-frankfurt-1.oraclecloudapps.com'
 ,p_server_port => '443'
 ,p_logging_security_group_id => 8568029521747345
 ,p_logged_by_workspace_name => 'BIIS2023'
 ,p_created_by => 'GOERKEM.KARAMOLLA'
 ,p_created_on => to_timestamp_tz('20230503212107.074104000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => 'GOERKEM.KARAMOLLA'
 ,p_updated_on => to_timestamp_tz('20230503212107.074106000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
