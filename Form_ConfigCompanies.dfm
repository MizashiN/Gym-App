object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Config Companies'
  ClientHeight = 494
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 378
    Height = 488
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitTop = -2
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 372
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 0
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 143
        Top = 3
        Width = 226
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 19
        object LabeledEdit2: TLabeledEdit
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
          ExplicitLeft = 32
          ExplicitTop = 40
          ExplicitWidth = 121
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
        ExplicitTop = 57
        object LabeledEdit1: TLabeledEdit
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
          ExplicitLeft = 6
          ExplicitTop = 28
        end
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 63
      Width = 372
      Height = 106
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 191
        Top = 3
        Width = 178
        Height = 100
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 143
        ExplicitWidth = 226
        ExplicitHeight = 48
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 56
          Width = 172
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 6
          ExplicitTop = 59
          object LabeledEdit5: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 15
            Width = 166
            Height = 23
            Align = alBottom
            EditLabel.Width = 105
            EditLabel.Height = 15
            EditLabel.Caption = 'Pre-Workout Param'
            TabOrder = 0
            Text = 'pre-treino'
            ExplicitLeft = 6
            ExplicitTop = 18
          end
        end
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 172
          Height = 47
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 6
          ExplicitTop = 11
          object LabeledEdit6: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 21
            Width = 166
            Height = 23
            Align = alBottom
            EditLabel.Width = 104
            EditLabel.Height = 15
            EditLabel.Caption = 'Hypercaloric Param'
            TabOrder = 0
            Text = 'hipercaloricos'
            ExplicitLeft = 6
            ExplicitTop = 24
          end
        end
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 182
        Height = 100
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 6
        ExplicitTop = 0
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 56
          Width = 176
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object LabeledEdit3: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 15
            Width = 170
            Height = 23
            Align = alBottom
            EditLabel.Width = 81
            EditLabel.Height = 15
            EditLabel.Caption = 'Creatine Param'
            TabOrder = 0
            Text = 'creatina'
            ExplicitLeft = 9
          end
        end
        object Panel9: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 176
          Height = 47
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 47
          ExplicitHeight = 182
          object LabeledEdit4: TLabeledEdit
            AlignWithMargins = True
            Left = 3
            Top = 21
            Width = 170
            Height = 23
            Align = alBottom
            EditLabel.Width = 110
            EditLabel.Height = 15
            EditLabel.Caption = 'Whey-Protein Param'
            TabOrder = 0
            Text = 'whey-protein'
            ExplicitLeft = 6
            ExplicitTop = 28
            ExplicitWidth = 128
          end
        end
      end
    end
  end
end
