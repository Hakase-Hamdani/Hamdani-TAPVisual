program PrjTugasAkhir;

uses
  Forms,
  PasConnection in 'PasConnection.pas' {frConnection},
  PasLogin in 'PasLogin.pas' {frLogin},
  PasKelasAdmin in 'gfrAdmin\ffrKelas\PasKelasAdmin.pas' {frKelasAdmin},
  PasFrAdmin in 'gfrAdmin\PasFrAdmin.pas' {frAdmin},
  PasUserAdmin in 'gfrAdmin\ffrUser\PasUserAdmin.pas' {frUserAdmin},
  PasPoinAdmin in 'gfrAdmin\ffrPoin\PasPoinAdmin.pas' {frPoinAdmin},
  PasOrtuAdmin in 'gfrAdmin\ffrOrtu\PasOrtuAdmin.pas' {frOrtu},
  pasDataDiri in 'gfrSiswa\ffrDataDiri\pasDataDiri.pas' {frDatadiri},
  PasLoginDebug in 'PasLoginDebug.pas' {frLoginDebug};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrConnection, frConnection);
  Application.CreateForm(TfrKelasAdmin, frKelasAdmin);
  Application.CreateForm(TfrAdmin, frAdmin);
  Application.CreateForm(TfrUserAdmin, frUserAdmin);
  Application.CreateForm(TfrPoinAdmin, frPoinAdmin);
  Application.CreateForm(TfrOrtu, frOrtu);
  Application.CreateForm(TfrDatadiri, frDatadiri);
  Application.CreateForm(TfrLoginDebug, frLoginDebug);
  Application.Run;
end.
