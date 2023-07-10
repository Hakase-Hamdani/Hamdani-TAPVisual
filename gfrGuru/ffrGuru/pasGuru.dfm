object ffrGuru: TffrGuru
  Left = 326
  Top = 163
  Width = 1012
  Height = 458
  Caption = 'Wali Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 86
    Width = 31
    Height = 13
    Caption = 'Nama:'
  end
  object Label2: TLabel
    Left = 32
    Top = 119
    Width = 21
    Height = 13
    Caption = 'NIK:'
  end
  object Label3: TLabel
    Left = 32
    Top = 152
    Width = 76
    Height = 13
    Caption = 'Mata Pelajaran:'
  end
  object ffGuru: TLabel
    Left = 32
    Top = 24
    Width = 93
    Height = 23
    Caption = 'Panel Guru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNama: TEdit
    Left = 144
    Top = 82
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = 'edtNama'
  end
  object edtNik: TEdit
    Left = 144
    Top = 115
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'edtNik'
  end
  object edtMapel: TEdit
    Left = 144
    Top = 148
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 'edtMapel'
  end
  object edtUserId: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edtUserId'
    Visible = False
  end
  object DbWkSiswa: TDBGrid
    Left = 352
    Top = 32
    Width = 617
    Height = 120
    DataSource = frConnection.DsWkSiswa
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nisn'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tingkat_kelas'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jurusan'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object DbWkPoin: TDBGrid
    Left = 616
    Top = 160
    Width = 353
    Height = 120
    DataSource = frConnection.DsWkPoin
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bobot'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis'
        Visible = True
      end>
  end
  object DbWkRPoin: TDBGrid
    Left = 552
    Top = 288
    Width = 424
    Height = 120
    DataSource = frConnection.DsWkRPoin
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_poin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bobot'
        Visible = True
      end>
  end
end
