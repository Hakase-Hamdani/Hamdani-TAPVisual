program PrjTugasAkhir;

uses
  Forms,
  PasConnection in 'PasConnection.pas' {frConnection},
  PasLogin in 'PasLogin.pas' {frLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrConnection, frConnection);
  Application.CreateForm(TfrLogin, frLogin);
  Application.Run;
end.
