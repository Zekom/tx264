object SoXForm: TSoXForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Audio Effects'
  ClientHeight = 233
  ClientWidth = 266
  Color = 14870243
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    266
    233)
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 71
    Top = 114
    Width = 35
    Height = 13
    Caption = 'Attack:'
  end
  object sLabel2: TsLabel
    Left = 168
    Top = 114
    Width = 34
    Height = 13
    Caption = 'Decay:'
  end
  object NormBtn: TsCheckBox
    Left = 8
    Top = 34
    Width = 66
    Height = 20
    Caption = 'Normalize'
    Checked = True
    State = cbChecked
    TabOrder = 0
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object EnableBtn: TsCheckBox
    Left = 8
    Top = 8
    Width = 52
    Height = 20
    Caption = 'Enable'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = EnableBtnClick
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object VolumeBtn: TsCheckBox
    Left = 8
    Top = 60
    Width = 98
    Height = 20
    Caption = 'Change Volume:'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = VolumeBtnClick
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object ChannelList: TsComboBox
    Left = 113
    Top = 165
    Width = 145
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'Channels:'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = 16182738
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    Color = 15855332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = 'Original'
    Items.Strings = (
      'Original'
      'Mono'
      'Stereo'
      '5.1')
  end
  object SampleList: TsComboBox
    Left = 113
    Top = 138
    Width = 145
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'Sampling rate:'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = 16182738
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    Color = 15855332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'Original'
    Items.Strings = (
      'Original'
      '48000'
      '44100'
      '32000'
      '22050'
      '11025'
      '8000')
  end
  object VolumeEdit: TJvSpinEdit
    Left = 113
    Top = 59
    Width = 50
    Height = 21
    CheckOptions = [coCheckOnExit, coCropBeyondLimit]
    Alignment = taCenter
    ButtonKind = bkClassic
    Increment = 0.010000000000000000
    ValueType = vtFloat
    Value = 1.000000000000000000
    TabOrder = 5
  end
  object CloseBtn: TsBitBtn
    Left = 158
    Top = 200
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
    TabOrder = 6
    OnClick = CloseBtnClick
    SkinData.SkinSection = 'BUTTON'
    ExplicitTop = 172
  end
  object ThreadBtn: TsCheckBox
    Left = 8
    Top = 86
    Width = 86
    Height = 20
    Caption = 'Multithreaded'
    Checked = True
    State = cbChecked
    TabOrder = 7
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object DRCBtn: TsCheckBox
    Left = 8
    Top = 112
    Width = 41
    Height = 20
    Caption = 'DRC'
    TabOrder = 8
    OnClick = DRCBtnClick
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object DecayEdit: TJvSpinEdit
    Left = 208
    Top = 111
    Width = 50
    Height = 21
    CheckOptions = [coCheckOnExit, coCropBeyondLimit]
    CheckMinValue = True
    Alignment = taCenter
    ButtonKind = bkClassic
    Increment = 0.100000000000000000
    ValueType = vtFloat
    Value = 0.800000000000000000
    Enabled = False
    TabOrder = 9
  end
  object AttackEdit: TJvSpinEdit
    Left = 112
    Top = 111
    Width = 50
    Height = 21
    CheckOptions = [coCheckOnExit, coCropBeyondLimit]
    CheckMinValue = True
    Alignment = taCenter
    ButtonKind = bkClassic
    Increment = 0.100000000000000000
    ValueType = vtFloat
    Value = 0.300000000000000000
    Enabled = False
    TabOrder = 10
  end
end
