object ffrGuru: TffrGuru
  Left = 191
  Top = 185
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
  object DBGrid1: TDBGrid
    Left = 312
    Top = 32
    Width = 673
    Height = 120
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
