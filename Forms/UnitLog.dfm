object LogForm: TLogForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Logs/Outputs'
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
  object SaveBtn: TButton
    Left = 8
    Top = 542
    Width = 50
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    TabOrder = 0
    OnClick = SaveBtnClick
  end
  object CloseBtn: TButton
    Left = 767
    Top = 542
    Width = 50
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 1
    OnClick = CloseBtnClick
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 809
    Height = 528
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Normal Log'
      object OutputList: TJvListBox
        Left = 0
        Top = 0
        Width = 801
        Height = 500
        Align = alClient
        Background.FillMode = bfmTile
        Background.Visible = False
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnDrawItem = OutputListDrawItem
        OnAddString = OutputListAddString
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Full Output'
      ImageIndex = 1
      object FullOutputList: TJvListBox
        Left = 0
        Top = 0
        Width = 801
        Height = 500
        Align = alClient
        Background.FillMode = bfmTile
        Background.Visible = False
        Style = lbOwnerDrawVariable
        TabOrder = 0
        OnDrawItem = FullOutputListDrawItem
        OnChange = FullOutputListChange
      end
    end
  end
  object ClearBtn: TButton
    Left = 64
    Top = 542
    Width = 50
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 3
    OnClick = ClearBtnClick
  end
  object SaveDialog1: TSaveDialog
    FileName = 'TX264.txt'
    Filter = 'Text files|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 624
    Top = 448
  end
end
