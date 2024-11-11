object DM_Con: TDM_Con
  Height = 256
  Width = 398
  object ConnectionScrappTest: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Parafal\Documents\GitHub\Gym-App\Win64\Debug\S' +
        'cripts Py\testscrapp.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Transaction = TransactionScrappTest
    UpdateTransaction = TransactionScrappTest
    Left = 72
    Top = 64
  end
  object TransactionScrappTest: TFDTransaction
    Connection = ConnectionScrappTest
    Left = 72
    Top = 128
  end
end
