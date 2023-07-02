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
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    lblId: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;

implementation

uses
  PasConnection, DB, PasFrAdmin, pasDataDiri;

{$R *.dfm}

procedure TfrLogin.btnLoginClick(Sender: TObject);
var
  nama, password, level, loginLevel, querylogin, userid: string;
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
              userid := frConnection.ZqLogin.FieldValues['id']; //set userid berdasarkan sintaks di kanan
              lblId.Caption := userid; //assign userid sebagai value di Label4.Caption
              ShowMessage('Login sebagai siswa');
              frDatadiri.ShowModal;
            end
          else if (loginLevel = 'guru') then
            begin
              userid := frConnection.ZqLogin.FieldValues['id'];
              lblId.Caption := userid;
              ShowMessage('Login sebagai guru');
            end
          else
            begin
              userid := frConnection.ZqLogin.FieldValues['id'];
              lblId.Caption := userid;
              ShowMessage('Login sebagai admin');
              frAdmin.ShowModal;
            end;
        end
      else //jika tidak
        begin
          ShowMessage('Login Gagal'); //jalankan ini
        end;
    end;
//  frConnection.ZqLogin.Close;
end;

procedure TfrLogin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.
