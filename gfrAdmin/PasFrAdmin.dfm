object frAdmin: TfrAdmin
  Left = 378
  Top = 114
  Width = 527
  Height = 324
  Caption = 'frAdmin'
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
    Left = 91
    Top = 0
    Width = 330
    Height = 45
    Caption = 'Panel Kendali Admin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 176
    Top = 56
    Width = 153
    Height = 193
    Caption = 'Administrasi Siswa'
    TabOrder = 0
    object Button1: TButton
      Left = 39
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Siswa'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 39
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Orang Tua'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 40
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Hubungan'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 56
    Width = 153
    Height = 193
    Caption = 'Administrasi User'
    TabOrder = 1
    object Button4: TButton
      Left = 39
      Top = 32
      Width = 75
      Height = 25
      Caption = 'User'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 336
    Top = 56
    Width = 153
    Height = 193
    Caption = 'Administrasi Sekolah'
    TabOrder = 2
    object Button5: TButton
      Left = 39
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Wali Kelas'
      TabOrder = 0
    end
    object btnAdminKelas: TButton
      Left = 39
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Kelas'
      TabOrder = 1
      OnClick = btnAdminKelasClick
    end
    object Button7: TButton
      Left = 40
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Poin'
      TabOrder = 2
      OnClick = Button7Click
    end
  end
end
