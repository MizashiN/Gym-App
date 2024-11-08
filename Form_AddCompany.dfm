object SetupCompany: TSetupCompany
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Setup Company'
  ClientHeight = 500
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 720
    Height = 500
    ActivePage = Tab1
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
    ExplicitWidth = 1030
    ExplicitHeight = 721
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
      ExplicitWidth = 1016
      ExplicitHeight = 665
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 700
        Height = 438
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 27
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 207
          Width = 694
          Height = 228
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 59
          ExplicitHeight = 130
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 470
            Height = 222
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object CheckBox1: TCheckBox
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
              ExplicitLeft = 6
              ExplicitWidth = 320
            end
            object CheckBox2: TCheckBox
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
              ExplicitLeft = -3
              ExplicitTop = 29
            end
            object CheckBox3: TCheckBox
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
              ExplicitLeft = -3
              ExplicitTop = -3
            end
            object CheckBox4: TCheckBox
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
              ExplicitTop = 102
              ExplicitWidth = 320
            end
            object CheckBox5: TCheckBox
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
              ExplicitTop = 69
              ExplicitWidth = 320
            end
            object CheckBox6: TCheckBox
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
              ExplicitTop = 36
              ExplicitWidth = 320
            end
            object CheckBox7: TCheckBox
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
              ExplicitTop = 3
              ExplicitWidth = 320
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 479
            Top = 3
            Width = 212
            Height = 222
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 11
            ExplicitTop = 6
            ExplicitWidth = 326
            ExplicitHeight = 234
            object Button1: TButton
              AlignWithMargins = True
              Left = 3
              Top = 157
              Width = 206
              Height = 62
              Align = alBottom
              Caption = 'Next'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -27
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 0
              ExplicitTop = 160
              ExplicitWidth = 212
            end
          end
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 694
          Height = 62
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 455
            Top = 3
            Width = 234
            Height = 56
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              Left = 0
              Top = 0
              Width = 234
              Height = 27
              Align = alTop
              Caption = 'Company Logo (PNG)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'JetBrains Mono'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SearchBox1: TSearchBox
              Left = 0
              Top = 27
              Width = 234
              Height = 29
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              ExplicitHeight = 33
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
            ExplicitLeft = 215
            ExplicitHeight = 44
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
            object Edit2: TEdit
              Left = 0
              Top = 27
              Width = 220
              Height = 29
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitTop = 25
              ExplicitHeight = 33
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
            ExplicitHeight = 44
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
            object Edit1: TEdit
              Left = 0
              Top = 27
              Width = 220
              Height = 29
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'JetBrains Mono'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitTop = 25
              ExplicitHeight = 33
            end
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 71
          Width = 694
          Height = 130
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 59
          object Label4: TLabel
            Left = 0
            Top = 0
            Width = 694
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
          object Edit4: TEdit
            Left = 0
            Top = 27
            Width = 694
            Height = 103
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'JetBrains Mono'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitTop = 25
            ExplicitWidth = 220
            ExplicitHeight = 33
          end
        end
      end
    end
    object Tab2: TTabSheet
      AlignWithMargins = True
      Caption = 'Config Company'
      ImageIndex = 1
      ExplicitLeft = 4
      ExplicitTop = 46
      ExplicitWidth = 1022
      ExplicitHeight = 671
    end
    object Tab3: TTabSheet
      AlignWithMargins = True
      Caption = 'Test Company Config'
      ImageIndex = 2
      ExplicitLeft = 4
      ExplicitTop = 46
      ExplicitWidth = 1022
      ExplicitHeight = 671
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 517
    Top = 131
  end
end
