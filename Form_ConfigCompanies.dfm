object ConfigCompanies: TConfigCompanies
  Left = 0
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Config Companies'
  ClientHeight = 597
  ClientWidth = 1049
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
    Width = 1049
    Height = 597
    ActivePage = BrandRegistration
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
        Width = 1035
        Height = 561
        Align = alClient
        TabOrder = 0
        object Panel41: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 55
          Width = 1027
          Height = 502
          Align = alClient
          TabOrder = 0
          object CompaniesGrid: TDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 1019
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
          Width = 1027
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
            Left = 757
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
            Left = 893
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
        Width = 1029
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
          Width = 1021
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel14: TPanel
            AlignWithMargins = True
            Left = 836
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
          object Panel27: TPanel
            AlignWithMargins = True
            Left = 697
            Top = 3
            Width = 133
            Height = 54
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object TitleSubCategParam: TCheckBox
              Left = 0
              Top = 0
              Width = 133
              Height = 54
              Align = alClient
              Caption = 'TitleSubCategParam'
              TabOrder = 0
              OnClick = TitleSubCategParamClick
            end
          end
        end
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 70
          Width = 1021
          Height = 414
          Align = alClient
          TabOrder = 1
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 480
            Height = 412
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object DBGrid1: TDBGrid
              AlignWithMargins = True
              Left = 10
              Top = 54
              Width = 460
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
              Width = 450
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
          object SubCategPanel: TPanel
            Left = 481
            Top = 1
            Width = 536
            Height = 412
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object DBGrid2: TDBGrid
              AlignWithMargins = True
              Left = 10
              Top = 54
              Width = 516
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
              Width = 506
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
          object SubCategTitlePanel: TPanel
            Left = 1017
            Top = 1
            Width = 482
            Height = 412
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object DBGrid3: TDBGrid
              AlignWithMargins = True
              Left = 10
              Top = 54
              Width = 462
              Height = 348
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alClient
              DataSource = D_SubCategTitleParams
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
            object Panel54: TPanel
              AlignWithMargins = True
              Left = 15
              Top = 10
              Width = 452
              Height = 31
              Margins.Left = 15
              Margins.Top = 10
              Margins.Right = 15
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'Subcategories Title'
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
        Width = 1029
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
      Caption = 'Config Company Registration'
      ImageIndex = 1
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1035
        Height = 561
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object ScrappConfig: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 70
          Width = 1029
          Height = 488
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Title: TPanel
            AlignWithMargins = True
            Left = 151
            Top = 3
            Width = 142
            Height = 482
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
              object title_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'title_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 42
                EditLabel.Height = 15
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
              object title_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'title_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 50
                EditLabel.Height = 15
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
            object Panel21: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 211
              Width = 136
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object alt_parent_tag_2: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_parent_tag_2'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 85
                EditLabel.Height = 15
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
              object alt_parent_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_parent_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 82
                EditLabel.Height = 15
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
              object alt_parent_class_2: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_parent_class_2'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 93
                EditLabel.Height = 15
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
              object alt_parent_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_parent_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 74
                EditLabel.Height = 15
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
              object parent_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'parent_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 64
                EditLabel.Height = 15
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
              object parent_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'parent_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 56
                EditLabel.Height = 15
              end
            end
            object Panel31: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 323
              Width = 136
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 6
              ExplicitLeft = -9
              ExplicitTop = 347
              object grid_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'grid_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 43
                EditLabel.Height = 15
                ExplicitLeft = 9
                ExplicitTop = 27
              end
            end
            object Panel55: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 379
              Width = 136
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 7
              ExplicitLeft = -3
              ExplicitTop = 427
              object grid_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'grid_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 51
                EditLabel.Height = 15
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
            object Panel28: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 55
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object price_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 56
                EditLabel.Height = 15
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
              TabOrder = 1
              object price_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 48
                EditLabel.Height = 15
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
            object Panel6: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 263
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object alt_img_tag_2: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_img_tag_2'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 72
                EditLabel.Height = 15
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
              TabOrder = 1
              object alt_img_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_img_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 69
                EditLabel.Height = 15
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
              TabOrder = 2
              object img_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'img_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 43
                EditLabel.Height = 15
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
              TabOrder = 3
              object alt_img_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_img_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 61
                EditLabel.Height = 15
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
              TabOrder = 4
              object img_attribute: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'img_attribute'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 71
                EditLabel.Height = 15
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
              TabOrder = 5
              object img_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'img_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 51
                EditLabel.Height = 15
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
              TabOrder = 6
              object alt_img_class_2: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_img_class_2'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 80
                EditLabel.Height = 15
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
            object Panel33: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object url_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'url_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 36
                EditLabel.Height = 15
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
              TabOrder = 1
              object url_base: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'url_base'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 43
                EditLabel.Height = 15
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
              TabOrder = 2
              object url_attribute: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'url_attribute'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 64
                EditLabel.Height = 15
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
              TabOrder = 3
              object url_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'url_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 44
                EditLabel.Height = 15
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
            object Panel40: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object price_parent_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_parent_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 87
                EditLabel.Height = 15
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
              object alt_price_parent_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_price_parent_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 113
                EditLabel.Height = 15
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
              object price_parent_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_parent_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 95
                EditLabel.Height = 15
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
              object alt_price_parent_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'alt_price_parent_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 105
                EditLabel.Height = 15
              end
            end
            object Panel50: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 367
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 4
              object price_fraction: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_fraction'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 72
                EditLabel.Height = 15
              end
            end
            object Panel51: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 315
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 5
              object price_decimal: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_decimal'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 73
                EditLabel.Height = 15
              end
            end
            object Panel52: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 263
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 6
              object price_integer: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_integer'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 68
                EditLabel.Height = 15
              end
            end
            object Panel53: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 211
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 7
              object price_code: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'price_code'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 57
                EditLabel.Height = 15
              end
            end
          end
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 891
            Top = 3
            Width = 142
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 6
            object Panel18: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object unv_product_tag: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'unv_product_tag'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 89
                EditLabel.Height = 15
              end
            end
            object Panel30: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 55
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object unv_product_class: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'unv_product_class'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 97
                EditLabel.Height = 15
              end
            end
            object Panel32: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 107
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              object page_param: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'page_param'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 65
                EditLabel.Height = 15
              end
            end
            object Panel13: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 159
              Width = 136
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 3
              object perc_pix: TDBLabeledEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 130
                Height = 23
                Align = alBottom
                DataField = 'perc_pix'
                DataSource = D_ConfigCompanies
                TabOrder = 0
                EditLabel.Width = 44
                EditLabel.Height = 15
              end
            end
          end
        end
        object Panel48: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1029
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
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
            object CompanyConfigCombobox: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 179
              Height = 23
              Align = alClient
              TabOrder = 0
              OnSelect = CompanyConfigComboboxSelect
            end
          end
          object Button5: TButton
            AlignWithMargins = True
            Left = 884
            Top = 3
            Width = 142
            Height = 55
            Align = alRight
            Caption = 'Insert Config'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button5Click
          end
          object Button6: TButton
            AlignWithMargins = True
            Left = 736
            Top = 3
            Width = 142
            Height = 55
            Align = alRight
            Caption = 'Save Config'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button6Click
          end
          object Button4: TButton
            AlignWithMargins = True
            Left = 588
            Top = 3
            Width = 142
            Height = 55
            Align = alRight
            Caption = 'Delete Config'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button4Click
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
    Left = 920
    Top = 99
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
    Left = 920
    Top = 135
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
  object Q_ConfigCompanies: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT * FROM configcompanies WHERE id_company = :id_company')
    Left = 202
    Top = 60
    ParamData = <
      item
        Name = 'ID_COMPANY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_ConfigCompaniesid_config: TFDAutoIncField
      FieldName = 'id_config'
      Origin = 'id_config'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object Q_ConfigCompaniesid_company: TIntegerField
      FieldName = 'id_company'
      Origin = 'id_company'
      Required = True
    end
    object Q_ConfigCompaniesparent_tag: TStringField
      FieldName = 'parent_tag'
      Origin = 'parent_tag'
      Required = True
      Size = 255
    end
    object Q_ConfigCompaniestitle_tag: TStringField
      FieldName = 'title_tag'
      Origin = 'title_tag'
      Required = True
      Size = 255
    end
    object Q_ConfigCompaniesimg_tag: TStringField
      FieldName = 'img_tag'
      Origin = 'img_tag'
      Required = True
      Size = 255
    end
    object Q_ConfigCompaniesprice_tag: TStringField
      FieldName = 'price_tag'
      Origin = 'price_tag'
      Required = True
      Size = 255
    end
    object Q_ConfigCompaniesurl_tag: TStringField
      FieldName = 'url_tag'
      Origin = 'url_tag'
      Size = 255
    end
    object Q_ConfigCompaniesurl_attribute: TStringField
      FieldName = 'url_attribute'
      Origin = 'url_attribute'
      Size = 255
    end
    object Q_ConfigCompaniesurl_base: TStringField
      FieldName = 'url_base'
      Origin = 'url_base'
      Size = 255
    end
    object Q_ConfigCompaniesurl_class: TStringField
      FieldName = 'url_class'
      Origin = 'url_class'
      Size = 255
    end
    object Q_ConfigCompaniesprice_parent_tag: TStringField
      FieldName = 'price_parent_tag'
      Origin = 'price_parent_tag'
      Size = 255
    end
    object Q_ConfigCompaniesprice_parent_class: TStringField
      FieldName = 'price_parent_class'
      Origin = 'price_parent_class'
      Size = 255
    end
    object Q_ConfigCompaniesprice_code: TStringField
      FieldName = 'price_code'
      Origin = 'price_code'
      Size = 255
    end
    object Q_ConfigCompaniesprice_integer: TStringField
      FieldName = 'price_integer'
      Origin = 'price_integer'
      Size = 255
    end
    object Q_ConfigCompaniesprice_decimal: TStringField
      FieldName = 'price_decimal'
      Origin = 'price_decimal'
      Size = 255
    end
    object Q_ConfigCompaniesprice_fraction: TStringField
      FieldName = 'price_fraction'
      Origin = 'price_fraction'
      Size = 255
    end
    object Q_ConfigCompaniesimg_attribute: TStringField
      FieldName = 'img_attribute'
      Origin = 'img_attribute'
      Size = 255
    end
    object Q_ConfigCompaniesparent_class: TStringField
      FieldName = 'parent_class'
      Origin = 'parent_class'
      Size = 255
    end
    object Q_ConfigCompaniestitle_class: TStringField
      FieldName = 'title_class'
      Origin = 'title_class'
      Size = 255
    end
    object Q_ConfigCompaniesprice_class: TStringField
      FieldName = 'price_class'
      Origin = 'price_class'
      Size = 255
    end
    object Q_ConfigCompaniesimg_class: TStringField
      FieldName = 'img_class'
      Origin = 'img_class'
      Size = 255
    end
    object Q_ConfigCompaniesalt_price_parent_tag: TStringField
      FieldName = 'alt_price_parent_tag'
      Origin = 'alt_price_parent_tag'
      Size = 255
    end
    object Q_ConfigCompaniesalt_price_parent_class: TStringField
      FieldName = 'alt_price_parent_class'
      Origin = 'alt_price_parent_class'
      Size = 255
    end
    object Q_ConfigCompaniesalt_img_tag: TStringField
      FieldName = 'alt_img_tag'
      Origin = 'alt_img_tag'
      Size = 255
    end
    object Q_ConfigCompaniesalt_img_class: TStringField
      FieldName = 'alt_img_class'
      Origin = 'alt_img_class'
      Size = 255
    end
    object Q_ConfigCompaniesalt_parent_class_2: TStringField
      FieldName = 'alt_parent_class_2'
      Origin = 'alt_parent_class_2'
      Size = 255
    end
    object Q_ConfigCompaniesalt_img_tag_2: TStringField
      FieldName = 'alt_img_tag_2'
      Origin = 'alt_img_tag_2'
      Size = 255
    end
    object Q_ConfigCompaniesalt_img_class_2: TStringField
      FieldName = 'alt_img_class_2'
      Origin = 'alt_img_class_2'
      Size = 255
    end
    object Q_ConfigCompaniesalt_parent_tag_2: TStringField
      FieldName = 'alt_parent_tag_2'
      Origin = 'alt_parent_tag_2'
      Size = 255
    end
    object Q_ConfigCompaniesalt_parent_tag: TStringField
      FieldName = 'alt_parent_tag'
      Origin = 'alt_parent_tag'
      Size = 255
    end
    object Q_ConfigCompaniesalt_parent_class: TStringField
      FieldName = 'alt_parent_class'
      Origin = 'alt_parent_class'
      Size = 255
    end
    object Q_ConfigCompaniesunv_product_tag: TStringField
      FieldName = 'unv_product_tag'
      Origin = 'unv_product_tag'
      Size = 32767
    end
    object Q_ConfigCompaniesunv_product_class: TStringField
      FieldName = 'unv_product_class'
      Origin = 'unv_product_class'
      Size = 32767
    end
    object Q_ConfigCompaniespage_param: TStringField
      FieldName = 'page_param'
      Origin = 'page_param'
      Size = 255
    end
    object Q_ConfigCompaniesperc_pix: TIntegerField
      FieldName = 'perc_pix'
      Origin = 'perc_pix'
    end
    object Q_ConfigCompaniesgrid_tag: TStringField
      FieldName = 'grid_tag'
      Origin = 'grid_tag'
      Size = 32767
    end
    object Q_ConfigCompaniesgrid_class: TStringField
      FieldName = 'grid_class'
      Origin = 'grid_class'
      Size = 32767
    end
  end
  object D_ConfigCompanies: TDataSource
    DataSet = Q_ConfigCompanies
    Left = 231
    Top = 60
  end
  object Q_InsertSubCategoryTitleParam: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      
        'INSERT INTO subcategorytitleparams (id_company, id_category, id_' +
        'subcategory, companyparam)'
      'VALUES (:id_company, :id_category,:id_subcategory,:companyparam)')
    Left = 920
    Top = 172
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
  object Q_SubCategTitleParams: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT m.company, c.category, s.subcategory, sp.companyparam'
      'FROM subcategorytitleparams sp'
      'JOIN companies m ON sp.id_company = m.id_company'
      'JOIN categories c ON sp.id_category = c.id_category'
      'JOIN subcategories s ON sp.id_subcategory = s.id_subcategory'
      'WHERE sp.id_company = :id_company')
    Left = 869
    Top = 495
    ParamData = <
      item
        Name = 'ID_COMPANY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object StringField1: TStringField
      FieldName = 'company'
      Origin = 'company'
      Required = True
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'category'
      Origin = 'category'
      Required = True
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'subcategory'
      Origin = 'subcategory'
      Required = True
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'companyparam'
      Origin = 'companyparam'
      Required = True
      Size = 255
    end
  end
  object D_SubCategTitleParams: TDataSource
    DataSet = Q_SubCategTitleParams
    Left = 898
    Top = 495
  end
end
