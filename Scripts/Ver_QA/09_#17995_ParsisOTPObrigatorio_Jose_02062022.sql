/* TAREFA #17995 - JOS� */

--Clientes que ir�o usar o script
USE Banese
USE BemFacil
USE Credinov
USE Pronto
USE SmartPagamentos

INSERT INTO PARSIS
VALUES ('POS_OTP_OBRIGATORIO', 'Informa se o OTP � obrigat�rio na tela de POS.', 'VA', 1, NULL, 'N', 'S', NULL, NULL, 'ADMIN', 
'2022-06-02 12:18:00.000', 0)

--Usar 'N' somente para a Credpag
USE Credpag

INSERT INTO PARSIS
VALUES ('POS_OTP_OBRIGATORIO', 'Informa se o OTP � obrigat�rio na tela de POS.', 'VA', 1, NULL, 'N', 'N', NULL, NULL, 'ADMIN', 
'2022-06-02 12:18:00.000', 0)