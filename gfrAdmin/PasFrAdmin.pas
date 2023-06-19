unit PasFrAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrAdmin = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    Button5: TButton;
    btnAdminKelas: TButton;
    Button7: TButton;
    procedure btnAdminKelasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAdmin: TfrAdmin;

implementation

uses
  PasKelasAdmin;

{$R *.dfm}

procedure TfrAdmin.btnAdminKelasClick(Sender: TObject);
begin
frKelasAdmin.ShowModal;
end;

end.
