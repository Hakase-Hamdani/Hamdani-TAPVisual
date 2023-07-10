unit pasDataDiri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet;

type
  TfrDatadiri = class(TForm)
    edtUserId: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNm: TEdit;
    edtNis: TEdit;
    edtTk: TEdit;
    edtJur: TEdit;
    edtWk: TEdit;
    btnRep: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnRepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDatadiri: TfrDatadiri;
  userid: string;

implementation

uses
  PasConnection, PasLogin, DB;

{$R *.dfm}

procedure TfrDatadiri.FormCreate(Sender: TObject);
var
  userid : string;
begin
  userid := frLogin.lblId.Caption;
  edtUserId.Text := userid;
  Position := poScreenCenter;
end;

procedure TfrDatadiri.FormActivate(Sender: TObject);
var
  query : string;
begin
  userid := frLogin.lblId.Caption;
  edtUserId.Text := userid;

  query := 'SELECT * FROM siswa WHERE user_id = :userid';
  frConnection.ZqSiswa.SQL.Clear;
  frConnection.ZqSiswa.SQL.Add(query);
  frConnection.ZqSiswa.ParamByName('userid').AsString := userid;
  frConnection.ZqSiswa.Open;

  edtNm.Text := frConnection.ZqSiswa.FieldByName('nama_siswa').AsString;
  edtNis.Text := frConnection.ZqSiswa.FieldByName('nis').AsString;
  edtTk.Text := frConnection.ZqSiswa.FieldByName('tingkat_kelas').AsString;
  edtJur.Text := frConnection.ZqSiswa.FieldByName('jurusan').AsString;
  edtWk.Text := frConnection.ZqSiswa.FieldByName('wali_kelas').AsString;

end;

procedure TfrDatadiri.btnRepClick(Sender: TObject);
begin
  userid := frLogin.lblId.Caption;//ambil id dari caption
  edtUserId.Text := userid; //jadikan variabel userid

  frConnection.ZqSiswa.SQL.Clear;
  frConnection.ZqSiswa.SQL.Add('SELECT * FROM siswa WHERE user_id = :userid'); //seleksi data yang sesuai dengan variabel userid
  frConnection.ZqSiswa.ParamByName('userid').AsString := userid; //variabel userid dijadikan input berparameter
  frConnection.ZqSiswa.Open;
  frConnection.ZqSiswa.ExecSQL;

  frConnection.fxrepRapor.ShowReport();
end;

end.
