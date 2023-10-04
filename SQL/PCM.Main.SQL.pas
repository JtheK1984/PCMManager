unit PCM.Main.SQL;

interface

uses
  PCM.Main;

type
  TPCMSQL = array [0 .. 2] of string;

var
  ASSQL_GetMails: TPCMSQL;

implementation
begin
  ASSQL_GetMails[DB_MYSQL]:= 'Select Email From manager_emails';
  ASSQL_GetMails[DB_MSSQL]:= 'Select Email From pcm_manager.manager_emails';
  ASSQL_GetMails[DB_ADS]:= 'Select Email From manager_emails';



end.

