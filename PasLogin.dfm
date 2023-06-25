object frLogin: TfrLogin
  Left = 269
  Top = 169
  Width = 335
  Height = 466
  Caption = 'Login'
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
  object Label2: TLabel
    Left = 13
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label3: TLabel
    Left = 14
    Top = 112
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label1: TLabel
    Left = 47
    Top = 207
    Width = 225
    Height = 13
    Caption = 'the datagrid is just for debugging purpose only'
  end
  object edtUserName: TEdit
    Left = 73
    Top = 76
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object MskPassword: TMaskEdit
    Left = 73
    Top = 108
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 122
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object DbTest: TDBGrid
    Left = 51
    Top = 232
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
