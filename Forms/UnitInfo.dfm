object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'File Info'
  ClientHeight = 615
  ClientWidth = 665
  Color = 13946053
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  DesignSize = (
    665
    615)
  PixelsPerInch = 96
  TextHeight = 13
  object CloseBtn: TButton
    Left = 582
    Top = 582
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = CloseBtnClick
  end
  object InfoList: TListBox
    Left = 8
    Top = 8
    Width = 649
    Height = 568
    Style = lbOwnerDrawFixed
    ItemHeight = 15
    TabOrder = 1
    OnDrawItem = InfoListDrawItem
  end
  object SaveBtn: TButton
    Left = 8
    Top = 582
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    TabOrder = 2
    OnClick = SaveBtnClick
  end
  object SaveDialog1: TSaveDialog
    FileName = 'FileInfo.txt'
    Filter = 'Text Files|*.txt'
    Left = 600
    Top = 312
  end
end
