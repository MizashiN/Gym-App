object SecurityQuestion: TSecurityQuestion
  Left = 0
  Top = 0
  Width = 397
  Height = 583
  Color = clBlack
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  OnEnter = FrameEnter
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 72
    Top = 88
    Width = 145
    Height = 21
    DataField = 'question'
    DataSource = D_Questions
    ListSource = D_Questions
    TabOrder = 0
  end
  object Q_Questions: TFDQuery
    Connection = DM_Con.Connection
    Transaction = DM_Con.Transaction
    UpdateTransaction = DM_Con.Transaction
    SQL.Strings = (
      'SELECT question FROM security_questions')
    Left = 304
    Top = 160
  end
  object D_Questions: TDataSource
    DataSet = Q_Questions
    Left = 304
    Top = 200
  end
end
