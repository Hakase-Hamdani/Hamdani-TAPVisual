unit PasConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, StdCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrConnection = class(TForm)
    DsLogin: TDataSource;
    ZConn: TZConnection;
    ZqLogin: TZQuery;
    GroupBox1: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConnection: TfrConnection;

implementation

{$R *.dfm}

end.
