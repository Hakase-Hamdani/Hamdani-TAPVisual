object frLogin: TfrLogin
  Left = 230
  Top = 225
  Width = 359
  Height = 466
  Caption = 'frLogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtUserName: TEdit
    Left = 56
    Top = 64
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object MskPassword: TMaskEdit
    Left = 56
    Top = 96
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = 'btnLogin'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object DbTest: TDBGrid
    Left = 56
    Top = 192
    Width = 217
    Height = 120
    DataSource = frConnection.DsLogin
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 40
        Visible = True
      end>
  end
end
