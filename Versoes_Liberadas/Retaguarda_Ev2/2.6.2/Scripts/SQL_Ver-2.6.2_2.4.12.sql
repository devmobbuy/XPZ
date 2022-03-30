/* ALTERA��O DA VERS�O DO BANCO */

UPDATE PARSIS
SET ParCon = '2.6.2_2.4.12'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '29/03/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'

/* TAREFA #16786 - L�IA */  

ALTER TABLE [Processo] ADD [ProcessoClasse] VARCHAR(45) NULL;
ALTER TABLE [Processo] ADD [ProcessoOrigem] VARCHAR(50) NULL;

CREATE NONCLUSTERED INDEX [UCNTBAN] ON [CNTBAN] ([CntFlgDOC]);