object AceLogin: TAceLogin
  Left = 0
  Top = 0
  Width = 550
  Height = 774
  Color = clBlack
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 30
    Top = 30
    Width = 490
    Height = 714
    Margins.Left = 30
    Margins.Top = 30
    Margins.Right = 30
    Margins.Bottom = 30
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 490
      Height = 714
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Brush.Color = clBlack
      Pen.Color = clWhite
      Pen.Width = 2
      ExplicitLeft = 40
      ExplicitTop = 216
      ExplicitWidth = 65
      ExplicitHeight = 65
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 45
      Top = 40
      Width = 400
      Height = 634
      Margins.Left = 45
      Margins.Top = 40
      Margins.Right = 45
      Margins.Bottom = 40
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitLeft = 128
      ExplicitTop = 256
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 398
        Height = 160
        Align = alTop
      end
      object Label1: TLabel
        Left = 1
        Top = 161
        Width = 398
        Height = 100
        Align = alTop
        Alignment = taCenter
        Caption = 'Gym App'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Hammersmith One'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 328
      end
    end
  end
end
