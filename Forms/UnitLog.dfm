object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Log'
  ClientHeight = 575
  ClientWidth = 825
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    825
    575)
  PixelsPerInch = 96
  TextHeight = 13
  object OutputList: TJvListBox
    Left = 8
    Top = 8
    Width = 809
    Height = 523
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    Background.FillMode = bfmTile
    Background.Visible = False
    TabOrder = 0
  end
  object SaveBtn: TButton
    Left = 8
    Top = 537
    Width = 100
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveBtnClick
  end
  object ClearBtn: TButton
    Left = 114
    Top = 537
    Width = 100
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 2
    OnClick = ClearBtnClick
  end
  object CloseBtn: TButton
    Left = 717
    Top = 537
    Width = 100
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 3
    OnClick = CloseBtnClick
  end
  object SaveDialog1: TSaveDialog
    FileName = 'TX264.txt'
    Filter = 'Text files|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 224
    Top = 480
  end
end
