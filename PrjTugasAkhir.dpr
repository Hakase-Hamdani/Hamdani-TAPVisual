program PrjTugasAkhir;

uses
  Forms,
  PasConnection in 'PasConnection.pas' {frConnection},
  PasLogin in 'PasLogin.pas' {frLogin},
  PasKelasAdmin in 'gfrAdmin\ffrKelas\PasKelasAdmin.pas' {frKelasAdmin},
  PasFrAdmin in 'gfrAdmin\PasFrAdmin.pas' {frAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrConnection, frConnection);
  Application.CreateForm(TfrKelasAdmin, frKelasAdmin);
  Application.CreateForm(TfrAdmin, frAdmin);
  Application.Run;
end.
