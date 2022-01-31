/* TAREFA #14905 - JOS� */

--Clientes que o script precisa ser rodado
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

--Adi��o de �ndices nas tabelas para melhor navega��o
CREATE NONCLUSTERED INDEX [USOLICITACAOCANCELAMENTO] ON [SolicitacaoCancelamento] (
      [SolCan_DtaCancelTrans] DESC)

CREATE NONCLUSTERED INDEX [UVAN041] ON [VAN04] (
      [VanTrnDta],
      [VanTrnNumAtz],
      [VanTrnPosIde])

/* TAREFA #14922 - WESLEY */

ALTER TABLE [CESSAO] 
ADD [CessaoFilial] VARCHAR(128)    NULL, 
    [CessaoDistribuidor] VARCHAR(128)    NULL, 
    [CessaoDataEmissao] DATETIME    NULL, 
    [CessaoValorNota] DECIMAL(17,2)    NULL

USE pronto

INSERT INTO [dbo].[PARSIS]
           ([ParCod]
           ,[ParDsc]
           ,[ParTipPar]
           ,[ParTamPar]
           ,[ParQtdDec]
           ,[ParIndSin]
           ,[ParCon]
           ,[ParUsuInc]
           ,[ParDtiInc]
           ,[ParUsuAlt]
           ,[ParDtiAlt]
           ,[ParFlgInt])
     VALUES
           ('TELA_GESTAO_COMPRAS' 
           ,'Usar tela de gest�o de compras.'
           ,'CA'
           ,200
           ,NULL
		   ,'N'
           ,'S'
           ,NULL
           ,NULL
           ,'025ADM                           '
           ,'2022-01-27 17:00:36.000'
           ,0)
GO

select * from Pronto..PARSIS where parcod = 'TELA_GESTAO_COMPRAS'
--UPDATE PARSIS SET PARCON = 'S' WHERE PARCOD = 'TELA_GESTAO_COMPRAS' -- QA

/* ALTERA��O DA VERS�O DO BANCO */
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

UPDATE PARSIS
SET ParCon = '2.5.7_2.4.6'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '28/01/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'