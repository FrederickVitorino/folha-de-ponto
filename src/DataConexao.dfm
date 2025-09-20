object dtmConexao: TdtmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object con: TFDConnection
    Params.Strings = (
      'CharacterSet=UTF8'
      'Server=localhost'
      'DriverID=PG'
      'Database=postgres'
      'User_Name=postgres'
      'Password=123')
    LoginPrompt = False
    Left = 336
    Top = 128
  end
end
