object dtmConexao: TdtmConexao
  OnCreate = DataModuleCreate
  Height = 229
  Width = 455
  object con: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 208
    Top = 80
  end
end
