object polistfrm: Tpolistfrm
  Left = 394
  Top = 63
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 507
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 671
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 179
      Height = 18
      Caption = 'List Purchase Order (PO)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 671
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 671
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 871389
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object caripn: TPanel
    Left = 0
    Top = 53
    Width = 671
    Height = 52
    Align = alTop
    Color = 14869218
    TabOrder = 3
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 50
      Height = 16
      Caption = 'Cari PO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cari: TEdit
      Left = 64
      Top = 16
      Width = 481
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cariChange
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 466
    Width = 661
    Height = 41
    TabOrder = 4
  end
  object gridpo: TDBGrid
    Left = 0
    Top = 105
    Width = 671
    Height = 402
    Align = alClient
    Ctl3D = False
    DataSource = ds.polist
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    PopupMenu = popop
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = gridpoDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'be_kode'
        Title.Caption = 'No. PO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'be_tgl'
        Title.Caption = 'Tanggal'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'supplier'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'be_due'
        Title.Caption = 'Jth Tempo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object popop: TPopupMenu
    OnPopup = popopPopup
    Left = 216
    Top = 224
    object LihatDetail1: TMenuItem
      Caption = '&Lihat Detail'
      OnClick = LihatDetail1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object HapusData1: TMenuItem
      Caption = '&Hapus Data'
      OnClick = HapusData1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CetakDeliveryOrderDO1: TMenuItem
      Caption = 'Input/Edit Tanggal Jatuh Tempo '
      OnClick = CetakDeliveryOrderDO1Click
    end
  end
  object rdpo_beli: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.beli
    Left = 464
    Top = 5
  end
  object rpPO: TRvProject
    Engine = RvSystem1
    Left = 424
    Top = 5
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'mERP 1.0'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 384
    Top = 5
  end
  object rdpo_supplier: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.supplier
    Left = 344
    Top = 5
  end
  object rdpo_supplierpic: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.supplierpic
    Left = 272
    Top = 5
  end
  object rdpo_belidetail: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.belidetail
    Left = 312
    Top = 5
  end
  object rdpo_footnote: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.footnote
    Left = 496
    Top = 5
  end
  object rdpo_customer: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.customer
    Left = 536
    Top = 5
  end
  object rdpo_custpic: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.custpic
    Left = 584
    Top = 5
  end
  object imagelist: TImageList
    Left = 336
    Top = 200
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000FFFEFEFEFFF3F3F3FFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFF0F0F0FFFAFAFAFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFD8E4D8FFA3C1A3FFB3CAB3FFF8FAF8FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFADAEAFFF84B9C3FF96D5
      D9FF96D4D7FF9AD4D9FF9BD4D8FF9CD4D7FF9CD4D7FF9DD4D7FF9FD4D7FF9FD3
      D7FFA1D3D7FF8FA1A3FFE2E2E2FF000000FF000000FF000000FF000000FFFDFD
      FDFF206B20FF006400FF006E00FF007100FF006C00FF006000FF005000FF8EAA
      8EFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CACACBFF90F0F4FF8FE0EFFF9BF2
      F7FF9FF2F7FFA3F3F8FFA4F3F7FFA8F3F8FFAAF4F9FFAAF4F9FFABF4F9FFADF5
      FAFFADF4FAFFADF4FAFFA3D6D9FFFBFBFBFF000000FF000000FFCFDECFFF0063
      00FF007800FF008800FF009200FF009500FF009000FF008400FF007000FF0058
      00FF0A4A0AFF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000098C4C5FF94E2E4FF8CD0DAFF9AE2
      E3FF9EE3E4FFA2E3E5FFA5E4E6FFA7E5E6FFAAE5E6FFABE6E6FFAAE6E7FFABE6
      E7FFABE8E9FFABE7E8FFACE8E9FFF1F1F1FF000000FFE4ECE4FF006400FF007D
      00FF009000FF009D00FF00A500FF00A800FF00A500FF009C00FF008B00FF0073
      00FF005700FF084408FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009ED9DDFF9AF2F7FF93E0EEFFA1F2
      F7FFA6F3F8FFAAF3F8FFAEF4F8FFB0F4F8FFB2F4F8FFB3F5F9FFB4F5F9FFB3F5
      FAFFB2F5F9FFB3F5FBFFB2F5FBFFF0F1F1FF000000FF0D640DFF007600FF008B
      00FF009A00FF00A300FF00A600FF07A207FF00AA00FF00A400FF009900FF0086
      00FF006B00FF004D00FF7E997EFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009ED8DCFF9BF2F7FF95E0EEFFA4F2
      F7FFAAF4F9FFACF3F7FFB2F4F8FFB6F5F9FFB7F5FAFFB7F5F9FFB7F5FAFFB7F6
      FAFFB4F5FAFFB2F4F9FFB3F5FAFFF0F1F1FFB7CEB7FF006800FF007F00FF008D
      00FF009700FF0EA00EFFB0D2B0FFF9FBF9FF28AD28FF1AAA1AFF019A01FF008E
      00FF007800FF005A00FF003D00FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CCDCEFF9AE4E5FF95D5DEFFA3E6
      E7FFA7E6E7FFADE7E8FFB0E7E8FFB1E6E7FFB5E9EAFFB4E9EAFFB4EAEAFFB2E9
      EAFFB3EAEBFFB1EAECFFB0EAEBFFF0F1F1FF3D7D3DFF006D00FF007F00FF0B8E
      0BFF2E9C2EFFD5E4D5FFFFFFFFFFF7F7F7FFB7D4B7FF37AC37FF34A934FF299F
      29FF007C00FF006300FF004400FFE8EDE8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1D8DCFFA0F3F8FF9AE2EFFFA7F3
      F7FFADF4F7FFB3F4F9FFB8F6FAFFBAF6FAFFBAF5F9FFB8F5F9FFB9F6FAFFB7F5
      FAFFB7F6FAFFB6F5FAFFB7F6FBFFF0F0F1FF2F782FFF006D00FF0E820EFF389C
      38FF98B198FFFEFEFEFFC6D9C6FF6D9E6DFFFFFFFFFF85B485FF42A842FF3DA3
      3DFF369636FF006500FF004900FF95AA95FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1D7DBFFA1F3F8FF9DE3F1FFAAF3
      F9FFAFF4F9FFB2F4F8FFB5F5F9FFB7F5F9FFB9F5FAFFBBF6FBFFB9F6FAFFB8F6
      FAFFB7F5F9FFB7F5FAFFB6F5FAFFF0F1F1FF327A32FF006A00FF3E973EFF469E
      46FF4DA44DFF4B954BFF50A150FF56AB56FFEDEEEDFFFFFFFFFF9BBD9BFF4AA1
      4AFF449A44FF1E751EFF004900FF839C83FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0D1D3FF9FE8EBFF9ADAE4FFA8EB
      EDFFABEBEEFFB1ECEEFFB2ECEEFFB4EDEEFFB6EDEFFFB6EDEFFFB4ECEEFFB5ED
      EFFFB5EEEFFFB4EDF0FFB5EEF0FFF0F1F1FF3B7D3BFF117011FF4A994AFF54A0
      54FF5BA75BFF62AC62FF66AF66FF68B168FF5E9A5EFFFEFEFEFFFFFFFFFF7CA8
      7CFF529D52FF488C48FF004600FFB4C3B4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4D9DCFFA5F3F8FF9FE4F1FFACF4
      F9FFAFF4F9FFB3F5F9FFB5F5FAFFB6F5F9FFB9F6FBFFB7F5F9FFB8F5FAFFB7F5
      F9FFB6F5FAFFB8F6FAFFB7F5FAFFF0F0F1FF669766FF247724FF569C56FF61A4
      61FF69AA69FF70AF70FF75B375FF78B478FF77B477FF7C9D7CFFFEFEFEFF5E92
      5EFF5E9F5EFF548F54FF004100FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C9193FF638E90FF668C91FF6991
      93FF688F90FF638A8CFF688D8EFF6B8F90FF6C8E8FFF668B8CFF668B8CFF668B
      8CFF678C8DFF6A9395FF6B9495FFF0F0F0FFF6F9F6FF428642FF629F62FF6DA8
      6DFF77AE77FF7FB47FFF84B784FF87B987FF86B986FF83B783FF789B78FF80A5
      80FF6BA26BFF5F915FFF0A430AFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D727FFF2A354DFF2B354EFF2B36
      4EFF2C364FFF2B354EFF2C374FFF2B354EFF2B364EFF2B354EFF2C364FFF2B36
      4EFF2A354EFF2B364EFF2B354EFFEFEFEFFF000000FF528C52FF6FA56FFF78AC
      78FF83B383FF8CB98CFF92BD92FF95BF95FF94BF94FF91BC91FF8AB88AFF80B0
      80FF75A575FF3A713AFFEDF1EDFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707786FF36435FFF35425EFF3542
      5FFF35425EFF35425EFF35425EFF36435FFF36435FFF36435FFF35435EFF3643
      5FFF36435FFF36435FFF36435EFFF4F5F5FF000000FF000000FF5E965EFF83B2
      83FF8DB98DFF97BF97FF9EC59EFFA2C8A2FFA1C8A1FF9DC39DFF95BD95FF8AB4
      8AFF7DA57DFF98B298FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BABEC6FF404F71FF425072FF4150
      71FF425172FF415072FF425172FF415071FF415072FF414F71FF415072FF4150
      71FF415071FF415071FF404F71FFFEFEFEFF000000FF000000FF000000FF72A3
      72FFA3C6A3FFA0C4A0FFA8CBA8FFADCEADFFACCDACFFA7C9A7FF9DBF9DFF8BAF
      8BFFC4D4C4FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF78849EFF4B5B81FF4C5C
      82FF4B5B81FF4B5B81FF4B5B82FF4B5C81FF4B5B81FF4B5B81FF4C5C82FF4B5B
      81FF4B5A81FF4A5A80FFF0F1F3FF000000FF000000FF000000FF000000FF0000
      00FFF1F6F1FF90B590FFC1D7C1FFC3D8C3FFC1D7C1FF9EBE9EFFAAC3AAFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008003FC3F000000000001E00F00000000
      0000C00700000000000080030000000000008001000000000000000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000100000000000000010000000000008001000000000000C00300000000
      0000E007000000008001F01F0000000000000000000000000000000000000000
      000000000000}
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.supplierpic
    Left = 240
    Top = 5
  end
  object rdbarangmstr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.barangrpt
    Left = 560
    Top = 69
  end
end
