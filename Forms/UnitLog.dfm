object LogForm: TLogForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Console outputs'
  ClientHeight = 575
  ClientWidth = 825
  Color = 13946053
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
  object OutputList: TJvListBox
    Left = 8
    Top = 8
    Width = 809
    Height = 528
    Anchors = [akLeft, akTop, akRight, akBottom]
    Background.FillMode = bfmTile
    Background.Visible = False
    Style = lbOwnerDrawFixed
    TabOrder = 0
    OnDrawItem = OutputListDrawItem
    OnAddString = OutputListAddString
  end
  object SaveBtn: TButton
    Left = 8
    Top = 542
    Width = 50
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveBtnClick
  end
  object ClearBtn: TButton
    Left = 64
    Top = 542
    Width = 50
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 2
    OnClick = ClearBtnClick
  end
  object CloseBtn: TButton
    Left = 767
    Top = 542
    Width = 50
    Height = 25
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
