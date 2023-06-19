object frDatadiri: TfrDatadiri
  Left = 242
  Top = 187
  Width = 1192
  Height = 480
  Caption = 'frDatadiri'
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
  object Label1: TLabel
    Left = 504
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object mmDataDiri: TMemo
    Left = 26
    Top = 40
    Width = 433
    Height = 385
    Lines.Strings = (
      'mmDataDiri')
    ReadOnly = True
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 496
    Top = 64
    Width = 320
    Height = 120
    DataSource = frConnection.DsSiswa
    Enabled = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
