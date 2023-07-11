unit pasGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TffrGuru = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNama: TEdit;
    edtNik: TEdit;
    edtMapel: TEdit;
    ffGuru: TLabel;
    edtUserId: TEdit;
    DbWkSiswa: TDBGrid;
    DbWkPoin: TDBGrid;
    DbWkRPoin: TDBGrid;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffrGuru: TffrGuru;
  userid: string;

implementation

uses
  PasConnection, PasLogin;

{$R *.dfm}

procedure TffrGuru.FormActivate(Sender: TObject);
var
  query : string;
begin
  userid := frLogin.lblId.Caption;
  edtUserId.Text := userid;

  query := 'SELECT * FROM wali_kelas WHERE user_id = :userid';
  frConnection.ZqWaliKelas.SQL.Clear;
  frConnection.ZqWaliKelas.SQL.Add(query);
  frConnection.ZqWaliKelas.ParamByName('userid').AsString := userid;
  frConnection.ZqWaliKelas.Open;

  edtNama.Text := frConnection.ZqWaliKelas.FieldByName('nama').AsString;
  edtNik.Text := frConnection.ZqWaliKelas.FieldByName('nik').AsString;
  edtMapel.Text := frConnection.ZqWaliKelas.FieldByName('matpel').AsString;
end;

end.
