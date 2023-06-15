object frConnection: TfrConnection
  Left = 270
  Top = 175
  Width = 232
  Height = 566
  Caption = 'frConnection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 72
    Width = 185
    Height = 105
    Caption = 'Login'
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 200
    Width = 185
    Height = 105
    Caption = 'Siswa'
    TabOrder = 1
  end
  object DsLogin: TDataSource
    DataSet = ZqLogin
    Left = 32
    Top = 104
  end
  object ZConn: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'mysql'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'data_sekolah_rev'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas Harian\Tug' +
      'asAkhirHamdaniDelphi\libmysql.dll'
    Left = 16
    Top = 16
  end
  object ZqLogin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 96
    Top = 104
  end
  object DsSiswa: TDataSource
    Left = 32
    Top = 232
  end
  object ZqSiswa: TZQuery
    Connection = ZConn
    Params = <>
    Left = 96
    Top = 232
  end
end
