unit PasConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, StdCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TfrConnection = class(TForm)
    DsLogin: TDataSource;
    ZConn: TZConnection;
    ZqLogin: TZQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DsSiswa: TDataSource;
    ZqSiswa: TZQuery;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DsKelasAdmin: TDataSource;
    ZqKelasAdmin: TZQuery;
    GroupBox5: TGroupBox;
    DsUserAdmin: TDataSource;
    ZqUserAdmin: TZQuery;
    GroupBox6: TGroupBox;
    ZqPoinAdmin: TZQuery;
    DsPoinAdmin: TDataSource;
    fxrepRapor: TfrxReport;
    fxdsRapor: TfrxDBDataset;
    GroupBox7: TGroupBox;
    DsWaliKelas: TDataSource;
    ZqWaliKelas: TZQuery;
    ZqWkSiswa: TZQuery;
    ZqWkPoin: TZQuery;
    ZqWkRPoin: TZQuery;
    DsWkSiswa: TDataSource;
    DsWkPoin: TDataSource;
    DsWkRPoin: TDataSource;
    fxdsNilai: TfrxDBDataset;
    ZqNilai: TZQuery;
    DsNilai: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConnection: TfrConnection;

implementation

{$R *.dfm}

procedure TfrConnection.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.
