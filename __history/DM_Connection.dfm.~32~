object DM_Con: TDM_Con
  Height = 256
  Width = 187
  object ConnectionMySQL: TFDConnection
    Params.Strings = (
      'Database=gym_app'
      'User_Name=parafalpwladmin'
      'Password=@D3adlift'
      'Server=gym-app.mysql.uhserver.com'
      'DriverID=MySQL')
    LoginPrompt = False
    Transaction = TransactionMySQL
    UpdateTransaction = TransactionMySQL
    Left = 72
    Top = 64
  end
  object TransactionMySQL: TFDTransaction
    Connection = ConnectionMySQL
    Left = 72
    Top = 128
  end
end
