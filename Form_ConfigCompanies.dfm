object Form1: TForm1
  Left = 0
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Config Companies'
  ClientHeight = 707
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 963
    Height = 701
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Company: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 957
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 143
        Top = 3
        Width = 226
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object UrlBase: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 22
          Width = 220
          Height = 23
          Align = alBottom
          EditLabel.Width = 42
          EditLabel.Height = 15
          EditLabel.Caption = 'Url Base'
          TabOrder = 0
          Text = 'https://www.gsuplementos.com.br'
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 134
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object CompanyName: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 22
          Width = 128
          Height = 23
          Align = alBottom
          EditLabel.Width = 87
          EditLabel.Height = 15
          EditLabel.Caption = 'Company Name'
          TabOrder = 0
          Text = 'Growth Supplements'
        end
      end
    end
    object ScrappConfig: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 223
      Width = 957
      Height = 418
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Title: TPanel
        AlignWithMargins = True
        Left = 151
        Top = 3
        Width = 142
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Panel15: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object TitleTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 43
            EditLabel.Height = 15
            EditLabel.Caption = 'Title Tag'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 136
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object TitleClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 52
            EditLabel.Height = 15
            EditLabel.Caption = 'Title Class'
            TabOrder = 0
            Text = ''
          end
        end
      end
      object Parent: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 142
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Panel21: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 211
          Width = 136
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object AltParentTag2: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 82
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Parent Tag 2'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel22: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object AltParentClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 82
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Parent Class'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel23: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 267
          Width = 136
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object AltParentClass2: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 91
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Parent Class 2'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel24: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 107
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object AltParentTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 73
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Parent Tag'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel25: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object ParentClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 64
            EditLabel.Height = 15
            EditLabel.Caption = 'Parent Class'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel26: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object ParentTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 55
            EditLabel.Height = 15
            EditLabel.Caption = 'Parent Tag'
            TabOrder = 0
            Text = ''
          end
        end
      end
      object Price: TPanel
        AlignWithMargins = True
        Left = 299
        Top = 3
        Width = 142
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Panel18: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object AltPriceClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 74
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Price Class'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel27: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 107
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object AltPriceTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 65
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Price Tag'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel28: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object PriceClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 56
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Class'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel29: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object PriceTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 47
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Tag'
            TabOrder = 0
            Text = ''
          end
        end
      end
      object PriceSeparately: TPanel
        AlignWithMargins = True
        Left = 447
        Top = 3
        Width = 142
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 367
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object AltPriceParentClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 125
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Price Parent Class @'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 263
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object PriceFraction: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 72
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Fraction'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 211
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object PriceDecimal: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 72
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Decimal'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel9: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object PriceParentTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 98
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Parent Tag @'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object PriceInteger: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 66
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Integer'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 107
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object PriceCode: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 57
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Code'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
          object PriceParentClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 107
            EditLabel.Height = 15
            EditLabel.Caption = 'Price Parent Class @'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 315
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          object AltPriceParentTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 116
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Price Parent Tag @'
            TabOrder = 0
            Text = ''
          end
        end
      end
      object Img: TPanel
        AlignWithMargins = True
        Left = 595
        Top = 3
        Width = 142
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
        object Panel30: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 315
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object AltImgClass2: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 78
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Img Class 2'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel31: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 263
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object AltImgTag2: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 69
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Img Tag 2'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel32: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 211
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object AltImgClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 69
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Img Class'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel33: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object ImgTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 42
            EditLabel.Height = 15
            EditLabel.Caption = 'Img Tag'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel34: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object AltImgTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 63
            EditLabel.Height = 15
            EditLabel.Caption = 'Alt Img Tag '
            TabOrder = 0
            Text = ''
          end
        end
        object Panel35: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 107
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object ImgAttribute: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 71
            EditLabel.Height = 15
            EditLabel.Caption = 'Img Attribute'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel36: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
          object ImgClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 51
            EditLabel.Height = 15
            EditLabel.Caption = 'Img Class'
            TabOrder = 0
            Text = ''
          end
        end
      end
      object Url: TPanel
        AlignWithMargins = True
        Left = 743
        Top = 3
        Width = 142
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        object Panel40: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object UrlTag: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 36
            EditLabel.Height = 15
            EditLabel.Caption = 'Url Tag'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel42: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 107
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object UrlAttribute: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 65
            EditLabel.Height = 15
            EditLabel.Caption = 'Url Attribute'
            TabOrder = 0
            Text = ''
          end
        end
        object Panel43: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 136
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object UrlClass: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 130
            Height = 23
            Align = alBottom
            EditLabel.Width = 45
            EditLabel.Height = 15
            EditLabel.Caption = 'Url Class'
            TabOrder = 0
            Text = ''
          end
        end
      end
    end
    object CategoriesPanel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 63
      Width = 957
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 6
      object Panel13: TPanel
        AlignWithMargins = True
        Left = 192
        Top = 3
        Width = 182
        Height = 44
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 380
        object PreWorkParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 176
          Height = 23
          Align = alBottom
          EditLabel.Width = 105
          EditLabel.Height = 15
          EditLabel.Caption = 'Pre-Workout Param'
          TabOrder = 0
          Text = 'pre-treino'
        end
      end
      object Panel14: TPanel
        AlignWithMargins = True
        Left = 380
        Top = 3
        Width = 182
        Height = 44
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 472
        ExplicitTop = 0
        object AminoacidParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 176
          Height = 23
          Align = alBottom
          EditLabel.Width = 98
          EditLabel.Height = 15
          EditLabel.Caption = ' Aminoacid Param'
          TabOrder = 0
          Text = 'creatina'
          ExplicitLeft = 6
        end
      end
      object Panel11: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 183
        Height = 44
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 0
        object WheyParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 177
          Height = 23
          Align = alBottom
          EditLabel.Width = 110
          EditLabel.Height = 15
          EditLabel.Caption = 'Whey-Protein Param'
          TabOrder = 0
          Text = 'whey-protein'
          ExplicitLeft = 6
        end
      end
    end
    object Scrap: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 175
      Width = 957
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = 172
      object Label2: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 118
        Height = 36
        Margins.Left = 10
        Align = alLeft
        Caption = 'Scrap Config'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 30
      end
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 647
      Width = 957
      Height = 51
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object AddConfig: TButton
        AlignWithMargins = True
        Left = 776
        Top = 3
        Width = 178
        Height = 45
        Align = alRight
        Caption = 'Add Config Company'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = AddConfigClick
      end
      object TestScrap: TButton
        AlignWithMargins = True
        Left = 592
        Top = 3
        Width = 178
        Height = 45
        Align = alRight
        Caption = 'Test Scrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object SubCategoriesPanel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 110
      Width = 957
      Height = 59
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 9
      object Panel37: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 183
        Height = 53
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -38
        ExplicitTop = 6
        object CreatineTitleParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 27
          Width = 177
          Height = 23
          Align = alBottom
          EditLabel.Width = 103
          EditLabel.Height = 15
          EditLabel.Caption = 'Creatine TitleParam'
          TabOrder = 0
          Text = 'creatina'
        end
      end
      object Panel38: TPanel
        AlignWithMargins = True
        Left = 570
        Top = 3
        Width = 183
        Height = 53
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 381
        object TresDablioParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 27
          Width = 177
          Height = 23
          Align = alBottom
          EditLabel.Width = 76
          EditLabel.Height = 15
          EditLabel.Caption = '3W TitleParam'
          TabOrder = 0
          Text = 'whey-protein'
        end
      end
      object Panel39: TPanel
        AlignWithMargins = True
        Left = 192
        Top = 3
        Width = 183
        Height = 53
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object IsoTitleParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 27
          Width = 177
          Height = 23
          Align = alBottom
          EditLabel.Width = 74
          EditLabel.Height = 15
          EditLabel.Caption = 'Iso TitleParam'
          TabOrder = 0
          Text = 'whey-protein'
        end
      end
      object Panel41: TPanel
        AlignWithMargins = True
        Left = 381
        Top = 3
        Width = 183
        Height = 53
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitLeft = 384
        ExplicitTop = 6
        object ConcentratedTitleParam: TLabeledEdit
          AlignWithMargins = True
          Left = 3
          Top = 27
          Width = 177
          Height = 23
          Align = alBottom
          EditLabel.Width = 87
          EditLabel.Height = 15
          EditLabel.Caption = '100% TitleParam'
          TabOrder = 0
          Text = 'whey-protein'
        end
      end
    end
  end
  object Q_InsertConfig: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'INSERT INTO configcompanies ('
      
        '    id_company, parent_tag, title_tag, img_tag, price_tag, url_b' +
        'ase, url_tag, url_attribute,'
      
        '    url_base, url_class, url_test, price_parent_tag, price_paren' +
        't_class, price_code, '
      
        '    price_integer, price_decimal, price_fraction, img_attribute,' +
        ' parent_class, title_class, '
      
        '    price_class, img_class, alt_price_parent_tag, alt_price_pare' +
        'nt_class, alt_img_tag, '
      
        '    alt_img_class, alt_parent_class_2, alt_img_tag_2, alt_img_cl' +
        'ass_2, alt_parent_tag_2, '
      '    alt_parent_tag, alt_parent_class'
      ')'
      'VALUES ('
      
        '    (SELECT id_company FROM companies WHERE company = :company),' +
        ' :parent_tag, :title_tag, :img_tag, :price_tag, :url_base, :url_' +
        'tag, :url_attribute,'
      
        '    :url_base, :url_class, :url_test, :price_parent_tag, :price_' +
        'parent_class, :price_code,'
      
        '    :price_integer, :price_decimal, :price_fraction, :img_attrib' +
        'ute, :parent_class, :title_class, '
      
        '    :price_class, :img_class, :alt_price_parent_tag, :alt_price_' +
        'parent_class, :alt_img_tag, '
      
        '    :alt_img_class, :alt_parent_class_2, :alt_img_tag_2, :alt_im' +
        'g_class_2, :alt_parent_tag_2,'
      '    :alt_parent_tag, :alt_parent_class'
      ');'
      '')
    Left = 797
    Top = 493
    ParamData = <
      item
        Name = 'COMPANY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PARENT_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TITLE_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IMG_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'URL_BASE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'URL_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'URL_ATTRIBUTE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'URL_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'URL_TEST'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_PARENT_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_PARENT_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_CODE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_INTEGER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_DECIMAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_FRACTION'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IMG_ATTRIBUTE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PARENT_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TITLE_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IMG_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_PRICE_PARENT_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_PRICE_PARENT_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_IMG_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_IMG_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_PARENT_CLASS_2'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_IMG_TAG_2'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_IMG_CLASS_2'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_PARENT_TAG_2'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_PARENT_TAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALT_PARENT_CLASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object Q_InsertCompany: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'INSERT INTO companies ('
      '    company'
      ')'
      'VALUES ('
      '    :company'
      ');'
      '')
    Left = 901
    Top = 493
    ParamData = <
      item
        Name = 'COMPANY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object Q_InsertCategoryParams: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'INSERT INTO categoryparams ('
      '    id_company, id_category, companyparam'
      ')'
      'VALUES ('
      
        '    (SELECT id_company FROM companies WHERE company = :company),' +
        ' :id_category, :companyparam'
      ');'
      '')
    Left = 837
    Top = 437
    ParamData = <
      item
        Name = 'COMPANY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CATEGORY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMPANYPARAM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object Q_InsertSubCategoryParams: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'INSERT INTO subcategorytitleparams ('
      '    id_company, id_category, id_subcategory, companyparam'
      ')'
      'VALUES ('
      
        '    (SELECT id_company FROM companies WHERE company = :company),' +
        ' :id_category, :id_subcategory, :companyparam'
      ');'
      '')
    Left = 837
    Top = 389
    ParamData = <
      item
        Name = 'COMPANY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CATEGORY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SUBCATEGORY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMPANYPARAM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
