object AceInitial: TAceInitial
  Left = 0
  Top = 0
  Caption = 'AceInitial'
  ClientHeight = 859
  ClientWidth = 1596
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
  inline AceLogin1: TAceLogin
    Left = 1021
    Top = 0
    Width = 575
    Height = 859
    Align = alRight
    Color = clBlack
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = 1021
    ExplicitTop = -28
    inherited Panel1: TPanel
      Height = 789
      ExplicitHeight = 810
      inherited Shape1: TShape
        Height = 789
      end
      inherited Panel2: TPanel
        Height = 724
        ExplicitTop = 25
        ExplicitHeight = 745
        inherited Label1: TLabel
          ExplicitLeft = 0
          ExplicitTop = 220
          ExplicitWidth = 357
        end
        inherited Panel3: TPanel
          ExplicitTop = 328
          inherited Label2: TLabel
            ExplicitTop = 177
            ExplicitWidth = 144
          end
          inherited Label3: TLabel
            ExplicitTop = 52
            ExplicitWidth = 69
          end
          inherited Label4: TLabel
            ExplicitLeft = 94
            ExplicitTop = 375
          end
          inherited Panel6: TPanel
            ExplicitLeft = 3
            ExplicitTop = 307
            ExplicitWidth = 379
          end
          inherited Panel5: TPanel
            ExplicitTop = 219
          end
          inherited Panel4: TPanel
            ExplicitTop = 94
          end
        end
      end
    end
  end
end
