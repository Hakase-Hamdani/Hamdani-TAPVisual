object frKelasAdmin: TfrKelasAdmin
  Left = 660
  Top = 168
  Width = 525
  Height = 480
  Caption = 'frKelasAdmin'
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
  object Label5: TLabel
    Left = 32
    Top = 76
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label6: TLabel
    Left = 24
    Top = 118
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 217
    Height = 201
    Caption = 'Edit Data'
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 36
      Width = 55
      Height = 13
      Caption = 'Nama Kelas'
    end
    object Label2: TLabel
      Left = 31
      Top = 76
      Width = 24
      Height = 13
      Caption = 'Jenis'
    end
    object Label3: TLabel
      Left = 24
      Top = 118
      Width = 38
      Height = 13
      Caption = 'Jurusan'
    end
    object edtEditKls: TEdit
      Left = 80
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtEditJenisKls: TEdit
      Left = 80
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtEditJrsKls: TEdit
      Left = 80
      Top = 114
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btnEditKls: TButton
      Left = 71
      Top = 160
      Width = 75
      Height = 25
      Caption = 'EDIT DATA'
      TabOrder = 3
      OnClick = btnEditKlsClick
    end
  end
  object frAdminKelas: TGroupBox
    Left = 248
    Top = 24
    Width = 233
    Height = 193
    Caption = 'Tambah Data'
    TabOrder = 1
    object Label7: TLabel
      Left = 36
      Top = 36
      Width = 55
      Height = 13
      Caption = 'Nama Kelas'
    end
    object Label8: TLabel
      Left = 48
      Top = 76
      Width = 24
      Height = 13
      Caption = 'Jenis'
    end
    object Label9: TLabel
      Left = 48
      Top = 118
      Width = 38
      Height = 13
      Caption = 'Jurusan'
    end
    object edtNamaKls: TEdit
      Left = 96
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtJenis: TEdit
      Left = 96
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtJrsKls: TEdit
      Left = 96
      Top = 114
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btnTambahKls: TButton
      Left = 64
      Top = 152
      Width = 105
      Height = 25
      Caption = 'TAMBAHKAN DATA'
      TabOrder = 3
      OnClick = btnTambahKlsClick
    end
  end
  object DbKelasAdmin: TDBGrid
    Left = 127
    Top = 232
    Width = 353
    Height = 177
    DataSource = frConnection.DsKelasAdmin
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DbKelasAdminCellClick
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jurusan'
        Width = 100
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 249
    Width = 89
    Height = 81
    Caption = 'HAPUS DATA'
    Color = clRed
    ParentColor = False
    TabOrder = 3
    object btnHps: TButton
      Left = 7
      Top = 28
      Width = 75
      Height = 25
      Caption = 'HAPUS DATA'
      TabOrder = 0
      OnClick = btnHpsClick
    end
  end
end
