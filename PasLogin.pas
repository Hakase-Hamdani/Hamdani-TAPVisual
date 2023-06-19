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
  sts: integer;
begin
  //cukup jelas
  nama := edtUserName.Text;
  password := MskPassword.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM user WHERE nama = :nama AND `password` = :password';

  //clear properti SQL dan tambahkan querylogin
  frConnection.ZqLogin.SQL.Clear;
  frConnection.ZqLogin.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  frConnection.ZqLogin.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  frConnection.ZqLogin.ParamByName('password').AsString := password; //cukup jelas
  frConnection.ZqLogin.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (frConnection.ZqLogin.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := frConnection.ZqLogin.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 1) then //memeriksa sts
        begin
          loginLevel := frConnection.ZqLogin.FieldValues['level']; //ambil value dari kolom `level` sebagai string
          if (loginLevel = 'siswa') then //memeriksa loginLevel
            begin
              ShowMessage('Login sebagai siswa');
            end
          else if (loginLevel = 'guru') then
            begin
              ShowMessage('Login sebagai guru');
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
    end;
//  frConnection.ZqLogin.Close;
end;

end.
