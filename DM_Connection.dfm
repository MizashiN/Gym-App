object DM_Con: TDM_Con
  Height = 256
  Width = 398
  object Connection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Parafal\Documents\GitHub\GymApp-API\database.d' +
        'b'
      'BusyTimeout=1'
      'DriverID=SQLite')
    LoginPrompt = False
    Transaction = Transaction
    UpdateTransaction = Transaction
    Left = 72
    Top = 64
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 72
    Top = 128
  end
end
