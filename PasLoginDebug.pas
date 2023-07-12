unit PasLoginDebug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrLoginDebug = class(TForm)
    Label1: TLabel;
    DbTest: TDBGrid;
    Label2: TLabel;
    procedure DbTestCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLoginDebug: TfrLoginDebug;

implementation

uses
  PasLogin, PasConnection;

{$R *.dfm}

procedure TfrLoginDebug.DbTestCellClick(Column: TColumn);
var
  pswd: string;
begin
//frLogin.edtUserName.Text := frConnection.ZqLogin.Fields[1].AsString;
//pswd := frLogin.MskPassword.Text;
//frConnection.ZqLogin.Fields[2].AsString := pswd;
end;

end.
