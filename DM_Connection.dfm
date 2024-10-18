object DM_Con: TDM_Con
  OldCreateOrder = False
  Height = 150
  Width = 215
  object Connection: TFDConnection
    Params.Strings = (
      'Database=gym_app'
      'User_Name=parafalpwladmin'
      'Password=@D3adlift'
      'Server=gym-app.mysql.uhserver.com'
      'DriverID=MySQL')
    LoginPrompt = False
    Transaction = Transaction
    UpdateTransaction = Transaction
    Left = 48
    Top = 72
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 136
    Top = 72
  end
end
