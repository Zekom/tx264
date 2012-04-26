object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'TX264'
  ClientHeight = 667
  ClientWidth = 589
  Color = 13946053
  Constraints.MinHeight = 705
  Constraints.MinWidth = 605
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    589
    667)
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 487
    Width = 69
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Output folder:'
  end
  object StartBtn: TButton
    Left = 481
    Top = 634
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Start'
    TabOrder = 0
    OnClick = StartBtnClick
  end
  object StopBtn: TButton
    Left = 375
    Top = 634
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Stop'
    Enabled = False
    TabOrder = 1
    OnClick = StopBtnClick
  end
  object LogsBtn: TButton
    Left = 63
    Top = 634
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Logs/Outputs'
    TabOrder = 2
    OnClick = LogsBtnClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 573
    Height = 233
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Files and Paths'
    TabOrder = 3
    DesignSize = (
      573
      233)
    object DownBtn: TButton
      Left = 339
      Top = 16
      Width = 50
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Down'
      TabOrder = 0
      OnClick = DownBtnClick
    end
    object FileList: TJvListBox
      Left = 12
      Top = 47
      Width = 549
      Height = 177
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Background.FillMode = bfmTile
      Background.Visible = False
      ParentFlat = False
      MultiSelect = True
      ParentFont = False
      Style = lbOwnerDrawFixed
      TabOrder = 1
      OnDrawItem = FileListDrawItem
    end
    object RemoveAllBtn: TButton
      Left = 451
      Top = 16
      Width = 50
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Clear'
      TabOrder = 2
      OnClick = RemoveAllBtnClick
    end
    object RemoveBtn: TButton
      Left = 395
      Top = 16
      Width = 50
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Remove'
      TabOrder = 3
      OnClick = RemoveBtnClick
    end
    object UpBtn: TButton
      Left = 283
      Top = 16
      Width = 50
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Up'
      TabOrder = 4
      OnClick = UpBtnClick
    end
    object AddBtn: TButton
      Left = 12
      Top = 16
      Width = 50
      Height = 25
      Caption = 'Add'
      TabOrder = 5
      OnClick = AddBtnClick
    end
    object InfoBtn: TButton
      Left = 511
      Top = 16
      Width = 50
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Info'
      TabOrder = 6
      OnClick = InfoBtnClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 510
    Width = 573
    Height = 118
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Progress'
    TabOrder = 4
    DesignSize = (
      573
      118)
    object TotalProgressLabel: TLabel
      Left = 518
      Top = 23
      Width = 37
      Height = 13
      Alignment = taCenter
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = '0%'
      ExplicitLeft = 519
    end
    object CurrentProgressLabel: TLabel
      Left = 518
      Top = 42
      Width = 37
      Height = 13
      Alignment = taCenter
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = '0%'
      ExplicitLeft = 519
    end
    object ConsoleOutputEdit: TEdit
      Left = 12
      Top = 61
      Width = 547
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object InfoEdit: TEdit
      Left = 12
      Top = 88
      Width = 547
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akRight, akBottom]
      Enabled = False
      TabOrder = 1
    end
    object TotalProgressBar: TProgressBar
      Left = 12
      Top = 23
      Width = 500
      Height = 13
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 2
    end
    object CurrentProgressBar: TProgressBar
      Left = 12
      Top = 42
      Width = 500
      Height = 13
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 3
    end
  end
  object AboutBtn: TButton
    Left = 8
    Top = 634
    Width = 50
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'About'
    TabOrder = 5
    OnClick = AboutBtnClick
  end
  object PageControl: TPageControl
    Left = 8
    Top = 247
    Width = 573
    Height = 230
    ActivePage = TabSheet1
    Anchors = [akLeft, akRight, akBottom]
    MultiLine = True
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'General'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 202
        Align = alClient
        BevelOuter = bvNone
        Color = 13946053
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          565
          202)
        object Label21: TLabel
          Left = 424
          Top = 151
          Width = 51
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'Container:'
          ExplicitLeft = 425
        end
        object Label43: TLabel
          Left = 432
          Top = 178
          Width = 43
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'Encoder:'
          ExplicitLeft = 433
        end
        object GroupBox4: TGroupBox
          Left = 4
          Top = 3
          Width = 320
          Height = 141
          Caption = 'Rate Control'
          TabOrder = 0
          DesignSize = (
            320
            141)
          object Label1: TLabel
            Left = 47
            Top = 82
            Width = 51
            Height = 13
            Caption = 'Quantizer:'
          end
          object Label2: TLabel
            Left = 29
            Top = 55
            Width = 69
            Height = 13
            Caption = 'Bitrate (kbps):'
          end
          object Label3: TLabel
            Left = 12
            Top = 27
            Width = 86
            Height = 13
            Caption = 'Encoding Method:'
          end
          object Label4: TLabel
            Left = 74
            Top = 109
            Width = 24
            Height = 13
            Caption = 'CRF:'
          end
          object BitrateEdit: TJvSpinEdit
            Left = 104
            Top = 51
            Width = 53
            Height = 21
            CheckOptions = [coCheckOnChange, coCropBeyondLimit]
            CheckMinValue = True
            Alignment = taCenter
            ButtonKind = bkClassic
            Value = 386.000000000000000000
            TabOrder = 0
          end
          object EncodeModeList: TComboBox
            Left = 104
            Top = 24
            Width = 201
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = 3
            ParentFont = False
            TabOrder = 1
            Text = 'Constant Bitrate (Single Pass)'
            OnChange = EncodeModeListChange
            Items.Strings = (
              'Constant Rate Factor (Single Pass)'
              'Constant Quantiser (Single Pass)'
              'Average Bitrate (Two pass)'
              'Constant Bitrate (Single Pass)')
          end
          object QuantEdit: TJvSpinEdit
            Left = 104
            Top = 78
            Width = 53
            Height = 21
            CheckOptions = [coCheckOnExit, coCropBeyondLimit]
            Alignment = taCenter
            ButtonKind = bkClassic
            MaxValue = 51.000000000000000000
            Value = 21.000000000000000000
            Enabled = False
            TabOrder = 2
          end
          object CRFEdit: TJvSpinEdit
            Left = 104
            Top = 105
            Width = 53
            Height = 21
            CheckOptions = [coCheckOnExit, coCropBeyondLimit]
            Alignment = taCenter
            ButtonKind = bkClassic
            MaxValue = 51.000000000000000000
            Value = 21.000000000000000000
            Enabled = False
            TabOrder = 3
          end
          object BitrateTolBtn: TCheckBox
            Left = 179
            Top = 53
            Width = 70
            Height = 17
            Anchors = [akRight, akBottom]
            Caption = 'Tolerance:'
            Checked = True
            State = cbChecked
            TabOrder = 4
            OnClick = BitrateTolBtnClick
          end
          object BitrateTolEdit: TJvSpinEdit
            Left = 255
            Top = 51
            Width = 50
            Height = 21
            CheckOptions = [coCheckOnExit, coCropBeyondLimit]
            Alignment = taCenter
            ButtonKind = bkClassic
            Increment = 0.010000000000000000
            MaxValue = 1.000000000000000000
            ValueType = vtFloat
            Value = 0.010000000000000000
            Enabled = False
            Anchors = [akRight, akBottom]
            TabOrder = 5
          end
        end
        object GroupBox6: TGroupBox
          Left = 343
          Top = 3
          Width = 217
          Height = 110
          Anchors = [akTop, akRight]
          Caption = 'Simple Options'
          TabOrder = 1
          DesignSize = (
            217
            110)
          object Label13: TLabel
            Left = 18
            Top = 82
            Width = 28
            Height = 13
            Caption = 'Tune:'
          end
          object Label14: TLabel
            Left = 12
            Top = 55
            Width = 40
            Height = 13
            Caption = 'Presets:'
          end
          object Label15: TLabel
            Left = 12
            Top = 27
            Width = 34
            Height = 13
            Caption = 'Profile:'
          end
          object PresetsList: TComboBox
            Left = 52
            Top = 51
            Width = 155
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemIndex = 1
            TabOrder = 0
            Text = 'Ultrafast'
            Items.Strings = (
              'Not set'
              'Ultrafast'
              'Superfast'
              'Veryfast'
              'Faster'
              'Fast'
              'Medium'
              'Slow'
              'Slower'
              'Veryslow'
              'Placebo')
          end
          object ProfileList: TComboBox
            Left = 52
            Top = 24
            Width = 155
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemIndex = 1
            TabOrder = 1
            Text = 'Baseline'
            Items.Strings = (
              'Not set'
              'Baseline'
              'Main'
              'High'
              'High10'
              'High422'
              'High444')
          end
          object TuneList: TComboBox
            Left = 52
            Top = 78
            Width = 155
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemIndex = 1
            TabOrder = 2
            Text = 'Film'
            Items.Strings = (
              'Not set'
              'Film'
              'Animation'
              'Grain'
              'Stillimage'
              'Psnr'
              'Ssim'
              'Fastdecode'
              'Zerolatency')
          end
        end
        object ConstantFPSBtn: TCheckBox
          Left = 259
          Top = 177
          Width = 113
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Force constant fps'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object ContainerList: TComboBox
          Left = 481
          Top = 147
          Width = 70
          Height = 21
          Style = csDropDownList
          Anchors = [akRight, akBottom]
          ItemIndex = 0
          TabOrder = 3
          Text = 'MKV'
          Items.Strings = (
            'MKV'
            'MP4')
        end
        object SubtitleBtn: TCheckBox
          Left = 12
          Top = 150
          Width = 241
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Mux subtitles to output mkv/mp4 from source'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object CopyChapertBtn: TCheckBox
          Left = 12
          Top = 177
          Width = 190
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Copy chapter info from source'
          TabOrder = 5
        end
        object EncoderList: TComboBox
          Left = 481
          Top = 174
          Width = 70
          Height = 21
          Style = csDropDownList
          Anchors = [akRight, akBottom]
          ItemIndex = 0
          TabOrder = 6
          Text = 'x264'
          Items.Strings = (
            'x264'
            'FFMpeg')
        end
        object UseAdvancedBtn: TCheckBox
          Left = 343
          Top = 120
          Width = 102
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Advanced options'
          TabOrder = 7
          OnClick = UseAdvancedBtnClick
        end
        object AdvancedBtn: TButton
          Left = 451
          Top = 116
          Width = 105
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Advanced Options'
          Enabled = False
          TabOrder = 8
          OnClick = AdvancedBtnClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 202
        Align = alClient
        BevelOuter = bvNone
        Color = 13946053
        ParentBackground = False
        TabOrder = 0
        object Label11: TLabel
          Left = 377
          Top = 93
          Width = 55
          Height = 13
          Caption = 'Bottom (y):'
        end
        object Label12: TLabel
          Left = 324
          Top = 66
          Width = 42
          Height = 13
          Caption = 'Left (w):'
        end
        object Label28: TLabel
          Left = 54
          Top = 39
          Width = 60
          Height = 13
          Caption = 'Pre-defined:'
        end
        object Label5: TLabel
          Left = 82
          Top = 66
          Width = 32
          Height = 13
          Caption = 'Width:'
        end
        object Label6: TLabel
          Left = 176
          Top = 66
          Width = 35
          Height = 13
          Caption = 'Height:'
        end
        object Label7: TLabel
          Left = 40
          Top = 93
          Width = 74
          Height = 13
          Caption = 'Resize method:'
        end
        object Label8: TLabel
          Left = 394
          Top = 39
          Width = 39
          Height = 13
          Caption = 'Top (x):'
        end
        object Label9: TLabel
          Left = 455
          Top = 66
          Width = 46
          Height = 13
          Caption = 'Right (h):'
        end
        object CropBottomEdit: TJvSpinEdit
          Left = 435
          Top = 89
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Enabled = False
          TabOrder = 0
        end
        object CropBtn: TCheckBox
          Left = 310
          Top = 24
          Width = 47
          Height = 17
          Caption = 'Crop'
          TabOrder = 1
          OnClick = CropBtnClick
        end
        object CropLeftEdit: TJvSpinEdit
          Left = 367
          Top = 62
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Enabled = False
          TabOrder = 2
        end
        object CropRightEdit: TJvSpinEdit
          Left = 504
          Top = 62
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Enabled = False
          TabOrder = 3
        end
        object CropTopEdit: TJvSpinEdit
          Left = 435
          Top = 35
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Enabled = False
          TabOrder = 4
        end
        object HeightEdit: TJvSpinEdit
          Left = 217
          Top = 62
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Value = 240.000000000000000000
          TabOrder = 5
        end
        object ResizeBtn: TCheckBox
          Left = 12
          Top = 12
          Width = 59
          Height = 17
          Caption = 'Resize'
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = ResizeBtnClick
        end
        object ResizeMethodList: TComboBox
          Left = 120
          Top = 89
          Width = 147
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 7
          Text = 'Bilinear'
          Items.Strings = (
            'Fastbilinear'
            'Bilinear'
            'Bicubic'
            'Experimental'
            'Point'
            'Area'
            'Bicublin'
            'Gauss'
            'Sinc'
            'Lanczos'
            'Spline')
        end
        object VideoSizeList: TComboBox
          Left = 120
          Top = 35
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 3
          TabOrder = 8
          Text = '320x240'
          OnChange = VideoSizeListChange
          Items.Strings = (
            '160x112'
            '176x144'
            '220x176'
            '320x240'
            '352x240'
            '352x288'
            '368x208'
            '480x272'
            '480x320'
            '480x480'
            '480x576'
            '512x384'
            '640x480'
            '720x480'
            '720x576'
            '1080x720'
            '1280x720'
            '1440x1080'
            '1920x1080')
        end
        object WidthEdit: TJvSpinEdit
          Left = 120
          Top = 62
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
          Alignment = taCenter
          ButtonKind = bkClassic
          Value = 320.000000000000000000
          TabOrder = 9
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Audio'
      ImageIndex = 2
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 202
        Align = alClient
        BevelOuter = bvNone
        Color = 13946053
        ParentBackground = False
        TabOrder = 0
        object Label18: TLabel
          Left = 3
          Top = 154
          Width = 58
          Height = 13
          Caption = 'Samplerate:'
        end
        object Label19: TLabel
          Left = 364
          Top = 154
          Width = 48
          Height = 13
          Caption = 'Channels:'
        end
        object AudioPages: TPageControl
          Left = 3
          Top = 3
          Width = 560
          Height = 141
          ActivePage = FAAC
          TabOrder = 0
          OnChange = AudioPagesChange
          object FAAC: TTabSheet
            Caption = 'FAAC'
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 552
              Height = 113
              Align = alClient
              BevelOuter = bvNone
              Color = 13946053
              ParentBackground = False
              TabOrder = 0
              object Label16: TLabel
                Left = 12
                Top = 12
                Width = 76
                Height = 13
                Caption = 'Encoding Mode:'
              end
              object Label17: TLabel
                Left = 50
                Top = 39
                Width = 38
                Height = 13
                Caption = 'Quality:'
              end
              object Label20: TLabel
                Left = 52
                Top = 66
                Width = 36
                Height = 13
                Caption = 'Bitrate:'
              end
              object FAACEncodeList: TComboBox
                Left = 94
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Quality'
                OnChange = FAACEncodeListChange
                Items.Strings = (
                  'Quality'
                  'Bitrate')
              end
              object FAACQualityEdit: TJvSpinEdit
                Left = 94
                Top = 35
                Width = 50
                Height = 21
                CheckOptions = [coCheckOnExit, coCropBeyondLimit]
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 500.000000000000000000
                MinValue = 10.000000000000000000
                Value = 10.000000000000000000
                TabOrder = 1
              end
              object FAACBitrateEdit: TJvSpinEdit
                Left = 94
                Top = 62
                Width = 50
                Height = 21
                CheckOptions = [coCheckOnExit, coCropBeyondLimit]
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 600.000000000000000000
                MinValue = 24.000000000000000000
                Value = 24.000000000000000000
                TabOrder = 2
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'NeroAAC'
            ImageIndex = 1
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 552
              Height = 113
              Align = alClient
              BevelOuter = bvNone
              Color = 13946053
              ParentBackground = False
              TabOrder = 0
              object Label29: TLabel
                Left = 417
                Top = 12
                Width = 34
                Height = 13
                Caption = 'Profile:'
              end
              object Label30: TLabel
                Left = 12
                Top = 12
                Width = 76
                Height = 13
                Caption = 'Encdoing Mode:'
              end
              object Label31: TLabel
                Left = 50
                Top = 39
                Width = 38
                Height = 13
                Caption = 'Quality:'
              end
              object Label32: TLabel
                Left = 52
                Top = 66
                Width = 36
                Height = 13
                Caption = 'Bitrate:'
              end
              object NeroEncodingList: TComboBox
                Left = 94
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Quality'
                OnChange = NeroEncodingListChange
                Items.Strings = (
                  'Quality'
                  'ABR'
                  'CBR')
              end
              object NeroQualityEdit: TJvSpinEdit
                Left = 94
                Top = 35
                Width = 50
                Height = 21
                CheckOptions = [coCheckOnExit, coCropBeyondLimit]
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 1.000000000000000000
                ValueType = vtFloat
                Value = 0.500000000000000000
                TabOrder = 1
              end
              object NeroBitrateEdit: TJvSpinEdit
                Left = 94
                Top = 62
                Width = 50
                Height = 21
                CheckOptions = [coCheckOnExit, coCropBeyondLimit]
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 600.000000000000000000
                MinValue = 24.000000000000000000
                Value = 24.000000000000000000
                TabOrder = 2
              end
              object NeroProfileList: TComboBox
                Left = 457
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 3
                Text = 'Auto'
                Items.Strings = (
                  'Auto'
                  'LC'
                  'HE'
                  'HE2')
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'QAAC'
            ImageIndex = 2
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 552
              Height = 113
              Align = alClient
              BevelOuter = bvNone
              Color = 13946053
              ParentBackground = False
              TabOrder = 0
              object Label33: TLabel
                Left = 12
                Top = 12
                Width = 76
                Height = 13
                Caption = 'Encoding Mode:'
              end
              object Label34: TLabel
                Left = 59
                Top = 39
                Width = 29
                Height = 13
                Caption = 'TBVR:'
              end
              object Label35: TLabel
                Left = 52
                Top = 66
                Width = 36
                Height = 13
                Caption = 'Bitrate:'
              end
              object Label36: TLabel
                Left = 367
                Top = 12
                Width = 84
                Height = 13
                Caption = 'Encoding Quality:'
              end
              object QaacEncodeMethodList: TComboBox
                Left = 94
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'ABR'
                OnChange = QaacEncodeMethodListChange
                Items.Strings = (
                  'ABR'
                  'TVBR'
                  'CVBR'
                  'CBR')
              end
              object QaacQualityList: TComboBox
                Left = 457
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 2
                TabOrder = 1
                Text = '2'
                Items.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object QaacBitrateEdit: TJvSpinEdit
                Left = 94
                Top = 62
                Width = 50
                Height = 21
                CheckMinValue = True
                Alignment = taCenter
                ButtonKind = bkClassic
                Value = 80.000000000000000000
                TabOrder = 2
              end
              object QaacvQualityEdit: TJvSpinEdit
                Left = 94
                Top = 35
                Width = 50
                Height = 21
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 127.000000000000000000
                Value = 64.000000000000000000
                Enabled = False
                TabOrder = 3
              end
              object QaacHEBtn: TCheckBox
                Left = 367
                Top = 35
                Width = 97
                Height = 17
                Caption = 'HE AAC mode'
                TabOrder = 4
                OnClick = QaacHEBtnClick
              end
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Aften'
            ImageIndex = 3
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 552
              Height = 113
              Align = alClient
              BevelOuter = bvNone
              Color = 13946053
              ParentBackground = False
              TabOrder = 0
              object Label40: TLabel
                Left = 12
                Top = 12
                Width = 76
                Height = 13
                Caption = 'Encoding Mode:'
              end
              object Label41: TLabel
                Left = 50
                Top = 39
                Width = 38
                Height = 13
                Caption = 'Quality:'
              end
              object Label42: TLabel
                Left = 52
                Top = 66
                Width = 36
                Height = 13
                Caption = 'Bitrate:'
              end
              object AftenEncodeList: TComboBox
                Left = 94
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 1
                TabOrder = 0
                Text = 'CBR'
                OnChange = AftenEncodeListChange
                Items.Strings = (
                  'Quality'
                  'CBR')
              end
              object AftenQualityEdit: TJvSpinEdit
                Left = 94
                Top = 35
                Width = 50
                Height = 21
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 1023.000000000000000000
                Value = 240.000000000000000000
                Enabled = False
                TabOrder = 1
              end
              object AftenBitrateEdit: TJvSpinEdit
                Left = 94
                Top = 62
                Width = 50
                Height = 21
                CheckMinValue = True
                Alignment = taCenter
                ButtonKind = bkClassic
                Value = 96.000000000000000000
                TabOrder = 2
              end
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Ogg Vorbis'
            ImageIndex = 4
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 552
              Height = 113
              Align = alClient
              BevelOuter = bvNone
              Color = 13946053
              ParentBackground = False
              TabOrder = 0
              object Label37: TLabel
                Left = 12
                Top = 12
                Width = 76
                Height = 13
                Caption = 'Encoding Mode:'
              end
              object Label38: TLabel
                Left = 50
                Top = 39
                Width = 38
                Height = 13
                Caption = 'Quality:'
              end
              object Label39: TLabel
                Left = 52
                Top = 66
                Width = 36
                Height = 13
                Caption = 'Bitrate:'
              end
              object OggencodeList: TComboBox
                Left = 94
                Top = 8
                Width = 75
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Quality'
                OnChange = OggencodeListChange
                Items.Strings = (
                  'Quality'
                  'Bitrate')
              end
              object OggQualityEdit: TJvSpinEdit
                Left = 94
                Top = 35
                Width = 50
                Height = 21
                Alignment = taCenter
                ButtonKind = bkClassic
                MaxValue = 10.000000000000000000
                MinValue = -2.000000000000000000
                Value = 6.000000000000000000
                TabOrder = 1
              end
              object OggBitrateEdit: TJvSpinEdit
                Left = 94
                Top = 62
                Width = 50
                Height = 21
                CheckMinValue = True
                Alignment = taCenter
                ButtonKind = bkClassic
                Value = 80.000000000000000000
                TabOrder = 2
              end
              object OggManagedBitrateBtn: TCheckBox
                Left = 427
                Top = 10
                Width = 97
                Height = 17
                Caption = 'Managed bitrate'
                TabOrder = 3
              end
            end
          end
        end
        object AudioChannelList: TComboBox
          Left = 418
          Top = 150
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'Original'
          Items.Strings = (
            'Original'
            'Mono'
            'Stereo'
            '5.1')
        end
        object AudioSampleRateList: TComboBox
          Left = 67
          Top = 150
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
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
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Custom Options'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 202
        Align = alClient
        BevelOuter = bvNone
        Color = 13946053
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          565
          202)
        object Label22: TLabel
          Left = 42
          Top = 12
          Width = 50
          Height = 13
          Caption = 'x264.exe:'
        end
        object Label23: TLabel
          Left = 32
          Top = 39
          Width = 60
          Height = 13
          Caption = 'ffmpeg.exe:'
        end
        object Label24: TLabel
          Left = 12
          Top = 150
          Width = 244
          Height = 13
          Caption = 'Please note that these options will not be checked.'
        end
        object Label25: TLabel
          Left = 17
          Top = 66
          Width = 75
          Height = 13
          Caption = 'mkvmerge.exe:'
        end
        object Label26: TLabel
          Left = 32
          Top = 93
          Width = 60
          Height = 13
          Caption = 'mp4box.exe'
        end
        object Label27: TLabel
          Left = 12
          Top = 120
          Width = 80
          Height = 13
          Caption = 'mkvextract.exe:'
        end
        object CustomVideoOptionsEdit: TEdit
          Left = 98
          Top = 8
          Width = 458
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object CustomAudioOptionsEdit: TEdit
          Left = 98
          Top = 35
          Width = 458
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object CustomMKVEdit: TEdit
          Left = 98
          Top = 62
          Width = 458
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
        end
        object CustomMP4Edit: TEdit
          Left = 98
          Top = 89
          Width = 458
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
        end
        object CustomMKVExtractEdit: TEdit
          Left = 98
          Top = 116
          Width = 458
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Splitting'
      ImageIndex = 5
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 202
        Align = alClient
        BevelOuter = bvNone
        Color = 13946053
        ParentBackground = False
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 4
          Top = 3
          Width = 277
          Height = 86
          Caption = 'Splitting'
          TabOrder = 0
          object Label44: TLabel
            Left = 17
            Top = 51
            Width = 82
            Height = 13
            Caption = 'Split according to'
          end
          object SplittingMethodList: TComboBox
            Left = 105
            Top = 47
            Width = 75
            Height = 21
            Style = csDropDownList
            Enabled = False
            ItemIndex = 1
            TabOrder = 0
            Text = 'Size (mb):'
            Items.Strings = (
              'Time (sec):'
              'Size (mb):')
          end
          object SplitEdit: TJvSpinEdit
            Left = 186
            Top = 47
            Width = 75
            Height = 21
            CheckOptions = [coCheckOnExit, coCropBeyondLimit]
            CheckMaxValue = False
            Alignment = taCenter
            ButtonKind = bkClassic
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            Enabled = False
            TabOrder = 1
          end
          object SplittingBtn: TCheckBox
            Left = 17
            Top = 24
            Width = 120
            Height = 17
            Caption = 'Enable splitting'
            TabOrder = 2
            OnClick = SplittingBtnClick
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Other Options'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 202
        Align = alClient
        BevelOuter = bvNone
        Color = 13946053
        ParentBackground = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 4
          Top = 3
          Width = 197
          Height = 86
          Caption = 'x264.exe Threading'
          TabOrder = 0
          object ThreadsBtn: TCheckBox
            Left = 16
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Threads:'
            TabOrder = 0
            OnClick = ThreadsBtnClick
          end
          object SliceThreadsBtn: TCheckBox
            Left = 16
            Top = 56
            Width = 88
            Height = 17
            Caption = 'Slice threads:'
            TabOrder = 1
            OnClick = SliceThreadsBtnClick
          end
          object ThreadsEdit: TJvSpinEdit
            Left = 132
            Top = 24
            Width = 50
            Height = 21
            Alignment = taCenter
            ButtonKind = bkClassic
            MaxValue = 128.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            Enabled = False
            TabOrder = 2
          end
          object SliceThreadsEdit: TJvSpinEdit
            Left = 132
            Top = 51
            Width = 50
            Height = 21
            Alignment = taCenter
            ButtonKind = bkClassic
            MaxValue = 128.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            Enabled = False
            TabOrder = 3
          end
        end
        object CheckUpdateBtn: TCheckBox
          Left = 11
          Top = 95
          Width = 140
          Height = 17
          Caption = 'Check updates on start'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object NoNeroNotifyBtn: TCheckBox
          Left = 11
          Top = 118
          Width = 238
          Height = 17
          Caption = 'Do not warn me if neroaacenc is not present'
          TabOrder = 2
        end
        object FullLogBtn: TCheckBox
          Left = 11
          Top = 141
          Width = 222
          Height = 17
          Caption = 'Also keep all the outputs of backends'
          TabOrder = 3
        end
      end
    end
  end
  object DirectoryEdit: TJvDirectoryEdit
    Left = 83
    Top = 483
    Width = 442
    Height = 21
    DialogKind = dkWin32
    BevelOuter = bvNone
    ButtonFlat = True
    Color = clWhite
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 7
    Text = 'C:\'
  end
  object OutputBtn: TButton
    Left = 531
    Top = 483
    Width = 50
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Open'
    TabOrder = 8
    OnClick = OutputBtnClick
  end
  object XPManifest1: TXPManifest
    Left = 176
    Top = 88
  end
  object AddMenu: TPopupMenu
    Left = 104
    Top = 80
    object AddFiles1: TMenuItem
      Caption = 'Add Files'
      OnClick = AddFiles1Click
    end
    object AddFolder1: TMenuItem
      Caption = 'Add Folder'
      OnClick = AddFolder1Click
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'Supported|*.mp4;*.mkv;*.avi;*.mov;*.m4v;*.mpeg;*.mpg;*.flv|All F' +
      'iles|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 328
    Top = 88
  end
  object OpenFolderDialog: TJvBrowseForFolderDialog
    Left = 408
    Top = 88
  end
  object Process: TJvCreateProcess
    StartupInfo.DefaultPosition = False
    StartupInfo.DefaultSize = False
    StartupInfo.ShowWindow = swHide
    StartupInfo.DefaultWindowState = False
    ConsoleOptions = [coRedirect]
    OnTerminate = ProcessTerminate
    OnRead = ProcessRead
    Left = 40
    Top = 80
  end
  object LogThread: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = LogThreadExecute
    Left = 248
    Top = 88
  end
  object PositionTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = PositionTimerTimer
    Left = 496
    Top = 80
  end
  object SystemInfo: TJvComputerInfoEx
    Left = 56
    Top = 152
  end
  object DragDrop: TJvDragDrop
    DropTarget = Owner
    OnDrop = DragDropDrop
    Left = 472
    Top = 168
  end
  object UpdateThread: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = UpdateThreadExecute
    Left = 240
    Top = 160
  end
  object UpdateChecker: TJvHttpUrlGrabber
    FileName = 'output.txt'
    Agent = 'JEDI-VCL'
    Port = 0
    ProxyAddresses = 'proxyserver'
    ProxyIgnoreList = '<local>'
    OnDoneFile = UpdateCheckerDoneFile
    Left = 368
    Top = 168
  end
end
