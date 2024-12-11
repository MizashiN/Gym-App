object DM_Con: TDM_Con
  OnCreate = DataModuleCreate
  Height = 256
  Width = 398
  object Connection: TFDConnection
    Params.Strings = (
      'BusyTimeout=30000'
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
