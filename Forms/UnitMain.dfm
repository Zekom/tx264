object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TX264'
  ClientHeight = 667
  ClientWidth = 590
  Color = clSilver
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
    590
    667)
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 481
    Width = 69
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Output folder:'
  end
  object StartBtn: TButton
    Left = 462
    Top = 629
    Width = 120
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Start'
    TabOrder = 0
    OnClick = StartBtnClick
  end
  object StopBtn: TButton
    Left = 336
    Top = 629
    Width = 120
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Stop'
    Enabled = False
    TabOrder = 1
    OnClick = StopBtnClick
  end
  object LogsBtn: TButton
    Left = 89
    Top = 629
    Width = 75
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Logs'
    TabOrder = 2
    OnClick = LogsBtnClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 574
    Height = 256
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Files and Paths'
    TabOrder = 3
    DesignSize = (
      574
      256)
    object DownBtn: TButton
      Left = 246
      Top = 16
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Down'
      TabOrder = 0
      OnClick = DownBtnClick
    end
    object FileList: TJvListBox
      Left = 12
      Top = 47
      Width = 546
      Height = 192
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Background.FillMode = bfmTile
      Background.Visible = False
      ParentFlat = False
      MultiSelect = True
      ParentFont = False
      TabOrder = 1
    end
    object RemoveAllBtn: TButton
      Left = 458
      Top = 16
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Clear'
      TabOrder = 2
      OnClick = RemoveAllBtnClick
    end
    object RemoveBtn: TButton
      Left = 352
      Top = 16
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Remove'
      TabOrder = 3
      OnClick = RemoveBtnClick
    end
    object UpBtn: TButton
      Left = 140
      Top = 16
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Up'
      TabOrder = 4
      OnClick = UpBtnClick
    end
    object AddBtn: TButton
      Left = 12
      Top = 16
      Width = 100
      Height = 25
      Caption = 'Add'
      TabOrder = 5
      OnClick = AddBtnClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 505
    Width = 574
    Height = 118
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Progress'
    TabOrder = 4
    DesignSize = (
      574
      118)
    object CurrentProgressBar: TGauge
      Left = 12
      Top = 38
      Width = 548
      Height = 17
      Anchors = [akLeft, akRight, akBottom]
      BackColor = clInactiveBorder
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Progress = 0
    end
    object TotalProgressBar: TGauge
      Left = 12
      Top = 15
      Width = 548
      Height = 17
      Anchors = [akLeft, akRight, akBottom]
      BackColor = clInactiveBorder
      BorderStyle = bsNone
      Progress = 0
    end
    object ConsoleOutputEdit: TEdit
      Left = 12
      Top = 61
      Width = 548
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
      Width = 548
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akRight, akBottom]
      Enabled = False
      TabOrder = 1
    end
  end
  object AboutBtn: TButton
    Left = 8
    Top = 629
    Width = 75
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'About'
    TabOrder = 5
    OnClick = AboutBtnClick
  end
  object PageControl: TPageControl
    Left = 8
    Top = 270
    Width = 574
    Height = 202
    ActivePage = TabSheet1
    Anchors = [akLeft, akRight, akBottom]
    MultiLine = True
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'General'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 174
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          566
          174)
        object Label21: TLabel
          Left = 443
          Top = 153
          Width = 51
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'Container:'
          ExplicitLeft = 429
          ExplicitTop = 150
        end
        object GroupBox4: TGroupBox
          Left = 4
          Top = 3
          Width = 320
          Height = 110
          Caption = 'Rate Control'
          TabOrder = 0
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
            Left = 222
            Top = 55
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
              'Average Bitrate (Two4 pass)'
              'Constant Bitrate (Single Pass)')
          end
          object QuantEdit: TJvSpinEdit
            Left = 104
            Top = 78
            Width = 53
            Height = 21
            CheckOptions = [coCheckOnExit, coCropBeyondLimit]
            ButtonKind = bkClassic
            MaxValue = 51.000000000000000000
            Value = 21.000000000000000000
            Enabled = False
            TabOrder = 2
          end
          object CRFEdit: TJvSpinEdit
            Left = 252
            Top = 51
            Width = 53
            Height = 21
            CheckOptions = [coCheckOnExit, coCropBeyondLimit]
            ButtonKind = bkClassic
            MaxValue = 51.000000000000000000
            Value = 21.000000000000000000
            Enabled = False
            TabOrder = 3
          end
        end
        object GroupBox6: TGroupBox
          Left = 344
          Top = 3
          Width = 217
          Height = 110
          Anchors = [akTop, akRight]
          Caption = 'Presets'
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
          Left = 12
          Top = 124
          Width = 113
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Force constant fps'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object BitrateTolBtn: TCheckBox
          Left = 394
          Top = 124
          Width = 100
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Bitrate tolerance:'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = BitrateTolBtnClick
        end
        object BitrateTolEdit: TJvSpinEdit
          Left = 500
          Top = 122
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          ButtonKind = bkClassic
          MaxValue = 1.000000000000000000
          ValueType = vtFloat
          Value = 0.010000000000000000
          Enabled = False
          Anchors = [akRight, akBottom]
          TabOrder = 4
        end
        object ContainerList: TComboBox
          Left = 500
          Top = 147
          Width = 52
          Height = 21
          Style = csDropDownList
          Anchors = [akRight, akBottom]
          ItemIndex = 1
          TabOrder = 5
          Text = 'MP4'
          Items.Strings = (
            'Matroska'
            'MP4')
        end
        object SubtitleBtn: TCheckBox
          Left = 12
          Top = 144
          Width = 229
          Height = 17
          Caption = 'Copy subtitle to destination from mkv/mp4'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 174
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label11: TLabel
          Left = 391
          Top = 89
          Width = 38
          Height = 13
          Caption = 'Bottom:'
        end
        object Label12: TLabel
          Left = 338
          Top = 67
          Width = 23
          Height = 13
          Caption = 'Left:'
        end
        object Label28: TLabel
          Left = 54
          Top = 47
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
          Top = 62
          Width = 35
          Height = 13
          Caption = 'Height:'
        end
        object Label7: TLabel
          Left = 40
          Top = 89
          Width = 74
          Height = 13
          Caption = 'Resize method:'
        end
        object Label8: TLabel
          Left = 407
          Top = 43
          Width = 22
          Height = 13
          Caption = 'Top:'
        end
        object Label9: TLabel
          Left = 469
          Top = 70
          Width = 29
          Height = 13
          Caption = 'Right:'
        end
        object CropBottomEdit: TJvSpinEdit
          Left = 435
          Top = 89
          Width = 50
          Height = 21
          CheckOptions = [coCheckOnExit, coCropBeyondLimit]
          CheckMinValue = True
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
            '1080720'
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
        Width = 566
        Height = 174
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label18: TLabel
          Left = 3
          Top = 158
          Width = 58
          Height = 13
          Caption = 'Samplerate:'
        end
        object Label19: TLabel
          Left = 364
          Top = 158
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
              Color = clSilver
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
              Color = clSilver
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
        Width = 566
        Height = 174
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          566
          174)
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
          Width = 459
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object CustomAudioOptionsEdit: TEdit
          Left = 98
          Top = 35
          Width = 459
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object CustomMKVEdit: TEdit
          Left = 98
          Top = 62
          Width = 459
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
        end
        object CustomMP4Edit: TEdit
          Left = 98
          Top = 89
          Width = 459
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
        end
        object CustomMKVExtractEdit: TEdit
          Left = 98
          Top = 116
          Width = 459
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Other Options'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 174
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 4
          Top = 3
          Width = 197
          Height = 86
          Caption = 'Threading'
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
            ButtonKind = bkClassic
            MaxValue = 128.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            Enabled = False
            TabOrder = 3
          end
        end
      end
    end
  end
  object DirectoryEdit: TJvDirectoryEdit
    Left = 83
    Top = 478
    Width = 418
    Height = 21
    DialogKind = dkWin32
    ButtonFlat = True
    Color = clWhite
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 7
    Text = 'C:\'
  end
  object OutputBtn: TButton
    Left = 507
    Top = 478
    Width = 75
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Open'
    TabOrder = 8
    OnClick = OutputBtnClick
  end
  object XPManifest1: TXPManifest
    Left = 208
    Top = 120
  end
  object AddMenu: TPopupMenu
    Left = 136
    Top = 112
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
    Filter = 'Supported|*.mp4;*.mkv;*.avi;*.mov;*.m4v;*.mpeg;*.mpg;*.flv'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 336
    Top = 112
  end
  object OpenFolderDialog: TJvBrowseForFolderDialog
    Left = 408
    Top = 112
  end
  object Process: TJvCreateProcess
    StartupInfo.DefaultPosition = False
    StartupInfo.DefaultSize = False
    StartupInfo.ShowWindow = swHide
    StartupInfo.DefaultWindowState = False
    ConsoleOptions = [coRedirect]
    OnTerminate = ProcessTerminate
    OnRead = ProcessRead
    Left = 72
    Top = 112
  end
  object LogThread: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = LogThreadExecute
    Left = 264
    Top = 112
  end
  object PositionTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = PositionTimerTimer
    Left = 496
    Top = 112
  end
  object SystemInfo: TJvComputerInfoEx
    Left = 32
    Top = 144
  end
  object DragDrop: TJvDragDrop
    DropTarget = Owner
    OnDrop = DragDropDrop
    Left = 368
    Top = 184
  end
end
