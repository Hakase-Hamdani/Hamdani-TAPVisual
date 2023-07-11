unit PasPoinAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrPoinAdmin = class(TForm)
    GroupBox1: TGroupBox;
    edtEdtBobot: TEdit;
    cbxEdtJns: TComboBox;
    cbxEdtSts: TComboBox;
    mmEdtPoin: TMemo;
    btnEditPoin: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtPoin: TEdit;
    cbxJns: TComboBox;
    cbxSts: TComboBox;
    mmPoin: TMemo;
    edtTambah: TButton;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    btnHps: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure edtTambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPoinAdmin: TfrPoinAdmin;
  id: string;

implementation

uses
  PasConnection;

{$R *.dfm}

procedure TfrPoinAdmin.DBGrid1CellClick(Column: TColumn);
var
  jns, sts: string;
  index1, index2: Integer;
begin
id := frConnection.ZqPoinAdmin.Fields[0].AsString;
mmEdtPoin.Text := frConnection.ZqPoinAdmin.Fields[1].AsString;
edtEdtBobot.Text := frConnection.ZqPoinAdmin.Fields[2].AsString;

jns := frConnection.ZqPoinAdmin.Fields[3].AsString; //mengambil value di field ini
if (jns = 'prestasi') then //bandingkan value field
  index1 := 0 //assign index
else if (jns = 'pelanggaran') then
  index1 := 1
else
  index1 := -1;
//select item combobox sesuai dengan value di field, berdasarkan operasi if else di atas
cbxEdtJns.ItemIndex := index1;

//cek atas
sts := frConnection.ZqPoinAdmin.Fields[4].AsString;
if (sts = '1') then
  index2 := 0
else if (sts = '0') then
  index2 := 1
else
  index2 := -1;
cbxEdtSts.ItemIndex := index2;
end;

procedure TfrPoinAdmin.edtTambahClick(Sender: TObject);
var
  jnsSelect, stsSelect, jnsQ: string;
  stsQ: integer;
begin
jnsSelect := cbxJns.Text; //ambil value yang terpilih
if (jnsSelect = 'pelanggaran') then //bandingkan
  jnsQ := 'pelanggaran' //assignment sesuai hasil perbandingan
else if (jnsSelect = 'prestasi') then
  jnsQ := 'prestasi'
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
frConnection.ZqUserAdmin.SQL.Add('INSERT INTO poin VALUES(null, "'+edtPoin.Text+'", "'+edtEdtBobot.Text+'", "'+jnsQ+'", "'+IntToStr(stsQ)+'")');
frConnection.ZqUserAdmin.ExecSQL;

frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM user');
frConnection.ZqKelasAdmin.ExecSQL;
end;
end.
