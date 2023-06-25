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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPoinAdmin: TfrPoinAdmin;

implementation

uses
  PasConnection;

{$R *.dfm}

end.
