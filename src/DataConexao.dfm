object dtmConexao: TdtmConexao
  OnCreate = DataModuleCreate
  Height = 229
  Width = 455
  object con: TFDConnection
    Params.Strings = (
      'CharacterSet=UTF8'
      'Server=localhost'
      'DriverID=PG'
      'Database=postgres'
      'User_Name=postgres'
      'Password=123')
    Connected = True
    LoginPrompt = False
    Left = 208
    Top = 80
  end
end
