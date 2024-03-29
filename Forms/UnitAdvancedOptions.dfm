object AdvancedOptionsForm: TAdvancedOptionsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Advanced Options'
  ClientHeight = 509
  ClientWidth = 430
  Color = clInactiveCaption
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
  OnShow = FormShow
  DesignSize = (
    430
    509)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 414
    Height = 462
    ActivePage = TabSheet7
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet7: TTabSheet
      Caption = 'Rate control'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 12
        Top = 61
        Width = 147
        Height = 13
        Caption = 'Frame type lookahead frames:'
      end
      object FastFirstPassBtn: TsCheckBox
        Left = 12
        Top = 12
        Width = 102
        Height = 20
        Caption = 'No fast first pass'
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object FrameLookEdit: TJvSpinEdit
        Left = 165
        Top = 58
        Width = 50
        Height = 21
        CheckOptions = [coCheckOnExit, coCropBeyondLimit]
        Alignment = taCenter
        ButtonKind = bkClassic
        MaxValue = 250.000000000000000000
        Value = 40.000000000000000000
        TabOrder = 1
      end
      object MBTreeRCBtn: TsCheckBox
        Left = 12
        Top = 35
        Width = 109
        Height = 20
        Caption = 'Macroblock-tree rc'
        Checked = True
        State = cbChecked
        TabOrder = 2
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Motion'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        406
        434)
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 386
        Height = 81
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Motion Estimation'
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 27
          Width = 40
          Height = 13
          Caption = 'Method:'
        end
        object Label3: TLabel
          Left = 16
          Top = 51
          Width = 99
          Height = 13
          Caption = 'Subpixel refinement:'
        end
        object MEMethodList: TsComboBox
          Left = 121
          Top = 24
          Width = 200
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 0
          Text = 'Hexagonal search'
          Items.Strings = (
            'Diamon search'
            'Hexagonal search'
            'Uneven multi-hexagonal search'
            'Exhaustive search'
            'Hadamard exhaustive search')
        end
        object MESubpixelEdit: TJvSpinEdit
          Left = 121
          Top = 48
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 11.000000000000000000
          Value = 7.000000000000000000
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 95
        Width = 386
        Height = 58
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Motion vector'
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 28
          Width = 94
          Height = 13
          Caption = 'Max. search range:'
        end
        object MEMaxsearhcRangeEdit: TJvSpinEdit
          Left = 121
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Value = 16.000000000000000000
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 159
        Width = 386
        Height = 130
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Prediction'
        TabOrder = 2
        object Label5: TLabel
          Left = 16
          Top = 28
          Width = 111
          Height = 13
          Caption = 'Direct prediction mode:'
        end
        object Label6: TLabel
          Left = 16
          Top = 55
          Width = 153
          Height = 13
          Caption = 'Weight prediction for P-Frames:'
        end
        object MEPredictModeList: TsComboBox
          Left = 183
          Top = 24
          Width = 100
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 0
          Text = 'Spatial'
          Items.Strings = (
            'None'
            'Spatial'
            'Temporal'
            'Auto')
        end
        object MeWeightPList: TsComboBox
          Left = 183
          Top = 51
          Width = 178
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 1
          Text = 'Weight references'
          Items.Strings = (
            'Disabled'
            'Weight references'
            'Weight references + duplicates')
        end
      end
      object MEConstrainedBtn: TsCheckBox
        Left = 24
        Top = 260
        Width = 153
        Height = 20
        Caption = 'Constrained intra prediction'
        TabOrder = 3
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object MeWeightBBtn: TsCheckBox
        Left = 24
        Top = 237
        Width = 169
        Height = 20
        Caption = 'Weight prediction for B-Frames'
        Checked = True
        State = cbChecked
        TabOrder = 4
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Partition'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Prediction1Btn: TsCheckBox
        Left = 16
        Top = 24
        Width = 140
        Height = 20
        Caption = '8x8 dct spatial transform'
        Checked = True
        State = cbChecked
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object Prediction2Btn: TsCheckBox
        Left = 16
        Top = 47
        Width = 264
        Height = 20
        Caption = '8x8, 8x16 and 8x16 p-frame intra-predicted blocks'
        Checked = True
        State = cbChecked
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object Prediction3Btn: TsCheckBox
        Left = 16
        Top = 70
        Width = 264
        Height = 20
        Caption = '8x8, 8x16 and 8x16 b-frame intra-predicted blocks'
        Checked = True
        State = cbChecked
        TabOrder = 2
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object Prediction4Btn: TsCheckBox
        Left = 16
        Top = 93
        Width = 252
        Height = 20
        Caption = '4x4, 4x8 and 8x8 p-frame intra-predicted blocks'
        TabOrder = 3
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object Prediction5Btn: TsCheckBox
        Left = 16
        Top = 116
        Width = 144
        Height = 20
        Caption = '8x8 intra-predicted blocks'
        Checked = True
        State = cbChecked
        TabOrder = 4
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object Prediction6Btn: TsCheckBox
        Left = 16
        Top = 139
        Width = 144
        Height = 20
        Caption = '4x4 intra-predicted blocks'
        Checked = True
        State = cbChecked
        TabOrder = 5
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Frame'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        406
        434)
      object GroupBox5: TGroupBox
        Left = 8
        Top = 8
        Width = 386
        Height = 161
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Frame encoding'
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 129
          Width = 110
          Height = 13
          Caption = 'Max reference frames:'
        end
        object FrameInterlacedList: TsComboBox
          Left = 136
          Top = 99
          Width = 145
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Bottom field first'
          Items.Strings = (
            'Bottom field first'
            'Top field first'
            'Fake interlaced')
        end
        object FrameGopList: TsComboBox
          Left = 136
          Top = 72
          Width = 98
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Normal Mode'
          Items.Strings = (
            'Normal Mode'
            'Blu-ray Mode')
        end
        object FrameMaxRefEdit: TJvSpinEdit
          Left = 136
          Top = 126
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          ButtonKind = bkClassic
          MaxValue = 16.000000000000000000
          MinValue = 1.000000000000000000
          Value = 3.000000000000000000
          TabOrder = 2
        end
        object FrameLoopThrEdit: TJvSpinEdit
          Left = 248
          Top = 45
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          ButtonKind = bkClassic
          MaxValue = 6.000000000000000000
          MinValue = -6.000000000000000000
          TabOrder = 3
        end
        object FrameLoopStrEdit: TJvSpinEdit
          Left = 192
          Top = 45
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          ButtonKind = bkClassic
          MaxValue = 6.000000000000000000
          MinValue = -6.000000000000000000
          TabOrder = 4
        end
        object FrameCABACBtn: TsCheckBox
          Left = 16
          Top = 24
          Width = 54
          Height = 20
          Caption = 'CABAC'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = FrameCABACBtnClick
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object FrameInterlacedBtn: TsCheckBox
          Left = 16
          Top = 100
          Width = 73
          Height = 20
          Caption = 'Interlaced:'
          TabOrder = 6
          OnClick = FrameInterlacedBtnClick
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object FrameLoopBtn: TsCheckBox
          Left = 16
          Top = 46
          Width = 172
          Height = 20
          Caption = 'Loop filter: Strength/Threshold:'
          Checked = True
          State = cbChecked
          TabOrder = 7
          OnClick = FrameLoopBtnClick
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object FrameOpenGOPBtn: TsCheckBox
          Left = 16
          Top = 73
          Width = 74
          Height = 20
          Caption = 'Open GOP:'
          TabOrder = 8
          OnClick = FrameOpenGOPBtnClick
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 175
        Width = 386
        Height = 138
        Anchors = [akLeft, akTop, akRight]
        Caption = 'B-Frames'
        TabOrder = 1
        object Label8: TLabel
          Left = 16
          Top = 28
          Width = 135
          Height = 13
          Caption = 'Max. consequtive B-frames:'
        end
        object Label9: TLabel
          Left = 16
          Top = 55
          Width = 64
          Height = 13
          Caption = 'B-frame bias:'
        end
        object Label10: TLabel
          Left = 16
          Top = 82
          Width = 129
          Height = 13
          Caption = 'Adaptive b-frame decision:'
        end
        object Label11: TLabel
          Left = 16
          Top = 109
          Width = 111
          Height = 13
          Caption = 'B-frames as reference:'
        end
        object FrameAdaptiveBList: TsComboBox
          Left = 157
          Top = 78
          Width = 100
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 0
          Text = 'Fast'
          Items.Strings = (
            'Disabled'
            'Fast'
            'Optimal')
        end
        object FrameRefList: TsComboBox
          Left = 157
          Top = 105
          Width = 196
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 1
          Text = 'Strictly Hierarchical Pyramid'
          Items.Strings = (
            'Disabled'
            'Strictly Hierarchical Pyramid'
            'Non-strict (not blu-ray compatible)')
        end
        object FrameBBiasEdit: TJvSpinEdit
          Left = 157
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 100.000000000000000000
          MinValue = -100.000000000000000000
          TabOrder = 2
        end
        object FrameMaxConBEdit: TJvSpinEdit
          Left = 157
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 16.000000000000000000
          Value = 3.000000000000000000
          TabOrder = 3
        end
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 319
        Width = 386
        Height = 106
        Anchors = [akLeft, akTop, akRight]
        Caption = 'I-Frames'
        TabOrder = 2
        Visible = False
        object Label12: TLabel
          Left = 16
          Top = 28
          Width = 97
          Height = 13
          Caption = 'GOP size (min/max):'
        end
        object Label13: TLabel
          Left = 16
          Top = 55
          Width = 51
          Height = 13
          Caption = 'Threshold:'
        end
        object FrameIIntraBtn: TsCheckBox
          Left = 16
          Top = 78
          Width = 120
          Height = 20
          Caption = 'Periodic intra refresh'
          TabOrder = 0
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object FrameIGOPMinEdit: TJvSpinEdit
          Left = 136
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 100.000000000000000000
          TabOrder = 1
        end
        object FrameIThresholdEdit: TJvSpinEdit
          Left = 136
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          CheckMaxValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 2
        end
        object FrameIGOPMaxEdit: TJvSpinEdit
          Left = 192
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Value = 250.000000000000000000
          TabOrder = 3
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Analysis'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        406
        434)
      object Label19: TLabel
        Left = 24
        Top = 338
        Width = 98
        Height = 13
        Caption = 'Quantisation matrix:'
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 8
        Width = 386
        Height = 233
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Analysis'
        TabOrder = 0
        object Label14: TLabel
          Left = 16
          Top = 147
          Width = 196
          Height = 13
          Caption = 'Psychovisual rate distortion optimisation:'
        end
        object Label15: TLabel
          Left = 16
          Top = 174
          Width = 93
          Height = 13
          Caption = 'Psychovisual trellis:'
        end
        object Label16: TLabel
          Left = 16
          Top = 202
          Width = 78
          Height = 13
          Caption = 'Noise reduction:'
        end
        object AnalysisTrellisList: TsComboBox
          Left = 135
          Top = 68
          Width = 242
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Only on the final encode of a macroblock '
          Items.Strings = (
            'Only on the final encode of a macroblock '
            'On all mode decisions')
        end
        object AnalysisNoiseEdit: TJvSpinEdit
          Left = 119
          Top = 198
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 1
        end
        object AnalysisPTrellistEdit: TJvSpinEdit
          Left = 119
          Top = 171
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          Increment = 0.100000000000000000
          MaxValue = 20.000000000000000000
          ValueType = vtFloat
          TabOrder = 2
        end
        object AnalysisPRateEdit: TJvSpinEdit
          Left = 218
          Top = 144
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          Increment = 0.100000000000000000
          MaxValue = 10.000000000000000000
          ValueType = vtFloat
          Value = 1.000000000000000000
          TabOrder = 3
        end
        object AnalysisChromaBtn: TsCheckBox
          Left = 16
          Top = 47
          Width = 144
          Height = 20
          Caption = 'Chroma motion estimation'
          Checked = True
          State = cbChecked
          TabOrder = 4
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object AnalysisDCTBtn: TsCheckBox
          Left = 16
          Top = 116
          Width = 155
          Height = 20
          Caption = 'DCT decimaiton on P-frames'
          Checked = True
          State = cbChecked
          TabOrder = 5
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object AnalysisFastSkipBtn: TsCheckBox
          Left = 16
          Top = 93
          Width = 171
          Height = 20
          Caption = 'Fast skip detection on P-frames'
          Checked = True
          State = cbChecked
          TabOrder = 6
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object AnalysisMixedRefBtn: TsCheckBox
          Left = 16
          Top = 24
          Width = 103
          Height = 20
          Caption = 'Mixed references'
          Checked = True
          State = cbChecked
          TabOrder = 7
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
        object AnalysisTrellisBtn: TsCheckBox
          Left = 16
          Top = 70
          Width = 113
          Height = 20
          Caption = 'Trellis quantization:'
          Checked = True
          State = cbChecked
          TabOrder = 8
          OnClick = AnalysisTrellisBtnClick
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
        end
      end
      object GroupBox9: TGroupBox
        Left = 8
        Top = 247
        Width = 386
        Height = 82
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Luma quantisation deadzone'
        TabOrder = 1
        object Label17: TLabel
          Left = 16
          Top = 55
          Width = 165
          Height = 13
          Caption = 'Inter luma quantisation deadzone:'
        end
        object Label18: TLabel
          Left = 16
          Top = 28
          Width = 165
          Height = 13
          Caption = 'Intra luma quantisation deadzone:'
        end
        object AnalysisLuma2Edit: TJvSpinEdit
          Left = 192
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 32.000000000000000000
          Value = 21.000000000000000000
          TabOrder = 0
        end
        object AnalysisLuma1Edit: TJvSpinEdit
          Left = 192
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 32.000000000000000000
          Value = 11.000000000000000000
          TabOrder = 1
        end
      end
      object AnalysisMatrixList: TsComboBox
        Left = 128
        Top = 335
        Width = 75
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        Style = csDropDownList
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Flat matrix'
        Items.Strings = (
          'Flat matrix'
          'JVT matrix')
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Quantiser'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        406
        434)
      object GroupBox10: TGroupBox
        Left = 8
        Top = 8
        Width = 386
        Height = 193
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Quantiser'
        TabOrder = 0
        object Label20: TLabel
          Left = 16
          Top = 27
          Width = 72
          Height = 13
          Caption = 'Min. quantiser:'
        end
        object Label21: TLabel
          Left = 16
          Top = 54
          Width = 72
          Height = 13
          Caption = 'Max quantiser:'
        end
        object Label22: TLabel
          Left = 16
          Top = 81
          Width = 100
          Height = 13
          Caption = 'Max. quantiser step:'
        end
        object Label24: TLabel
          Left = 16
          Top = 108
          Width = 143
          Height = 13
          Caption = 'I and P-frame quantiser ratio:'
        end
        object Label25: TLabel
          Left = 16
          Top = 135
          Width = 145
          Height = 13
          Caption = 'P and B-frame quantiser ratio:'
        end
        object Label26: TLabel
          Left = 16
          Top = 162
          Width = 159
          Height = 13
          Caption = 'Chroma to luma quantiser offset:'
        end
        object MinQuantEdit: TJvSpinEdit
          Left = 192
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 51.000000000000000000
          TabOrder = 0
        end
        object MaxQuantEdit: TJvSpinEdit
          Left = 192
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 51.000000000000000000
          Value = 51.000000000000000000
          TabOrder = 1
        end
        object QauntStepEdit: TJvSpinEdit
          Left = 192
          Top = 78
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 10.000000000000000000
          Value = 4.000000000000000000
          TabOrder = 2
        end
        object IPQuantEdit: TJvSpinEdit
          Left = 192
          Top = 105
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          Increment = 0.100000000000000000
          MaxValue = 10.000000000000000000
          MinValue = 1.000000000000000000
          ValueType = vtFloat
          Value = 1.400000000000000000
          TabOrder = 3
        end
        object PBQuantEdit: TJvSpinEdit
          Left = 192
          Top = 132
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          Increment = 0.100000000000000000
          MaxValue = 10.000000000000000000
          MinValue = 1.000000000000000000
          ValueType = vtFloat
          Value = 1.300000000000000000
          TabOrder = 4
        end
        object CLQuantEdit: TJvSpinEdit
          Left = 192
          Top = 159
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 12.000000000000000000
          MinValue = -12.000000000000000000
          TabOrder = 5
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 207
        Width = 386
        Height = 114
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Quantiser curve compression'
        TabOrder = 1
        object Label27: TLabel
          Left = 16
          Top = 24
          Width = 165
          Height = 13
          Caption = 'Quantiser curve compression (%):'
        end
        object Label28: TLabel
          Left = 16
          Top = 56
          Width = 129
          Height = 13
          Caption = 'Reduce fluctuation before:'
        end
        object Label29: TLabel
          Left = 16
          Top = 88
          Width = 121
          Height = 13
          Caption = 'Reduce fluctuation after:'
        end
        object QuantCurve1Edit: TJvSpinEdit
          Left = 192
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 100.000000000000000000
          Value = 60.000000000000000000
          TabOrder = 0
        end
        object QuantCurve2Edit: TJvSpinEdit
          Left = 192
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          ValueType = vtFloat
          Value = 20.000000000000000000
          TabOrder = 1
        end
        object QuantCurve3Edit: TJvSpinEdit
          Left = 192
          Top = 78
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          Increment = 0.100000000000000000
          MaxValue = 1.000000000000000000
          ValueType = vtFloat
          Value = 0.500000000000000000
          TabOrder = 2
        end
      end
      object GroupBox12: TGroupBox
        Left = 8
        Top = 327
        Width = 386
        Height = 90
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Adaptive quantisation'
        TabOrder = 2
        object Label30: TLabel
          Left = 16
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Strength:'
        end
        object VarianceAQList: TsComboBox
          Left = 192
          Top = 24
          Width = 145
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Normal'
          Items.Strings = (
            'Normal'
            'Auto')
        end
        object AdaptiveEdit: TJvSpinEdit
          Left = 192
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          ButtonKind = bkClassic
          Increment = 0.100000000000000000
          MaxValue = 1.500000000000000000
          MinValue = 0.500000000000000000
          ValueType = vtFloat
          Value = 0.500000000000000000
          TabOrder = 1
        end
      end
      object VarianceAQBtn: TsCheckBox
        Left = 24
        Top = 352
        Width = 83
        Height = 20
        Caption = 'Variance AQ:'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = VarianceAQBtnClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Advanced'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        406
        434)
      object GroupBox13: TGroupBox
        Left = 8
        Top = 8
        Width = 386
        Height = 113
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Video buffer verifier'
        TabOrder = 0
        object Label31: TLabel
          Left = 16
          Top = 27
          Width = 121
          Height = 13
          Caption = 'Max. VBV bitrate (kbit/s):'
        end
        object Label32: TLabel
          Left = 16
          Top = 54
          Width = 104
          Height = 13
          Caption = 'VBV buffer size (kbit):'
        end
        object Label33: TLabel
          Left = 16
          Top = 81
          Width = 160
          Height = 13
          Caption = 'Initial VBV buffer occupancy (%):'
        end
        object VBFMaxBitrateEdit: TJvSpinEdit
          Left = 192
          Top = 24
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 0
        end
        object VBFBufferSizeEdit: TJvSpinEdit
          Left = 192
          Top = 51
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 1
        end
        object VBFInitialEdit: TJvSpinEdit
          Left = 192
          Top = 78
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          Alignment = taCenter
          ButtonKind = bkClassic
          MaxValue = 100.000000000000000000
          Value = 90.000000000000000000
          TabOrder = 2
        end
      end
      object GroupBox14: TGroupBox
        Left = 8
        Top = 127
        Width = 386
        Height = 114
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Slicing'
        TabOrder = 1
        object Label34: TLabel
          Left = 16
          Top = 28
          Width = 129
          Height = 13
          Caption = 'Max. size per slice (bytes):'
        end
        object Label35: TLabel
          Left = 16
          Top = 82
          Width = 80
          Height = 13
          Caption = 'Slices per frame:'
        end
        object Label36: TLabel
          Left = 16
          Top = 55
          Width = 126
          Height = 13
          Caption = 'Max. macroblock per slice:'
        end
        object Slice1Edit: TJvSpinEdit
          Left = 192
          Top = 24
          Width = 121
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          CheckMaxValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 0
        end
        object Slice2Edit: TJvSpinEdit
          Left = 192
          Top = 51
          Width = 121
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          CheckMaxValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 1
        end
        object Slice3Edit: TJvSpinEdit
          Left = 192
          Top = 78
          Width = 121
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          CheckMaxValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          TabOrder = 2
        end
      end
    end
  end
  object CloseBtn: TsBitBtn
    Left = 322
    Top = 476
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
  object ResetBtn: TsBitBtn
    Left = 8
    Top = 476
    Width = 100
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Reset'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      000000000000000000000000000C0000001C0000002C0000003C0000003B0000
      0032000000240000001100000002000000000000000000000000000000000000
      0000000000100000003252354E916F4968E2794F72FB7B5074FF7A5073FD704B
      69F0583C51C600000062000000490000001E0000000100000000000000000000
      000C422B3F55734B6CE1AC8EAAFFD5C1D6FFE0CDE1FFE0CEE2FFE0CDE1FFD5C1
      D6FFAC8EAAFF785170FA3C2936990000004B000000230000000000000000613F
      5C3A794F73F4D0B9D0FFC1AFBCFFC8C2C5FFF3F4F4FFF0F1F1FFF2F3F3FFF4F4
      F5FFDDD3DDFFD0B9D0FF7B5174FE4E3746920000002B00000002000000007A50
      74CCD0B9D0FFB3A2ABFFECEDEDFFF2F3F3FFE7E8E8FFDEE0DFFFE3E5E5FFE9EB
      EBFFF3F4F4FFE4E0E5FFD0B9D0FF7C5473F9251C1F1C000000007B507561AC8E
      AAFFC2AEBBFFE7E6E7FFEDEEEEFFA9ABABFF000000FFE5E7E7FFE4E6E6FFE2E4
      E4FFEFF0F0FFF6F6F6FFDACDDAFFAC8EAAFF7B576DC6000000007B5075B6D5C1
      D6FFB5ABADFFF1F2F2FFE7E9E9FFE9EBEBFF545454FF000000FFE8EAEAFFE6E8
      E8FFE3E5E5FFF6F7F7FFEDEDEEFFD5C1D6FF7E5774F4000000007A5074EDE0CD
      E1FFCDC9CAFFF3F4F4FFEBEDEDFFEDEFEFFFE0E2E2FF2A2A2AFF000000FFD9DB
      DBFFE6E8E8FFE8EAEAFFF6F7F7FFE0CDE1FF7B5274FE7357600B7A5074FDE0CE
      E2FFD3D3D3FFDBDFDDFFEFF1F1FFF2F4F4FFF3F5F5FF000000FF888C8DFFA3A4
      A4FFE9EBEBFFE9EBEBFFF8F9F8FFE0CEE2FF7B5074FF7357602E7A5074EDE0CD
      E1FFC2BDBDFFECEEEEFFF1F3F3FFF3F6F7FF000000FF266C7BFF5E7A81FFDEDF
      DFFFEBEDEDFFEBECECFFF5F5F5FFDECBDEFF7C5274FE7357600A7B5075B6D5C1
      D6FFB9AFB0FFEEF0F0FFE4EFF1FF000000FF5DADBFFF58C0D7FF58C0D7FFF0F2
      F2FFECEEEEFFD9EAEBFF9EEFF3FF7FCFDBFF698497EF21F1FF027B507561AC8E
      AAFFCCB8C4FFD6D5D5FF000000FF58C0D7FF58C0D7FF58C0D7FF58C0D7FFF0F2
      F2FFEBEDEDFF91EEF2FF4CEEF7FF85EEF4FF44EBF3F51FF5FF4A000000007A50
      74CBD0B9D0FFC1B1B6FFD7E4E7FF58C0D7FF58C0D7FF58C0D7FF58C0D7FFEEF0
      F0FFEAECECFF7FE7EEFF67EEF5FFE6FAFBFF72F7FEED20F5FF89000000007B50
      752E7B5074F1D0B9D0FFCEBCC7FFCAC6C8FF58C0D7FF58C0D7FF58C0D7FFE1E0
      E2FFD1C6CFFF91AFBBFF32DDE6FC54F3FBEE1FF5FEDE20F5FF57000000000000
      00007B50752E7B5074D1AC8EAAFFD5C1D6FFE0CDE1FFE0CEE2FFE0CDE1FFD4BF
      D4FFAA8DA6FF815C75E739C5D17020F4FF781FF6FF5900FFFF02000000000000
      000000000000000000007B5075617B5274CC7C5275F77B5075FE7D5376FA7E55
      75E079536F8A0000000000000000000000000000000000000000}
    TabOrder = 2
    OnClick = ResetBtnClick
    SkinData.SkinSection = 'BUTTON'
  end
end
