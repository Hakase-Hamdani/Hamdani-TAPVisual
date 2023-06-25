program PrjTugasAkhir;

uses
  Forms,
  PasConnection in 'PasConnection.pas' {frConnection},
  PasLogin in 'PasLogin.pas' {frLogin},
  PasKelasAdmin in 'gfrAdmin\ffrKelas\PasKelasAdmin.pas' {frKelasAdmin},
  PasFrAdmin in 'gfrAdmin\PasFrAdmin.pas' {frAdmin},
  PasUserAdmin in 'gfrAdmin\ffrUser\PasUserAdmin.pas' {frUserAdmin},
  PasPoinAdmin in 'gfrAdmin\ffrPoin\PasPoinAdmin.pas' {frPoinAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrConnection, frConnection);
  Application.CreateForm(TfrKelasAdmin, frKelasAdmin);
  Application.CreateForm(TfrAdmin, frAdmin);
  Application.CreateForm(TfrUserAdmin, frUserAdmin);
  Application.CreateForm(TfrPoinAdmin, frPoinAdmin);
  Application.Run;
end.
