object frUserAdmin: TfrUserAdmin
  Left = 196
  Top = 160
  Width = 509
  Height = 480
  Caption = 'frUserAdmin'
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
  object DbfrUser: TDBGrid
    Left = 153
    Top = 224
    Width = 296
    Height = 193
    DataSource = frConnection.DsUserAdmin
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DbfrUserCellClick
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
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 32
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 16
    Width = 201
    Height = 201
    Caption = 'Edit Data'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nama'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 25
      Height = 13
      Caption = 'Level'
    end
    object Label4: TLabel
      Left = 8
      Top = 120
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object edtNmEdit: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtPswdEdit: TEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cbxLvlEdit: TComboBox
      Left = 64
      Top = 88
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '>--level--<'
      Items.Strings = (
        'admin'
        'guru'
        'siswa')
    end
    object cbxStsEdit: TComboBox
      Left = 64
      Top = 120
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = '>--status akun--<'
      Items.Strings = (
        'aktif'
        'nonaktif')
    end
    object btnEdtUser: TButton
      Left = 63
      Top = 160
      Width = 75
      Height = 25
      Caption = 'EDIT DATA'
      TabOrder = 4
      OnClick = btnEdtUserClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 248
    Top = 16
    Width = 201
    Height = 201
    Caption = 'Tambah Data'
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nama'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label7: TLabel
      Left = 8
      Top = 88
      Width = 25
      Height = 13
      Caption = 'Level'
    end
    object Label8: TLabel
      Left = 8
      Top = 120
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object edtNm: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtPswd: TEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cbxLvl: TComboBox
      Left = 64
      Top = 88
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '>--level--<'
      Items.Strings = (
        'admin'
        'guru'
        'siswa')
    end
    object cbxSts: TComboBox
      Left = 64
      Top = 120
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = '>--status akun--<'
      Items.Strings = (
        'aktif'
        'nonaktif')
    end
    object edtAdd: TButton
      Left = 51
      Top = 160
      Width = 98
      Height = 25
      Caption = 'TAMBAHKAN DATA'
      TabOrder = 4
      OnClick = edtAddClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 40
    Top = 240
    Width = 105
    Height = 89
    Caption = 'HAPUS DATA'
    Color = clRed
    ParentColor = False
    TabOrder = 3
    object Button1: TButton
      Left = 15
      Top = 32
      Width = 75
      Height = 25
      Caption = 'HAPUS DATA'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
