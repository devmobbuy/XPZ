--Deletar par�metro que n�o ser� mais utilizado
DELETE FROM PARSIS
WHERE ParCod = 'APIGATEWAY_LOGIN'

--Adicionar par�metro de usu�rio da API de Gateway
INSERT INTO PARSIS
VALUES ('APIGATEWAY_USER', 'Usu�rio da API de Gateway', 'VA', 40, NULL, 'N', 'bruno.crocco', 'ADMIN', '2022-01-05 12:04:05.000', NULL, NULL, 0)

--Adicionar par�metro de senha da API de Gateway
INSERT INTO PARSIS
VALUES ('APIGATEWAY_PASSWORD', 'Senha da API de Gateway', 'VA', 40, NULL, 'N', 'Bemfacil@321', 'ADMIN', '2022-01-05 12:04:05.000', NULL, NULL, 0)