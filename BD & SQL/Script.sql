CREATE TABLE Configuracoes (
    id SERIAL PRIMARY KEY,       
	nome_empresa VARCHAR(100) NOT NULL,
	cnpj VARCHAR(100) NOT NULL,
	email_responsavel_dp VARCHAR(100) NOT NULL
);

CREATE TABLE Usuario (
    user_id SERIAL PRIMARY KEY,       
    nome_completo VARCHAR(100) NOT NULL,            
    login VARCHAR(50) NOT NULL UNIQUE,
	senha VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	admin BOOLEAN NOT NULL
);

CREATE TABLE Funcionario (
    func_id SERIAL PRIMARY KEY,       
    user_id INTEGER NOT NULL,
	funcao VARCHAR(100) NOT NULL,
	horario_entrada TIME NOT NULL,
	horario_saida TIME NOT NULL,
	tempo_almoco TIME NOT NULL,
	carga_horaria TIME NOT NULL,
	saldo_banco_horas TIME,
	
	FOREIGN KEY (user_id) REFERENCES Usuario(user_id)
);

CREATE TABLE RegistroPonto (
    registro_id SERIAL PRIMARY KEY,       
    func_id INTEGER NOT NULL,
	ano INTEGER NOT NULL, 
	mes INTEGER NOT NULL,
	saldo_func_mes TIME,

	FOREIGN KEY (func_id) REFERENCES Funcionario(func_id)
);

CREATE TABLE Ponto (
    ponto_id SERIAL PRIMARY KEY,       
    registro_id INTEGER NOT NULL,
	horario_entrada TIME NOT NULL,
	horario_almoco_entrada TIME NOT NULL,
	horario_almoco_retorno TIME NOT NULL,
	horario_saida TIME NOT NULL,
	saldo_dia TIME NOT NULL,

	FOREIGN KEY (registro_id) REFERENCES RegistroPonto(registro_id)
);

ALTER TABLE Usuario
ADD COLUMN senha_email VARCHAR(100);

ALTER TABLE Ponto
ALTER COLUMN saldo_dia TYPE INTERVAL;

ALTER TABLE RegistroPonto
ALTER COLUMN saldo_func_mes TYPE INTERVAL;

ALTER TABLE Funcionario
ALTER COLUMN saldo_banco_horas TYPE INTERVAL;

ALTER TABLE Configuracoes RENAME TO ConfigEmpresa;

INSERT INTO Usuario (nome_completo, login, senha, admin)
VALUES ('Administrador', 'admin', 'admin123', True);

-----------------------------------------------------------------------------------------------

INSERT INTO Usuario (nome_completo, login, senha, email, admin)
VALUES ('Frederick', 'FRED', '1008203', 'frederickvitorino2@gmail.com', False);

INSERT INTO Funcionario (user_id, funcao, horario_entrada, horario_saida, tempo_almoco, carga_horaria)
VALUES (1, 'Programador', '08:00', '16:12', '01:12', '07:00');

INSERT INTO RegistroPonto (func_id, ano, mes) VALUES (1, 2025, 07);

INSERT INTO Ponto (registro_id, horario_entrada, horario_almoco_entrada, horario_almoco_retorno, horario_saida, saldo_dia)
VALUES (1, '08:10', '12:06', '13:06', '16:12', INTERVAL '-00:10'),
	   (1, '08:00', '12:00', '13:00', '16:17', INTERVAL '00:05');

-- Puxar pontos do mês de um funcionário específico
SELECT p.horario_entrada, p.horario_almoco_entrada, p.horario_almoco_retorno, p.horario_saida, p.saldo_dia, rp.saldo_func_mes 
FROM Ponto p
LEFT JOIN RegistroPonto rp ON rp.registro_id = p.registro_id
WHERE rp.func_id = 1 AND ano = 2025 AND mes = 07

-- Puxar/Atualizar saldo banco de horas do mês do Funcionário
UPDATE RegistroPonto
SET saldo_func_mes = (
	SELECT SUM(saldo_dia)
    FROM Ponto
    WHERE registro_id = 1
) where registro_id = 1;



