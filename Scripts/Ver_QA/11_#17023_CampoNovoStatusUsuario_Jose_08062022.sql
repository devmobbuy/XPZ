/* TAREFA #17023 - JOS� */

--Clientes que ir�o usar o script
USE Banese
USE BemFacil
USE Credinov
USE CredPag
USE Pronto
USE SmartPagamentos

ALTER TABLE [USUEST]
ADD [UEstStatus] BIT    NULL

UPDATE USUEST
SET UEstStatus = 1