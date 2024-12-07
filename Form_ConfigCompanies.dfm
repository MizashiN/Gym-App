object Form1: TForm1
  Left = 0
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Config Companies'
  ClientHeight = 597
  ClientWidth = 908
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 908
    Height = 597
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnChange = PageControlChange
    object BrandRegistration: TTabSheet
      Caption = 'Brand Registration'
      ImageIndex = 2
      object Panel39: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 894
        Height = 561
        Align = alClient
        TabOrder = 0
        object Panel41: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 55
          Width = 886
          Height = 502
          Align = alClient
          TabOrder = 0
          object CompaniesGrid: TDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 878
            Height = 494
            Align = alClient
            DataSource = D_Companies
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'company'
                Title.Caption = 'Company'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Visible = True
              end>
          end
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 886
          Height = 45
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel45: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 87
            Height = 39
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
          end
          object Button3: TButton
            AlignWithMargins = True
            Left = 616
            Top = 3
            Width = 130
            Height = 39
            Align = alRight
            Caption = 'Insert'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button3Click
          end
          object Button2: TButton
            AlignWithMargins = True
            Left = 752
            Top = 3
            Width = 131
            Height = 39
            Align = alRight
            Caption = 'Delete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button2Click
          end
        end
      end
    end
    object UrlParamsInformations: TTabSheet
      AlignWithMargins = True
      Caption = 'Url Params Informations'
      object Panel12: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 70
        Width = 888
        Height = 488
        Align = alClient
        BiDiMode = bdLeftToRight
        Color = clWhite
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 0
        object CategoriesPanel: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 880
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel14: TPanel
            AlignWithMargins = True
            Left = 695
            Top = 3
            Width = 182
            Height = 54
            Align = alRight
            BevelOuter = bvNone
            Caption = 'Insert'
            TabOrder = 0
            object Button1: TButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 176
              Height = 48
              Align = alClient
              Caption = 'Insert'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button1Click
            end
          end
          object Panel20: TPanel
            AlignWithMargins = True
            Left = 191
            Top = 3
            Width = 182
            Height = 54
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 176
              Height = 21
              Align = alTop
              Caption = 'Subcategories'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 98
            end
            object SubCategCombobox: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 176
              Height = 23
              Align = alClient
              TabOrder = 0
            end
          end
          object Panel37: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 182
            Height = 54
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 176
              Height = 21
              Align = alTop
              Caption = 'Categories'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 74
            end
            object CategCombobox: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 176
              Height = 23
              Align = alClient
              TabOrder = 0
              OnSelect = CategComboboxSelect
            end
          end
          object Panel38: TPanel
            AlignWithMargins = True
            Left = 379
            Top = 3
            Width = 182
            Height = 54
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object ParamEdit: TLabeledEdit
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 176
              Height = 23
              Margins.Bottom = 1
              Align = alBottom
              EditLabel.Width = 34
              EditLabel.Height = 15
              EditLabel.Caption = 'Param'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clMaroon
              EditLabel.Font.Height = -12
              EditLabel.Font.Name = 'Segoe UI'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              TabOrder = 0
              Text = ''
            end
          end
        end
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 70
          Width = 880
          Height = 414
          Align = alClient
          TabOrder = 1
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 409
            Height = 412
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object DBGrid1: TDBGrid
              AlignWithMargins = True
              Left = 10
              Top = 54
              Width = 389
              Height = 348
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alClient
              DataSource = D_CategParams
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clMaroon
              TitleFont.Height = -16
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'company'
                  Title.Caption = 'Marca'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 130
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'category'
                  Title.Caption = 'Categoria'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'companyparam'
                  Title.Caption = 'Parametro'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 115
                  Visible = True
                end>
            end
            object Panel46: TPanel
              AlignWithMargins = True
              Left = 15
              Top = 10
              Width = 379
              Height = 31
              Margins.Left = 15
              Margins.Top = 10
              Margins.Right = 15
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'Categories'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel13: TPanel
            Left = 410
            Top = 1
            Width = 469
            Height = 412
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBGrid2: TDBGrid
              AlignWithMargins = True
              Left = 10
              Top = 54
              Width = 449
              Height = 348
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alClient
              DataSource = D_SubCategParams
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clMaroon
              TitleFont.Height = -16
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'company'
                  Title.Caption = 'Marca'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'category'
                  Title.Caption = 'Categoria'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'subcategory'
                  Title.Caption = 'Subcategoria'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'companyparam'
                  Title.Caption = 'Parametro'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -15
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 95
                  Visible = True
                end>
            end
            object Panel47: TPanel
              AlignWithMargins = True
              Left = 15
              Top = 10
              Width = 439
              Height = 31
              Margins.Left = 15
              Margins.Top = 10
              Margins.Right = 15
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'Subcategories'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
      object Company: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 888
        Height = 61
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 185
          Height = 55
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 179
            Height = 21
            Align = alTop
            Caption = 'Companies'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 78
          end
          object CompaniesCombobox: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 30
            Width = 179
            Height = 23
            Align = alClient
            TabOrder = 0
            OnSelect = CompaniesComboboxSelect
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 894
        Height = 561
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object ScrappConfig: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 70
          Width = 888
          Height = 488
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 3
          ExplicitHeight = 555
          object Title: TPanel
            AlignWithMargins = True
            Left = 151
            Top = 3
            Width = 142
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 549
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
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 549
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
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 549
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
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 549
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
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 549
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
                Left = 9
                Top = 23
                Width = 130
                Height = 23
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
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitHeight = 549
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
              Top = 159
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
                EditLabel.Width = 45
                EditLabel.Height = 15
                EditLabel.Caption = 'Url Class'
                TabOrder = 0
                Text = ''
              end
            end
            object Panel44: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 107
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 3
              object UrlBase: TLabeledEdit
                AlignWithMargins = True
                Left = 5
                Top = 23
                Width = 130
                Height = 23
                EditLabel.Width = 42
                EditLabel.Height = 15
                EditLabel.Caption = 'Url Base'
                TabOrder = 0
                Text = ''
              end
            end
          end
        end
        object Panel48: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 888
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 6
          ExplicitTop = 11
          object Panel49: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 185
            Height = 55
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 179
              Height = 21
              Align = alTop
              Caption = 'Companies'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 78
            end
            object ComboBox1: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 179
              Height = 23
              Align = alClient
              TabOrder = 0
              OnSelect = CompaniesComboboxSelect
            end
          end
        end
      end
    end
  end
  object Q_CategParams: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT m.company, c.category, sp.companyparam'
      'FROM categoryparams sp'
      'JOIN companies m ON sp.id_company = m.id_company'
      'JOIN categories c ON sp.id_category = c.id_category'
      'WHERE sp.id_company = :id_company')
    Left = 90
    Top = 484
    ParamData = <
      item
        Name = 'ID_COMPANY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_CategParamscompany: TStringField
      FieldName = 'company'
      Origin = 'company'
      Required = True
      Size = 200
    end
    object Q_CategParamscategory: TStringField
      FieldName = 'category'
      Origin = 'category'
      Required = True
      Size = 255
    end
    object Q_CategParamscompanyparam: TStringField
      FieldName = 'companyparam'
      Origin = 'companyparam'
      Required = True
      Size = 255
    end
  end
  object Q_SubCategParams: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT m.company, c.category, s.subcategory, sp.companyparam'
      'FROM subcategoryparams sp'
      'JOIN companies m ON sp.id_company = m.id_company'
      'JOIN categories c ON sp.id_category = c.id_category'
      'JOIN subcategories s ON sp.id_subcategory = s.id_subcategory'
      'WHERE sp.id_company = :id_company')
    Left = 541
    Top = 487
    ParamData = <
      item
        Name = 'ID_COMPANY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_SubCategParamscompany: TStringField
      FieldName = 'company'
      Origin = 'company'
      Required = True
      Size = 200
    end
    object Q_SubCategParamscategory: TStringField
      FieldName = 'category'
      Origin = 'category'
      Required = True
      Size = 255
    end
    object Q_SubCategParamssubcategory: TStringField
      FieldName = 'subcategory'
      Origin = 'subcategory'
      Required = True
      Size = 255
    end
    object Q_SubCategParamscompanyparam: TStringField
      FieldName = 'companyparam'
      Origin = 'companyparam'
      Required = True
      Size = 255
    end
  end
  object D_CategParams: TDataSource
    DataSet = Q_CategParams
    Left = 119
    Top = 484
  end
  object D_SubCategParams: TDataSource
    DataSet = Q_SubCategParams
    Left = 570
    Top = 487
  end
  object Q_InsertCategoryParam: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      
        'INSERT INTO categoryparams (id_company, id_category, companypara' +
        'm)'
      'VALUES (:id_company,:id_category,:companyparam)')
    Left = 680
    Top = 123
    ParamData = <
      item
        Name = 'ID_COMPANY'
        DataType = ftInteger
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
  object Q_InsertSubCategoryParam: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      
        'INSERT INTO subcategoryparams (id_company, id_category, id_subca' +
        'tegory, companyparam)'
      'VALUES (:id_company, :id_category,:id_subcategory,:companyparam)')
    Left = 648
    Top = 124
    ParamData = <
      item
        Name = 'ID_COMPANY'
        DataType = ftInteger
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
  object Q_Companies: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT company FROM companies')
    Left = 122
    Top = 268
    object Q_Companiescompany: TStringField
      FieldName = 'company'
      Origin = 'company'
      Required = True
      Size = 200
    end
  end
  object D_Companies: TDataSource
    DataSet = Q_Companies
    Left = 151
    Top = 268
  end
  object Q_Categories: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT category FROM categories')
    Left = 146
    Top = 132
    object Q_Categoriescategory: TStringField
      FieldName = 'category'
      Origin = 'category'
      Required = True
      Size = 255
    end
  end
  object Q_Subcategories: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      
        'SELECT subcategory FROM subcategories WHERE id_category = :id_ca' +
        'tegory')
    Left = 338
    Top = 132
    ParamData = <
      item
        Name = 'ID_CATEGORY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_Subcategoriessubcategory: TStringField
      FieldName = 'subcategory'
      Origin = 'subcategory'
      Required = True
      Size = 255
    end
  end
end
