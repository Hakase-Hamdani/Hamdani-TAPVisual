program PrjTugasAkhir;

uses
  Forms,
  PasConnection in 'PasConnection.pas' {frConnection},
  PasLogin in 'PasLogin.pas' {frLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrConnection, frConnection);
  Application.Run;
end.
