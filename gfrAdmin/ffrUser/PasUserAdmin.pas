unit PasUserAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrUserAdmin = class(TForm)
    DbfrUser: TDBGrid;
    GroupBox1: TGroupBox;
    edtNmEdit: TEdit;
    edtPswdEdit: TEdit;
    cbxLvlEdit: TComboBox;
    cbxStsEdit: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtNm: TEdit;
    edtPswd: TEdit;
    cbxLvl: TComboBox;
    cbxSts: TComboBox;
    btnEdtUser: TButton;
    edtAdd: TButton;
    GroupBox3: TGroupBox;
    Button1: TButton;
    procedure DbfrUserCellClick(Column: TColumn);
    procedure edtAddClick(Sender: TObject);
    procedure btnEdtUserClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frUserAdmin: TfrUserAdmin;
  id : String;

implementation

uses
  PasConnection;

{$R *.dfm}

procedure TfrUserAdmin.DbfrUserCellClick(Column: TColumn);
var
  lvl, sts: String;
  index1, index2: Integer;
begin
id := frConnection.ZqUserAdmin.Fields[0].AsString;
edtNmEdit.Text := frConnection.ZqUserAdmin.Fields[1].AsString;
edtPswdEdit.Text := frConnection.ZqUserAdmin.Fields[2].AsString;

lvl := frConnection.ZqUserAdmin.Fields[3].AsString; //mengambil value di field ini
if (lvl = 'admin') then //bandingkan value field
  index1 := 0 //assign index
else if (lvl = 'guru') then
  index1 := 1
else if (lvl = 'siswa') then
  index1 := 2
else
  index1 := -1;
//select item combobox sesuai dengan value di field, berdasarkan operasi if else di atas
cbxLvlEdit.ItemIndex := index1;

//cek atas
sts := frConnection.ZqUserAdmin.Fields[4].AsString;
if (sts = '1') then
  index2 := 0
else if (lvl = '0') then
  index2 := 1
else
  index2 := -1;
cbxStsEdit.ItemIndex := index2;
end;

procedure TfrUserAdmin.edtAddClick(Sender: TObject);
var
  stsSelect, lvlSelect, lvlQ: string;
  stsQ: integer;
begin
lvlSelect := cbxLvl.Text; //ambil value yang terpilih
if (lvlSelect = 'admin') then //bandingkan
  lvlQ := 'admin' //assignment sesuai hasil perbandingan
else if (lvlSelect = 'guru') then
  lvlQ := 'guru'
else if (lvlSelect = 'siswa') then
  lvlQ := 'siswa'
else
  ShowMessage('error');

stsSelect := cbxSts.Text;
if (stsSelect = '1') then
  stsQ := 1
else if (stsSelect = '0') then
  stsQ := 0
else
  ShowMessage('error');

frConnection.ZqUserAdmin.SQL.Clear;
frConnection.ZqUserAdmin.SQL.Add('INSERT INTO user VALUES(null, "'+edtNm.Text+'", "'+edtPswd.Text+'", "'+lvlQ+'", "'+IntToStr(stsQ)+'")');
frConnection.ZqUserAdmin.ExecSQL;

frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM user');
frConnection.ZqKelasAdmin.ExecSQL;
end;

procedure TfrUserAdmin.btnEdtUserClick(Sender: TObject);
var
  stsSelect, lvlSelect, lvlQ: string;
  stsQ: integer;
begin
lvlSelect := cbxLvlEdit.Text; //ambil value yang terpilih
if (lvlSelect = 'admin') then //bandingkan
  lvlQ := 'admin' //assignment sesuai hasil perbandingan
else if (lvlSelect = 'guru') then
  lvlQ := 'guru'
else if (lvlSelect = 'siswa') then
  lvlQ := 'siswa'
else
  ShowMessage('error');

stsSelect := cbxStsEdit.Text;
if (stsSelect = '1') then
  stsQ := 1
else if (stsSelect = '0') then
  stsQ := 0
else
  ShowMessage('error');

frConnection.ZqUserAdmin.SQL.Clear;
frConnection.ZqUserAdmin.SQL.Add('UPDATE user SET nama="'+edtNmEdit.Text+'", password="'+edtPswdEdit.Text+'", level="'+lvlQ+'", status="'+IntToStr(stsQ)+'" WHERE id="'+id+'")');
frConnection.ZqUserAdmin.ExecSQL;

frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM user');
frConnection.ZqKelasAdmin.ExecSQL;
end;

procedure TfrUserAdmin.Button1Click(Sender: TObject);
begin
frConnection.ZqUserAdmin.SQL.Clear;
frConnection.ZqUserAdmin.SQL.Add('DELETE FROM user WHERE id="'+id+'")');
frConnection.ZqUserAdmin.ExecSQL;

frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM user');
frConnection.ZqKelasAdmin.ExecSQL;
end;

procedure TfrUserAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.
