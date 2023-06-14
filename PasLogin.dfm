object frLogin: TfrLogin
  Left = 230
  Top = 225
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 125
    Top = 128
    Width = 70
    Height = 13
    Caption = 'Login Sebagai:'
  end
  object Label2: TLabel
    Left = 21
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label3: TLabel
    Left = 22
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edtUserName: TEdit
    Left = 81
    Top = 60
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object MskPassword: TMaskEdit
    Left = 81
    Top = 92
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 122
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object DbTest: TDBGrid
    Left = 51
    Top = 216
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
  object cbxLevel: TComboBox
    Left = 87
    Top = 144
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = '>--Pilih--<'
    Items.Strings = (
      'admin'
      'guru'
      'siswa')
  end
end
