object frPoinAdmin: TfrPoinAdmin
  Left = 374
  Top = 198
  Width = 776
  Height = 480
  Caption = 'frPoinAdmin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 361
    Height = 177
    Caption = 'Edit Data Poin'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Nama Poin'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 51
      Height = 13
      Caption = 'Bobot Poin'
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 47
      Height = 13
      Caption = 'Jenis Poin'
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 54
      Height = 13
      Caption = 'Status Poin'
    end
    object edtEdtBobot: TEdit
      Left = 96
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cbxEdtJns: TComboBox
      Left = 96
      Top = 104
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
    end
    object cbxEdtSts: TComboBox
      Left = 96
      Top = 136
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 3
    end
    object mmEdtPoin: TMemo
      Left = 96
      Top = 16
      Width = 249
      Height = 49
      TabOrder = 0
    end
    object btnEditPoin: TButton
      Left = 240
      Top = 104
      Width = 75
      Height = 25
      Caption = 'EDIT DATA'
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 384
    Top = 8
    Width = 361
    Height = 177
    Caption = 'Tambah Data Poin'
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Nama Poin'
    end
    object Label6: TLabel
      Left = 16
      Top = 72
      Width = 51
      Height = 13
      Caption = 'Bobot Poin'
    end
    object Label7: TLabel
      Left = 16
      Top = 104
      Width = 47
      Height = 13
      Caption = 'Jenis Poin'
    end
    object Label8: TLabel
      Left = 16
      Top = 136
      Width = 54
      Height = 13
      Caption = 'Status Poin'
    end
    object edtPoin: TEdit
      Left = 96
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cbxJns: TComboBox
      Left = 96
      Top = 104
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
    end
    object cbxSts: TComboBox
      Left = 96
      Top = 136
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'cbxEdtSts'
    end
    object mmPoin: TMemo
      Left = 96
      Top = 16
      Width = 249
      Height = 49
      TabOrder = 0
    end
    object edtTambah: TButton
      Left = 240
      Top = 104
      Width = 75
      Height = 25
      Caption = 'TAMBAH DATA'
      TabOrder = 4
      OnClick = edtTambahClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 152
    Top = 200
    Width = 489
    Height = 233
    DataSource = frConnection.DsPoinAdmin
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
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
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bobot'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 32
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 200
    Width = 129
    Height = 105
    Caption = 'HAPUS DATA'
    Color = clRed
    ParentColor = False
    TabOrder = 3
    object btnHps: TButton
      Left = 27
      Top = 40
      Width = 75
      Height = 25
      Caption = 'HAPUS DATA'
      TabOrder = 0
    end
  end
end
