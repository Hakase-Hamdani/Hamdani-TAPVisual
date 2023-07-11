unit PasKelasAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrKelasAdmin = class(TForm)
    GroupBox1: TGroupBox;
    frAdminKelas: TGroupBox;
    edtEditKls: TEdit;
    edtEditJenisKls: TEdit;
    edtEditJrsKls: TEdit;
    edtNamaKls: TEdit;
    edtJenis: TEdit;
    edtJrsKls: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DbKelasAdmin: TDBGrid;
    btnTambahKls: TButton;
    btnEditKls: TButton;
    GroupBox2: TGroupBox;
    btnHps: TButton;
    procedure btnTambahKlsClick(Sender: TObject);
    procedure DbKelasAdminCellClick(Column: TColumn);
    procedure btnEditKlsClick(Sender: TObject);
    procedure btnHpsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frKelasAdmin: TfrKelasAdmin;
  id: string;

implementation

uses
  PasConnection, DB;

{$R *.dfm}

procedure TfrKelasAdmin.btnTambahKlsClick(Sender: TObject);
begin
//menambahkan data baru melalui kueri
frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('INSERT INTO kelas VALUES(null, "'+edtNamaKls.Text+'", "'+edtJenis.Text+'", "'+edtJrsKls.Text+'")');
frConnection.ZqKelasAdmin.ExecSQL;

//mengembalikan kueri agar hasil penambahan terupdate
frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM kelas');
frConnection.ZqKelasAdmin.ExecSQL;
end;

procedure TfrKelasAdmin.btnEditKlsClick(Sender: TObject);
begin
//mengubah data baru melalui kueri
frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('UPDATE kelas SET nama="'+edtEditKls.Text+'", jenis="'+edtEditJenisKls.Text+'", jurusan="'+edtEditJrsKls.Text+'" WHERE id="'+id+'"');
frConnection.ZqKelasAdmin.ExecSQL;

//mengembalikan kueri agar hasil penambahan terupdate
frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM kelas');
frConnection.ZqKelasAdmin.Active;
frConnection.ZqKelasAdmin.ExecSQL;
end;

procedure TfrKelasAdmin.btnHpsClick(Sender: TObject);
begin
//menghapus data baru melalui kueri
frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('DELETE FROM kelas WHERE id="'+id+'"');
frConnection.ZqKelasAdmin.ExecSQL;

//mengembalikan kueri agar hasil penambahan terupdate
frConnection.ZqKelasAdmin.SQL.Clear;
frConnection.ZqKelasAdmin.SQL.Add('SELECT * FROM kelas');
frConnection.ZqKelasAdmin.Active;
frConnection.ZqKelasAdmin.ExecSQL;
end;

procedure TfrKelasAdmin.DbKelasAdminCellClick(Column: TColumn);
begin
id := frConnection.ZqKelasAdmin.Fields[0].AsString;
edtEditKls.Text := frConnection.ZqKelasAdmin.Fields[1].AsString;
edtEditJenisKls.Text := frConnection.ZqKelasAdmin.Fields[2].AsString;
edtEditJrsKls.Text := frConnection.ZqKelasAdmin.Fields[3].AsString;
end;

procedure TfrKelasAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.
