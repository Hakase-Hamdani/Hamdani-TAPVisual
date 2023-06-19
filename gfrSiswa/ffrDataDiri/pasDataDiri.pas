unit pasDataDiri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrDatadiri = class(TForm)
    mmDataDiri: TMemo;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDatadiri: TfrDatadiri;

implementation

uses
  PasConnection, PasLogin;

{$R *.dfm}

procedure TfrDatadiri.FormCreate(Sender: TObject);
var
  querySiswa, queryOrtu, queryKelas:string;
  user_idDD: integer;
begin
  user_idDD := PasLogin.user_id;
  Label1.Caption := IntToStr(PasLogin.user_id);
  querySiswa := 'SELECT * FROM siswa WHERE user_id = :user_id';
//  ShowMessage(IntToStr(user_id));
frConnection.ZqDataSiswa.SQL.Clear;
frConnection.ZqDataSiswa.SQL.Add(querySiswa);
if frConnection.ZqDataSiswa.Params.FindParam('user_id') <> nil then
  begin
    frConnection.ZqDataSiswa.ParamByName('user_id').AsInteger := user_idDD;
    frConnection.ZqDataSiswa.SQL.Clear;
    frConnection.ZqDataSiswa.SQL.Add('SELECT * FROM siswa WHERE user_id = "'+inttostr(user_idDD)+'"');
  end
else
  begin
    ShowMessage('Param is NOT found, fuck!');
  end;

end;

end.
