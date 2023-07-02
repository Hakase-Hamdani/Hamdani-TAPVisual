object frConnection: TfrConnection
  Left = 45
  Top = 135
  Width = 730
  Height = 432
  Caption = 'frConnection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
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
  object GroupBox3: TGroupBox
    Left = 232
    Top = 72
    Width = 465
    Height = 281
    Caption = 'Admin'
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 8
      Top = 16
      Width = 185
      Height = 105
      Caption = 'Kelas'
      TabOrder = 0
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 136
      Width = 185
      Height = 105
      Caption = 'GroupBox5'
      TabOrder = 1
    end
    object GroupBox6: TGroupBox
      Left = 200
      Top = 16
      Width = 185
      Height = 105
      Caption = 'Poin'
      TabOrder = 2
    end
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
  object DsKelasAdmin: TDataSource
    DataSet = ZqKelasAdmin
    Left = 280
    Top = 120
  end
  object ZqKelasAdmin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM kelas')
    Params = <>
    Left = 352
    Top = 120
  end
  object DsUserAdmin: TDataSource
    DataSet = ZqUserAdmin
    Left = 272
    Top = 240
  end
  object ZqUserAdmin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 352
    Top = 240
  end
  object ZqPoinAdmin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM poin')
    Params = <>
    Left = 552
    Top = 120
  end
  object DsPoinAdmin: TDataSource
    DataSet = ZqPoinAdmin
    Left = 464
    Top = 120
  end
end
