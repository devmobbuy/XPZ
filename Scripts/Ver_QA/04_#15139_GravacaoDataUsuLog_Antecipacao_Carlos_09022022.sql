/*****TAREFA #14908 - CARLOS PATRICIO - 01/02/2022******/
/*
--Use BancoOrigem
--Use Banese
--Use BemFacil
--Use CredInov
--Use CredPag
Use Pronto
--Use Smartpagamentos
INSERT INTO TLog0002 VALUES ('ANTPAG', 'Antecipa��o Pagamento',0)
select top 1 * from TLog0002 ORDER BY TLOGID DESC /*VERIFICAR QUAL TLogID*/
INSERT INTO TLog0003 VALUES (17,1,'AnpNumPag', 'N�mero Antecipa��o')
select top 1 * from TLog0003 ORDER BY TLOGID DESC /*VERIFICAR QUAL TLogID*/

/*VERIFICAR SE GRAVOU*/
select top 3 * from TLog0002 ORDER BY TLOGID DESC 
select top 3 * from TLog0003 ORDER BY TLOGID DESC
*/