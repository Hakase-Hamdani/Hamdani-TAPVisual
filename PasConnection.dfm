object frConnection: TfrConnection
  Left = 185
  Top = 175
  Width = 730
  Height = 572
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
    Top = 184
    Width = 185
    Height = 177
    Caption = 'Siswa'
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 232
    Top = 8
    Width = 465
    Height = 353
    Caption = 'Admin'
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 8
      Top = 16
      Width = 185
      Height = 145
      Caption = 'Kelas'
      TabOrder = 0
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 176
      Width = 185
      Height = 169
      Caption = 'GroupBox5'
      TabOrder = 1
    end
    object GroupBox6: TGroupBox
      Left = 200
      Top = 16
      Width = 185
      Height = 145
      Caption = 'Poin'
      TabOrder = 2
    end
  end
  object GroupBox7: TGroupBox
    Left = 16
    Top = 368
    Width = 681
    Height = 145
    Caption = 'WaliKelas'
    TabOrder = 3
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
    Left = 96
    Top = 24
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
    Top = 200
  end
  object ZqSiswa: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 96
    Top = 200
  end
  object DsKelasAdmin: TDataSource
    DataSet = ZqKelasAdmin
    Left = 280
    Top = 32
  end
  object ZqKelasAdmin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM kelas')
    Params = <>
    Left = 352
    Top = 32
  end
  object DsUserAdmin: TDataSource
    DataSet = ZqUserAdmin
    Left = 272
    Top = 216
  end
  object ZqUserAdmin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 352
    Top = 216
  end
  object ZqPoinAdmin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM poin')
    Params = <>
    Left = 552
    Top = 32
  end
  object DsPoinAdmin: TDataSource
    DataSet = ZqPoinAdmin
    Left = 464
    Top = 32
  end
  object fxrepRapor: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45109.858238750000000000
    ReportOptions.LastChange = 45118.026968020800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 256
    Datasets = <
      item
        DataSet = fxdsNilai
        DataSetName = 'fxdsNilai'
      end
      item
        DataSet = fxdsRapor
        DataSetName = 'fxdsRapor'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 279.685220000000000000
          Width = 158.740260000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN NILAI SISWA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 173.858380000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = fxdsRapor
        DataSetName = 'fxdsRapor'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Nama: ')
        end
        object Memo2: TfrxMemoView
          Left = 124.724490000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."nama_siswa"]')
        end
        object Memo3: TfrxMemoView
          Left = 26.456710000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NIS:')
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."nis"]')
        end
        object Memo5: TfrxMemoView
          Left = 26.456710000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NISN:')
        end
        object Memo6: TfrxMemoView
          Left = 124.724490000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."nisn"]')
        end
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NIK:')
        end
        object Memo8: TfrxMemoView
          Left = 124.724490000000000000
          Top = 68.031540000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."nik"]')
        end
        object Memo9: TfrxMemoView
          Left = 26.456710000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tempat Lahir:')
        end
        object Memo10: TfrxMemoView
          Left = 124.724490000000000000
          Top = 90.708720000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."tempat_lahir"]')
        end
        object Memo11: TfrxMemoView
          Left = 26.456710000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tanggal Lahir:')
        end
        object Memo12: TfrxMemoView
          Left = 124.724490000000000000
          Top = 113.385900000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."tanggal_lahir"]')
        end
        object Memo13: TfrxMemoView
          Left = 264.567100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tingkat Kelas:')
        end
        object Memo14: TfrxMemoView
          Left = 362.834880000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."tingkat_kelas"]')
        end
        object Memo15: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Jurusan:')
        end
        object Memo16: TfrxMemoView
          Left = 362.834880000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[fxdsRapor."jurusan"]')
        end
      end
      object MasterData2: TfrxMasterData
        Height = 154.960730000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        DataSet = fxdsNilai
        DataSetName = 'fxdsNilai'
        RowCount = 1
        object Memo20: TfrxMemoView
          Left = 26.456710000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '["fxdsNilai.nama_poin"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 551.811380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '["fxdsNilai.bobot"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.779530000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA POIN')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BOBOT')
          ParentFont = False
        end
      end
    end
  end
  object fxdsRapor: TfrxDBDataset
    UserName = 'fxdsRapor'
    CloseDataSource = False
    DataSet = ZqSiswa
    BCDToCurrency = False
    Left = 32
    Top = 256
  end
  object DsWaliKelas: TDataSource
    DataSet = ZqWaliKelas
    Left = 40
    Top = 384
  end
  object ZqWaliKelas: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM wali_kelas')
    Params = <>
    Left = 112
    Top = 384
  end
  object ZqWkSiswa: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM siswa')
    Params = <>
    Left = 112
    Top = 440
  end
  object ZqWkPoin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM poin')
    Params = <>
    Left = 248
    Top = 384
  end
  object ZqWkRPoin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT s.nama_siswa, rp.tanggal, p.nama AS nama_poin, p.bobot'
      'FROM siswa s'
      'JOIN riwayat_poin rp ON s.id = rp.siswa_id'
      'JOIN poin p ON rp.poin_id = p.id;')
    Params = <>
    Left = 248
    Top = 440
  end
  object DsWkSiswa: TDataSource
    DataSet = ZqWkSiswa
    Left = 40
    Top = 440
  end
  object DsWkPoin: TDataSource
    DataSet = ZqWkPoin
    Left = 184
    Top = 384
  end
  object DsWkRPoin: TDataSource
    DataSet = ZqWkRPoin
    Left = 184
    Top = 440
  end
  object fxdsNilai: TfrxDBDataset
    UserName = 'fxdsNilai'
    CloseDataSource = False
    DataSet = ZqNilai
    BCDToCurrency = False
    Left = 32
    Top = 312
  end
  object ZqNilai: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      
        'SELECT s.nama_siswa, rp.tanggal, p.nama AS nama_poin, p.bobot'#10' F' +
        'ROM siswa s'#10' JOIN riwayat_poin rp ON s.id = rp.siswa_id'#10' JOIN po' +
        'in p ON rp.poin_id = p.id;')
    Params = <>
    Left = 96
    Top = 312
  end
  object DsNilai: TDataSource
    DataSet = ZqNilai
    Left = 152
    Top = 312
  end
end
