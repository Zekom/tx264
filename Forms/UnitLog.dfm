object LogForm: TLogForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Logs/Outputs'
  ClientHeight = 575
  ClientWidth = 825
  Color = 14870243
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    825
    575)
  PixelsPerInch = 96
  TextHeight = 13
  object ClearBtn: TsBitBtn
    Left = 114
    Top = 542
    Width = 100
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008B9C1F008C9DED008D9EEC008D
      9E9E008B9C21FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00008B9C13008D9EE24FC3D2FD5BD3E1FF30B5
      C6FA0890A1F6008D9FA9008B9C14FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00008E9FC536B5C5FA5FD8E7FF26CADFFF4ED4
      E5FF6DD9E7FF32B4C5FB008D9EE6008B9C26FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00008B9C431A9BABF66CDAE8FF10C5DCFF03C2DAFF03C2
      DAFF15C6DCFF5BD7E7FF56C8D6FE058FA0F1008B9C3FFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00018EA0D45ECFDDFF46DAEDFF18D0E7FF11CBE3FF07C4
      DCFF03C2DAFF03C2DAFF4CD3E4FF58CDDCFF048E9FF4008B9C1CFFFFFF00FFFF
      FF00FFFFFF00008B9C1A1194A5F78BEDFBFF3CE5FCFF37E4FBFF2FDEF6FF23D7
      EEFF14CDE5FF04C3DBFF03C2DAFF56D6E6FF33B6C6FB008E9FA8FFFFFF00FFFF
      FF00FFFFFF00007F9C5F2FB0C0F58AEFFDFF5FEAFDFF61EBFDFF52E9FDFF3CE6
      FDFF2ADBF3FF18D0E7FF10C6DCFF49D2E4FF67D4E2FF018D9FE9FFFFFF00FFFF
      FF00008B9C070024A1D71342ADFC84EAFBFF6BECFDFF84EFFDFF6DECFDFF52E9
      FDFF44E5FBFF65E3F3FF77DDEBFF49C1CFFE1B9EAEF3008C9DEAFFFFFF00008B
      9C5F008D9EEB29A5BBF6284ABBFF1D38B8FF61D8F6FF63EAFDFF6CEBFDFF7DEE
      FDFF88EAF8FF45BECDFA058F9FF7008E9FA3008B9C40008B9C02FFFFFF00008B
      9C5A018D9EF64FC8D8FF68DCECFF336DC8FF0D1BABFF62B1D7FF72DCEAFF43BD
      CCF70990A2F6018E9F9F008B9C1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000064878100889CFE41BDCDFF77DEEBFF1769B0F70036A0E4018FA0D2008C
      9D77008B9C15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000487802004A
      7B95014E80F40B76B2FF0188A1FF32AEBEFE1DA0B1F2008B9C3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000049796F0352
      86F40F7ABCFF107DC1FF015284F200859ACE008B9CFF008B9C29FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00004A7BED0C72
      B2FF107DC1FF0A6BA9FF004A7BDA00698A02008B9C82008B9C13FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00004A7BE50A69
      A6FF0B6DABFF004A7BF500487844FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000048783B004B
      7CDA004A7BE300487847FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 0
    OnClick = ClearBtnClick
    SkinData.SkinSection = 'BUTTON'
  end
  object CloseBtn: TsBitBtn
    Left = 717
    Top = 542
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      00000000000000008606000089BB000086FF000086FF000086FF000086FF0000
      86FF000086FF000088CF0000860F000000000000000000000000000000000000
      000000008606000089BB1A1AB1F84A4AECFF4747EDFF4343EBFF3F3FEAFF3B3B
      E8FF3737E7FF1818BCFB000088D8000086140000000000000000000000000000
      8606000089BB1D1DB4F84C4CEBFF0F0FCCFF0000C3FF0000C1FF0000BFFF0000
      BDFF0505BFFF2D2DDFFF1919BFFC000088DF0000861A00000000000086060000
      89BB2121B7F85252EDFF1010D0FF0000C7FF0000C5FF0000C3FF0000C1FF0000
      BFFF0000BDFF0505BEFF2C2CDFFF1B1BC4FC000088E600008620000089BC2424
      B8F95A5AEFFF1111D3FF0101CBFF5858D6FF0303C7FF0000C5FF0000C3FF0101
      C1FF5F5FD6FF0202BDFF0404BEFF2B2BDFFF1D1DC7FD000087EB020288FF6969
      F2FF2323D5FF1F1FD2FF9292DEFFECECECFFAAAAE4FF2F2FD0FF2828CEFFA5A5
      E9FFFEFEFEFF9696E3FF0000BDFF0303BDFF3434E6FF020289FF030389FF8585
      F5FF2F2FD5FF2F2FD5FF5B5BD7FFDFDFE5FFECECECFFAAAAE4FFA5A5E6FFF9F9
      F9FFF7F7FCFF6767DAFF1A1AC5FF0202BDFF3737E8FF020289FF030389FF8888
      F6FF2F2FD5FF2F2FD5FF2F2FD5FF5B5BD8FFDFDFE6FFECECECFFF1F1F1FFEDED
      F3FF6464DAFF2F2FCEFF2F2FCCFF2929C9FF4545E9FF020289FF030389FF8888
      F6FF2F2FD5FF2F2FD5FF2F2FD5FF3030D5FFACACDEFFE8E8E8FFECECECFFBCBC
      E8FF3131D1FF2F2FCFFF2F2FCEFF2F2FCCFF6161ECFF020289FF030389FF8888
      F6FF2F2FD5FF2F2FD5FF3030D5FF9999D8FFDFDFDFFFDEDEE2FFDFDFE6FFECEC
      ECFFABABE6FF3131D2FF2F2FD0FF2F2FCEFF6565EDFF020289FF020288FF8989
      F6FF4040DBFF2F2FD5FF9292D8FFDBDBDBFFD6D6DAFF6060D7FF5A5AD8FFE0E0
      E6FFEDEDEDFFA5A5E5FF2F2FD2FF3B3BD6FF6868EEFF020288FF000089B42626
      B3F78383F3FF4141DBFF5757D7FFCDCDDAFF5F5FD7FF2F2FD5FF2F2FD5FF5C5C
      D8FFD9D9E6FF5F5FDBFF3B3BD9FF6A6AEFFF1818B0F7000089AE33339E050000
      89B22424B2F78383F3FF4242DCFF3737D5FF2F2FD5FF2F2FD5FF2F2FD5FF2F2F
      D5FF3737D5FF3B3BDAFF6F6FF0FF1B1BB1F7000089B13F3FA404000000003F3F
      A404000089B12222B1F78383F3FF4242DCFF2F2FD5FF2F2FD5FF2F2FD5FF2F2F
      D5FF3C3CDBFF7575F1FF1F1FB4F8000089B50000860400000000000000000000
      00003F3FA404000089AF2222AFF78888F6FF8B8BF7FF8B8BF7FF8A8AF6FF8787
      F6FF8383F5FF2323B8F8000089B8000086040000000000000000000000000000
      0000000000003F3FA404000089AD000086FF000086FF000086FF000086FF0000
      86FF000086FF000089BC00008605000000000000000000000000}
    TabOrder = 1
    OnClick = CloseBtnClick
    SkinData.SkinSection = 'BUTTON'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 809
    Height = 528
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Normal Log'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object OutputList: TMemo
        Left = 0
        Top = 0
        Width = 801
        Height = 500
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WantTabs = True
        OnChange = OutputListChange
        ExplicitTop = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Full Output'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object FullOutputList: TMemo
        Left = 0
        Top = 0
        Width = 801
        Height = 500
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ScrollBars = ssBoth
        ShowHint = False
        TabOrder = 0
        WantTabs = True
        OnChange = FullOutputListChange
      end
    end
  end
  object SaveBtn: TsBitBtn
    Left = 8
    Top = 542
    Width = 100
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000000000000000000000000000000000006B706E806B70
      6EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706EFF6B70
      6EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706E806B706EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF6B706EFF6B706EFFFFFF
      FFFFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8
      B7FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF6B706EFF6B706EFFEFEF
      EFFFADB0AFFFAEB0AEFFAEB0AFFFADB0AEFFADB0AFFFADB0AFFFADB0AFFFADB0
      AFFFEFEEEFFF000000FFEEEFEEFFEFEEEEFFEFEEEFFF6B706EFF6B706EFFDCDC
      DCFFDBDBDCFFDBDCDCFFDCDCDCFFDCDBDCFFDBDCDCFFDCDBDCFFDCDCDCFFDBDC
      DBFFDCDCDBFF000000FFDBDCDCFFDCDCDBFFDCDCDCFF6B706EFF6B706EFFA1A4
      A3FFA1A4A2FFA1A4A3FFA1A4A3FFA1A4A3FFA1A4A3FFA1A4A3FFA1A4A3FFA1A4
      A3FFA1A4A3FFA1A4A3FFA1A4A3FFA1A4A3FFA1A4A3FF6B706EFF6B706EFFF7F7
      F7FFE3E3E3FFEEEEEEFFFAFAFAFFFAFAFAFFC8D4CEFF8E6C3FFF8B6738FFB4AE
      9AFFFAFAFAFFFCFCFCFFEEEEEEFFE3E3E3FFF0F0F0FF6B706EFF6B706EFFF9F9
      F9FFEEEEEEFFFAFAFAFFE4E4E4FFBFCBC5FF8B6738FFE3CBACFFDCBF98FF8F6B
      3BFFACA692FFE4E4E4FFFAFAFAFFEEEEEEFFF1F1F1FF6B706EFF6B706EFFF9F9
      F9FFFAFAFAFFE4E4E4FFBFCBC5FF8B6738FFDCBF98FFC09F73FFC09F73FFDFC8
      ABFF8B6738FFACA692FFE4E4E4FFF4F4F4FFF1F1F1FF6B706EFF6B706EFFFAFA
      FAFFEAE9E9FFC4CFCAFF8B6738FFDCBF98FFBF9F71FFBF9F71FFBF9F71FFC09F
      73FFD8BB96FF8B6738FFAFA995FFEAE9EAFFF2F2F2FF6B706EFF6B706EFFFCFB
      FCFFECECEBFF8B6738FF8B6738FF8B6738FF8B6738FFCAA779FFBD9258FF8B67
      38FF8B6738FF8B6738FF8B6738FFECECECFFF3F3F3FF6B706EFF6B7572FFFDFD
      FDFFEEEEEEFFEDEDEDFFDEE2DFFFB09877FF8B6738FFCAA779FFCEB38FFF8E6B
      3DFFC3BCACFFEEEDEDFFEEEEEDFFEDEEEDFFF3F4F3FF6B706EFF6E716BFFDDE6
      E2FFFFFFFFFFD6E1DDFFDDD6C9FFB6996EFF8B6738FFE2CBABFFD3B792FF9B7D
      54FFE5DFD5FFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FF6B706EFF887F6B967371
      66FF757062FF856D4AFF9A7441FF9F7844FFD9BF9EFFEBD9C1FFAF8651FF7D6A
      4EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706EFF6B706E809270425EBB96
      627ED1AD815DE6CEB1CDEFDFD0FFECDBC5FFDFC29BFFA08B68FD886E43FD5A7F
      6A1B00000000000000000000000000000000000000000000000077856C7C9179
      4D7E8B67386F8B67388C8B6738D48B6738FF8A693DF880714AE57A7858850000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 3
    OnClick = SaveBtnClick
    SkinData.SkinSection = 'BUTTON'
  end
  object SaveDialog1: TSaveDialog
    FileName = 'TX264.txt'
    Filter = 'Text files|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 624
    Top = 448
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 448
    Top = 16
  end
end
