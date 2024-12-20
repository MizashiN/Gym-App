object Supplements: TSupplements
  Left = 0
  Top = 0
  ActiveControl = CompaniesCombobox
  BorderStyle = bsSingle
  Caption = 'Supplements'
  ClientHeight = 900
  ClientWidth = 1600
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1600
    Height = 900
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1600
      Height = 900
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 1110
        Height = 75
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 470
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 1110
          Height = 75
          Align = alClient
          Caption = 'Supplements'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -60
          Font.Name = 'Hammersmith One'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 365
        end
        object Shape2: TShape
          AlignWithMargins = True
          Left = 3
          Top = 70
          Width = 637
          Height = 2
          Margins.Top = 70
          Margins.Right = 470
          Align = alClient
          Brush.Color = clBlack
          Pen.Color = clWhite
          ExplicitWidth = 400
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 115
        Width = 1560
        Height = 86
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object SubcategoriesPanel: TPanel
          AlignWithMargins = True
          Left = 426
          Top = 0
          Width = 193
          Height = 86
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object SubcategoriesLabel: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 187
            Height = 36
            Align = alClient
            Caption = 'Subcategories'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Hammersmith One'
            Font.Style = []
            ParentFont = False
            Layout = tlBottom
            ExplicitWidth = 183
            ExplicitHeight = 33
          end
          object SubcategoriesCombobox: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 45
            Width = 187
            Height = 38
            Align = alBottom
            AutoCloseUp = True
            BevelInner = bvNone
            BevelOuter = bvNone
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Hammersmith One'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object BrandPanel: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 193
          Height = 86
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 187
            Height = 36
            Align = alClient
            Caption = 'Company'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Hammersmith One'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlBottom
            ExplicitWidth = 117
            ExplicitHeight = 33
          end
          object CompaniesCombobox: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 45
            Width = 187
            Height = 38
            Align = alBottom
            AutoCloseUp = True
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Hammersmith One'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnSelect = CompaniesComboboxSelect
          end
        end
        object CategoryPanel: TPanel
          AlignWithMargins = True
          Left = 213
          Top = 0
          Width = 193
          Height = 86
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object CategoriesLabel: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 187
            Height = 36
            Align = alClient
            Caption = 'Categories'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Hammersmith One'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlBottom
            ExplicitWidth = 137
            ExplicitHeight = 33
          end
          object CategoriesCombobox: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 45
            Width = 187
            Height = 38
            Align = alBottom
            AutoCloseUp = True
            BevelInner = bvNone
            BevelOuter = bvNone
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Hammersmith One'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnSelect = CategoriesComboboxSelect
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 1366
          Top = 0
          Width = 194
          Height = 86
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Button1: TButton
            AlignWithMargins = True
            Left = 3
            Top = 31
            Width = 188
            Height = 52
            Align = alBottom
            Caption = 'Search'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button1Click
          end
        end
      end
      object CardsPanel: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 221
        Width = 1560
        Height = 659
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object CardsBox: TScrollBox
          Left = 0
          Top = 0
          Width = 1560
          Height = 659
          HorzScrollBar.ButtonSize = 10
          HorzScrollBar.Visible = False
          VertScrollBar.Color = clWhite
          VertScrollBar.ParentColor = False
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 1184274
          ParentColor = False
          TabOrder = 0
          UseWheelForScrolling = True
        end
      end
    end
  end
  object Q_Products: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      
        'SELECT p.title_product, p.price_product, i.image_src, p.url_prod' +
        'uct '
      'FROM products p '
      'JOIN images i ON i.id_image = p.id_image '
      'WHERE (:id_company = 0 OR p.id_company = :id_company)'
      'AND (:id_category = 0 OR p.id_category = :id_category)'
      'AND (:id_subcategory = 0 OR p.id_subcategory = :id_subcategory);'
      '')
    Left = 1548
    Top = 157
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
      end>
    object Q_Productstitle_product: TStringField
      FieldName = 'title_product'
      Origin = 'title_product'
      Required = True
      Size = 255
    end
    object Q_Productsprice_product: TBCDField
      FieldName = 'price_product'
      Origin = 'price_product'
      Required = True
      Precision = 10
      Size = 2
    end
    object Q_Productsimage_src: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'image_src'
      Origin = 'image_src'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object Q_Productsurl_product: TStringField
      FieldName = 'url_product'
      Origin = 'url_product'
      Required = True
      Size = 255
    end
  end
  object Q_Companies: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT company FROM companies')
    Left = 164
    Top = 165
    object Q_Companiescompany: TStringField
      FieldName = 'company'
      Origin = 'company'
      Required = True
      Size = 200
    end
  end
  object Q_Subcategories: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      
        'SELECT subcategory FROM subcategories WHERE id_category = :id_ca' +
        'tegory')
    Left = 638
    Top = 165
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
  object Q_Categories: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT category FROM categories')
    Left = 376
    Top = 165
    object Q_Categoriescategory: TStringField
      FieldName = 'category'
      Origin = 'category'
      Required = True
      Size = 255
    end
  end
end
