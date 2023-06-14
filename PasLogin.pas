unit PasLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask;

type
  TfrLogin = class(TForm)
    edtUserName: TEdit;
    MskPassword: TMaskEdit;
    btnLogin: TButton;
    DbTest: TDBGrid;
    cbxLevel: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;

implementation

uses
  PasConnection, DB;

{$R *.dfm}

procedure TfrLogin.btnLoginClick(Sender: TObject);
var
  nama, password, level, loginLevel, querylogin: string;
begin
  //cukup jelas
  nama := edtUserName.Text;
  password := MskPassword.Text;

  if cbxLevel.ItemIndex <> -1 then //jika ada item terpilih
    begin
      level := cbxLevel.Items[cbxLevel.ItemIndex]; //pilih item berdasarkan index sebagai string
    end;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM user WHERE nama = :nama AND `password` = :password AND `level` = :level';

  //clear properti SQL dan tambahkan querylogin
  frConnection.ZqLogin.SQL.Clear;
  frConnection.ZqLogin.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  frConnection.ZqLogin.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  frConnection.ZqLogin.ParamByName('password').AsString := password; //cukup jelas
  frConnection.ZqLogin.ParamByName('level').AsString := level; //cukup jelas
  frConnection.ZqLogin.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (frConnection.ZqLogin.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      loginLevel := frConnection.ZqLogin.FieldValues['level']; //ambil value dari kolom `level` sebagai string
      if (loginLevel = 'siswa') then //cukup jelas
        begin
          ShowMessage('Login sebagai siswa'); //jalankan ini
        end
      else if (loginLevel = 'guru') then
        begin
          ShowMessage('Login sebagai guru'); //jalankan ini
        end
      else
        begin
          ShowMessage('Login sebagai admin');
        end;
    end
  else //jika tidak
    begin
      ShowMessage('Login Gagal'); //jalankan ini
    end;

//  frConnection.ZqLogin.Close;
end;

end.
