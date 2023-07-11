object frDatadiri: TfrDatadiri
  Left = 505
  Top = 245
  Width = 789
  Height = 296
  Caption = 'frDatadiri'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 194
    Height = 23
    Caption = 'Data Diri Singkat Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 34
    Height = 13
    Caption = 'Nama: '
  end
  object Label3: TLabel
    Left = 24
    Top = 73
    Width = 21
    Height = 13
    Caption = 'NIS:'
  end
  object Label4: TLabel
    Left = 24
    Top = 98
    Width = 67
    Height = 13
    Caption = 'Tingkat Kelas:'
  end
  object Label5: TLabel
    Left = 24
    Top = 123
    Width = 42
    Height = 13
    Caption = 'Jurusan:'
  end
  object Label6: TLabel
    Left = 24
    Top = 148
    Width = 52
    Height = 13
    Caption = 'Wali Kelas:'
  end
  object edtUserId: TEdit
    Left = 24
    Top = 224
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edtNm: TEdit
    Left = 120
    Top = 40
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'edtNm'
  end
  object edtNis: TEdit
    Left = 120
    Top = 66
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 'Edit1'
  end
  object edtTk: TEdit
    Left = 120
    Top = 92
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'Edit1'
  end
  object edtJur: TEdit
    Left = 120
    Top = 118
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = 'Edit1'
  end
  object edtWk: TEdit
    Left = 120
    Top = 144
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 5
    Text = 'Edit1'
  end
  object btnRep: TButton
    Left = 24
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cetak Rapor'
    TabOrder = 6
    OnClick = btnRepClick
  end
  object DBGrid1: TDBGrid
    Left = 352
    Top = 40
    Width = 393
    Height = 120
    DataSource = frConnection.DsNilai
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nama_siswa'
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
