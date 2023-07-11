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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLoginDebug: TfrLoginDebug;

implementation

{$R *.dfm}

end.
