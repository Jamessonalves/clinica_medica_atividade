
-- Segurança da Informação - Controle de Acesso - comandos DCL do SQL

CREATE LOGIN aluno WITH PASSWORD = 'Jap12345';

USE clinica_medica_atividade;

CREATE USER atendente FOR LOGIN aluno;

GRANT SELECT TO atendente;

GRANT SELECT TO atendente;

-- revoke insert from atendente;


-- consultar permissões de um usuário de uma base de dados
-- utilizando a stored procedure do sistema sp_helprotect
EXEC clinica_medica_atividade.dbo.sp_helprotect @username = 'atendente';


-- Teste de login com controle de acesso - comandos DML do SQL ---------------

USE clinica_medica_atividade;

SELECT * FROM paciente;

INSERT INTO paciente VALUES('567.890.123-45','Rogerio Ramos','(11)97890-1234',678901,'Inovamed','Básico');
INSERT INTO paciente VALUES('345.123.987-45','Samuel Gabriel','(81)99222-1234',987654,'Inovamed','Padrão');

DELETE FROM paciente WHERE cpf = '567.890.123-45';

-- insert into paciente values('789.012.345-67','Abílio Sanches','(11)99012-3456',901234,'Ultramed','Padrão');



-- Exclusão de usuário e login

-- drop user atendente;

-- drop login aluno;


