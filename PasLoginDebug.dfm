object frLoginDebug: TfrLoginDebug
  Left = 176
  Top = 400
  Width = 353
  Height = 234
  Caption = 'Login Debug'
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
    Left = 56
    Top = 15
    Width = 225
    Height = 13
    Caption = 'the datagrid is just for debugging purpose only'
  end
  object Label2: TLabel
    Left = 33
    Top = 167
    Width = 271
    Height = 26
    Caption = 
      'tutup jendela ini jika mau login,'#13#10'di ingat nama dan password ma' +
      'na yang akan di gunakan'
  end
  object DbTest: TDBGrid
    Left = 24
    Top = 40
    Width = 289
    Height = 120
    DataSource = frConnection.DsLogin
    TabOrder = 0
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
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Width = 76
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
        Width = 36
        Visible = True
      end>
  end
end
