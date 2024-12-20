object SetupCompany: TSetupCompany
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Setup Company'
  ClientHeight = 732
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 970
    Height = 732
    ActivePage = Tab2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabHeight = 40
    TabOrder = 0
    TabWidth = 210
    object Tab1: TTabSheet
      AlignWithMargins = True
      Caption = 'New Company'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -4
      Font.Name = 'Hammersmith One'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 950
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 207
          Width = 944
          Height = 460
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 470
            Height = 454
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object PriceFragmentedCheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 195
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Price Fragmented'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object AltParent2CheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 35
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Alt Parent 2'
              Ctl3D = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object AltParentCheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Alt Parent'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object AltImg2CheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 163
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Alt Img 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object AltImgCheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 131
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Alt Img'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object AltPriceCheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 99
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Alt Price'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object AltTagCheckBox: TCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 67
              Width = 464
              Height = 26
              Align = alTop
              Caption = 'Alt Tag'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 479
            Top = 3
            Width = 462
            Height = 454
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Button1: TButton
              AlignWithMargins = True
              Left = 200
              Top = 389
              Width = 259
              Height = 62
              Margins.Left = 200
              Align = alBottom
              Caption = 'Next'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -27
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 944
          Height = 62
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 455
            Top = 3
            Width = 290
            Height = 56
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              Left = 0
              Top = 0
              Width = 290
              Height = 27
              Align = alTop
              Caption = 'Company Logo (PNG)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 234
            end
            object Panel13: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 284
              Height = 23
              Align = alClient
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object CompanyLogoBox: TSearchBox
                AlignWithMargins = True
                Left = 1
                Top = 1
                Width = 282
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = 'CompanyLogoBox'
                ExplicitHeight = 27
              end
            end
          end
          object Panel8: TPanel
            AlignWithMargins = True
            Left = 229
            Top = 3
            Width = 220
            Height = 56
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              Left = 0
              Top = 0
              Width = 220
              Height = 27
              Align = alTop
              Caption = 'Branch Company'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 182
            end
            object Panel12: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 214
              Height = 23
              Align = alBottom
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object CompanyBranchEdit: TEdit
                AlignWithMargins = True
                Left = 2
                Top = 2
                Width = 210
                Height = 19
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                BevelInner = bvNone
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object Panel9: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 220
            Height = 56
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label1: TLabel
              Left = 0
              Top = 0
              Width = 220
              Height = 27
              Align = alTop
              Caption = 'Company Name'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 156
            end
            object Panel11: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 214
              Height = 23
              Align = alClient
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object CompanyNameEdit: TEdit
                AlignWithMargins = True
                Left = 2
                Top = 2
                Width = 210
                Height = 19
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                BevelInner = bvNone
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 71
          Width = 944
          Height = 130
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 938
            Height = 27
            Align = alTop
            Caption = 'Company Description'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'JetBrains Mono'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 247
          end
          object Panel10: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 36
            Width = 938
            Height = 91
            Align = alClient
            BevelOuter = bvNone
            Color = clGray
            ParentBackground = False
            TabOrder = 0
            object CompanyDescEdit: TEdit
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 934
              Height = 87
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              BevelInner = bvNone
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
    object Tab2: TTabSheet
      AlignWithMargins = True
      Caption = 'Config Company'
      ImageIndex = 1
      object Panel15: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 950
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DataHtmlPanel: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 278
          Height = 664
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object UrlBasePanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 596
            Width = 272
            Height = 64
            Margins.Top = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel17: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 266
              Height = 58
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 260
                Height = 25
                Align = alTop
                Caption = 'Url Base'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 88
              end
              object Panel18: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 32
                Width = 260
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object UrlBaseEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 256
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object UrlPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 372
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel29: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 158
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 152
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Img Atribute'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 132
              end
              object Panel30: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 152
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object ImgAtrEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 148
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object ImgPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 295
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Panel32: TPanel
              AlignWithMargins = True
              Left = 127
              Top = 3
              Width = 138
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 132
                Height = 25
                Align = alTop
                Caption = 'Img Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 99
              end
              object Panel33: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 132
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object ImgClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 128
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel34: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 112
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Img Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 77
              end
              object Panel35: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 112
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object ImgTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 108
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object PricePanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 218
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object Panel37: TPanel
              AlignWithMargins = True
              Left = 127
              Top = 3
              Width = 138
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 132
                Height = 25
                Align = alTop
                Caption = 'Price Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 121
              end
              object Panel38: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 132
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object PriceClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 128
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel39: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 112
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Price Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 99
              end
              object Panel40: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 112
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object PriceTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 108
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object TitlePanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 141
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object Panel42: TPanel
              AlignWithMargins = True
              Left = 127
              Top = 3
              Width = 138
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 132
                Height = 25
                Align = alTop
                Caption = 'Title Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 121
              end
              object Panel43: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 132
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object TitleClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 128
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel44: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 112
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Title Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 99
              end
              object Panel45: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 112
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object TitleTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 108
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object ParentPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 64
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object Panel47: TPanel
              AlignWithMargins = True
              Left = 127
              Top = 3
              Width = 138
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 132
                Height = 25
                Align = alTop
                Caption = 'Parent Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
              end
              object Panel48: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 132
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object ParentClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 128
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel49: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 112
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Parent Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 110
              end
              object Panel50: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 112
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object ParentTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 108
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object Panel51: TPanel
            AlignWithMargins = True
            Left = 6
            Top = 3
            Width = 269
            Height = 46
            Margins.Left = 6
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 6
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 8
              Width = 263
              Height = 35
              Margins.Top = 8
              Align = alClient
              Caption = 'Principal Data HTML'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -23
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 266
              ExplicitHeight = 30
            end
          end
          object Panel16: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 449
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 7
            object Panel31: TPanel
              AlignWithMargins = True
              Left = 127
              Top = 3
              Width = 138
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label34: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 132
                Height = 25
                Align = alTop
                Caption = 'Url Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 99
              end
              object Panel36: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 132
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object UrlClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 128
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel41: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label35: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 112
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Url Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 77
              end
              object Panel46: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 112
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object UrlTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 108
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object Panel27: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 526
            Width = 272
            Height = 62
            Margins.Top = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 8
            object Panel28: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 158
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label9: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 152
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Url Atr'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 77
              end
              object Panel54: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 152
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object UrlAtrEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 148
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 301
          Top = 3
          Width = 646
          Height = 664
          Margins.Left = 12
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object PriceFragmentedPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 517
            Width = 640
            Height = 73
            Margins.Bottom = 0
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel21: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 634
              Height = 67
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel22: TPanel
                AlignWithMargins = True
                Left = 453
                Top = 3
                Width = 164
                Height = 61
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label5: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 158
                  Height = 25
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Price Fraction'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 154
                end
                object Panel76: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 31
                  Width = 158
                  Height = 27
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clGray
                  ParentBackground = False
                  TabOrder = 0
                  object PriceFractionEdit: TEdit
                    AlignWithMargins = True
                    Left = 2
                    Top = 2
                    Width = 154
                    Height = 23
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alClient
                    BevelInner = bvNone
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'JetBrains Mono'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
              object Panel77: TPanel
                AlignWithMargins = True
                Left = 287
                Top = 3
                Width = 160
                Height = 61
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label29: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 154
                  Height = 25
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Price Decimal'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 143
                end
                object Panel78: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 31
                  Width = 154
                  Height = 27
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clGray
                  ParentBackground = False
                  TabOrder = 0
                  object PriceDecimalEdit: TEdit
                    AlignWithMargins = True
                    Left = 2
                    Top = 2
                    Width = 150
                    Height = 23
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alClient
                    BevelInner = bvNone
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'JetBrains Mono'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
              object Panel79: TPanel
                AlignWithMargins = True
                Left = 125
                Top = 3
                Width = 156
                Height = 61
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label30: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 150
                  Height = 25
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Price Integer'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 143
                end
                object Panel80: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 31
                  Width = 150
                  Height = 27
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clGray
                  ParentBackground = False
                  TabOrder = 0
                  object PriceIntegerEdit: TEdit
                    AlignWithMargins = True
                    Left = 2
                    Top = 2
                    Width = 146
                    Height = 23
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alClient
                    BevelInner = bvNone
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'JetBrains Mono'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
              object Panel81: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 116
                Height = 61
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label31: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 110
                  Height = 25
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Price Code'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                end
                object Panel82: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 31
                  Width = 110
                  Height = 27
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clGray
                  ParentBackground = False
                  TabOrder = 0
                  object PriceCodeEdit: TEdit
                    AlignWithMargins = True
                    Left = 2
                    Top = 2
                    Width = 106
                    Height = 23
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alClient
                    BevelInner = bvNone
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'JetBrains Mono'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
            end
          end
          object AltParent2Panel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 132
            Width = 640
            Height = 62
            Margins.Bottom = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel24: TPanel
              AlignWithMargins = True
              Left = 191
              Top = 3
              Width = 210
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label7: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 25
                Align = alTop
                Caption = 'Alt Parent 2 Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 198
              end
              object Panel25: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 204
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltParent2ClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel52: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 176
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Alt Parent 2 Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
              end
              object Panel53: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 176
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltParent2TagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object AltImg2Panel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 286
            Width = 640
            Height = 62
            Margins.Bottom = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Panel55: TPanel
              AlignWithMargins = True
              Left = 191
              Top = 3
              Width = 210
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label20: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 25
                Align = alTop
                Caption = 'Alt Img 2 Class '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 176
              end
              object Panel56: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 204
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltImg2ClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel57: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label21: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 176
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Alt Img Tag 2'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 143
              end
              object Panel58: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 176
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltImg2TagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object AltImgPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 209
            Width = 640
            Height = 62
            Margins.Bottom = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object Panel60: TPanel
              AlignWithMargins = True
              Left = 191
              Top = 3
              Width = 210
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label22: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 25
                Align = alTop
                Caption = 'Alt Img Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 143
              end
              object Panel61: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 204
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltImgClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel62: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label23: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 176
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Alt Img Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 121
              end
              object Panel63: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 176
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltImgTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object AltPricePanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 440
            Width = 640
            Height = 62
            Margins.Bottom = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object Panel65: TPanel
              AlignWithMargins = True
              Left = 191
              Top = 3
              Width = 210
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label24: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 25
                Align = alTop
                Caption = 'Alt Price Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 165
              end
              object Panel66: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 204
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltPriceClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel67: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label25: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 176
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Alt Price Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 143
              end
              object Panel68: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 176
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltPriceTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object AltParentPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 640
            Height = 62
            Margins.Bottom = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object Panel70: TPanel
              AlignWithMargins = True
              Left = 191
              Top = 3
              Width = 210
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label26: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 25
                Align = alTop
                Caption = 'Alt Parent Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 176
              end
              object Panel71: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 204
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltParentClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel72: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label27: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 176
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Alt Parent Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 154
              end
              object Panel73: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 176
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object AltParentTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          object TitleAltPanel: TPanel
            AlignWithMargins = True
            Left = 6
            Top = 3
            Width = 637
            Height = 46
            Margins.Left = 6
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 6
            object Label28: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 8
              Width = 631
              Height = 35
              Margins.Top = 8
              Align = alClient
              Caption = 'Alternative Data HTML'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -23
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 294
              ExplicitHeight = 30
            end
          end
          object UrlTestPanel: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 594
            Width = 640
            Height = 69
            Margins.Top = 4
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 7
            object Panel86: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 6
              Width = 281
              Height = 60
              Margins.Top = 6
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label33: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 275
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Url Test'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 88
              end
              object Panel87: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 275
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object UrlTestEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 271
                  Height = 22
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Button3: TButton
              AlignWithMargins = True
              Left = 424
              Top = 3
              Width = 213
              Height = 63
              Align = alRight
              Caption = 'Next'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -27
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = Button3Click
            end
          end
          object Panel59: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 363
            Width = 640
            Height = 62
            Margins.Bottom = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 8
            object Panel64: TPanel
              AlignWithMargins = True
              Left = 191
              Top = 3
              Width = 210
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label36: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 25
                Align = alTop
                Caption = 'Price Parent Class'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 198
              end
              object Panel69: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 30
                Width = 204
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object PriceParentClassEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object Panel74: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 56
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label37: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 176
                Height = 25
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Price Parent Tag'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'JetBrains Mono'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 165
              end
              object Panel83: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 31
                Width = 176
                Height = 22
                Align = alClient
                BevelOuter = bvNone
                Color = clGray
                ParentBackground = False
                TabOrder = 0
                object PriceParentTagEdit: TEdit
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 18
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'JetBrains Mono'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
        end
        object Panel75: TPanel
          AlignWithMargins = True
          Left = 284
          Top = 5
          Width = 2
          Height = 585
          Margins.Left = 0
          Margins.Top = 5
          Margins.Bottom = 80
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 2
            Height = 585
            Align = alClient
            Brush.Color = clBlack
            ExplicitWidth = 17
            ExplicitHeight = 514
          end
        end
      end
    end
    object Tab3: TTabSheet
      AlignWithMargins = True
      Caption = 'Test Company Config'
      ImageIndex = 2
      object Panel14: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 950
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel20: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 944
          Height = 550
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label32: TLabel
            Left = 0
            Top = 0
            Width = 944
            Height = 37
            Align = alClient
            Caption = 'Terminal Debug'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'JetBrains Mono'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 224
            ExplicitHeight = 36
          end
          object Panel26: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 40
            Width = 938
            Height = 507
            Align = alBottom
            BevelOuter = bvNone
            Color = clGray
            ParentBackground = False
            TabOrder = 0
            object DebugMemo: TMemo
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 934
              Height = 503
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              Lines.Strings = (
                'DebugMemo')
              TabOrder = 0
            end
          end
        end
        object Button2: TButton
          Left = 736
          Top = 576
          Width = 75
          Height = 25
          Caption = 'Button2'
          TabOrder = 1
        end
        object Panel23: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 559
          Width = 944
          Height = 108
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Button4: TButton
            AlignWithMargins = True
            Left = 749
            Top = 3
            Width = 192
            Height = 102
            Align = alRight
            Caption = 'Insert Company'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'JetBrains Mono'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Button5: TButton
            AlignWithMargins = True
            Left = 551
            Top = 3
            Width = 192
            Height = 102
            Align = alRight
            Caption = 'Test Scrapp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'JetBrains Mono'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button5Click
            ExplicitTop = 32
            ExplicitHeight = 73
          end
        end
      end
    end
  end
  object Python: TPythonEngine
    DllPath = 
      'C:\Users\\Parafal\AppData\Local\Programs\Python\Python312\python' +
      '312.dll'
    IO = OutputGui
    Left = 802
    Top = 341
  end
  object OutputGui: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = DebugMemo
    Left = 866
    Top = 349
  end
end
