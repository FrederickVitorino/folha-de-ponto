object dtmPrincipalBase: TdtmPrincipalBase
  Height = 480
  Width = 640
  object fdqryDadosUser: TFDQuery
    Connection = dtmConexao.con
    SQL.Strings = (
      'SELECT * FROM Usuario WHERE user_id = :USER_ID')
    Left = 152
    Top = 32
    ParamData = <
      item
        Name = 'USER_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryDadosUsernome_completo: TWideStringField
      FieldName = 'nome_completo'
      Origin = 'nome_completo'
      Size = 100
    end
    object fdqryDadosUserlogin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      Size = 50
    end
    object fdqryDadosUseremail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object fdqryDadosUseradmin: TBooleanField
      FieldName = 'admin'
      Origin = '"admin"'
    end
  end
end
