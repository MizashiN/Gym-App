object DM_Con: TDM_Con
  OldCreateOrder = True
  Height = 256
  Width = 393
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
  object ConnectionSQLite: TFDConnection
    Params.Strings = (
      'Database=C:\GitHub\Gym-App\Win64\Debug\GymApp-API\database.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Transaction = TransactionSQLite
    UpdateTransaction = TransactionSQLite
    Left = 272
    Top = 72
  end
  object TransactionSQLite: TFDTransaction
    Connection = ConnectionSQLite
    Left = 272
    Top = 128
  end
end
