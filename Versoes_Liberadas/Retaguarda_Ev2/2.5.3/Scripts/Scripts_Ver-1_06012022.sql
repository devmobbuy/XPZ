--01_#14561_ADD-COLUMN_UEstCodGru_TABELA_USUEST _Wesley_04012022
ALTER TABLE USUEST ADD  [UEstCodGru] INT NULL

--03_#14705_ParametrosAPIGateway _Jose_05012022
--Deletar par�metro que n�o ser� mais utilizado
DELETE FROM PARSIS
WHERE ParCod = 'APIGATEWAY_LOGIN'

--Adicionar par�metro de usu�rio da API de Gateway
INSERT INTO PARSIS
VALUES ('APIGATEWAY_USER', 'Usu�rio da API de Gateway', 'VA', 40, NULL, 'N', 'bruno.crocco', 'ADMIN', '2022-01-05 12:04:05.000', NULL, NULL, 0)

--Adicionar par�metro de senha da API de Gateway
INSERT INTO PARSIS
VALUES ('APIGATEWAY_PASSWORD', 'Senha da API de Gateway', 'VA', 40, NULL, 'N', 'Bemfacil@321', 'ADMIN', '2022-01-05 12:04:05.000', NULL, NULL, 0)

--Altera��o de vers�o do banco
UPDATE PARSIS
SET ParCon = '1'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '06/01/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'