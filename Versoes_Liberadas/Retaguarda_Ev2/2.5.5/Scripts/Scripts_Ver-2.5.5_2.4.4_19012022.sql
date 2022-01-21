/* TAREFA #14799 - JOS� */

-- QUAIS CLIENTES PRECISA RODAR QUANDO ATUALIZAR A VERS�O --
USE Banese
USE BemFacil
USE Credinov
USE CredPag
USE Pronto
USE SmartPagamentos

-- EXCLUS�O E CRIA��O DE �NDICES --

DROP INDEX [IVLRPAG7] ON [VLRPAG]

CREATE NONCLUSTERED INDEX [UVLRPAG6] ON [VLRPAG] (
      [VlpMovTrnId],
      [VlpAnpNum])

CREATE NONCLUSTERED INDEX [UANTPAG2] ON [ANTPAG] (
      [AnpStsAnt])

-- CRIA��O DE VIEW --

CREATE VIEW TxAntManualVw AS

SELECT
M.EstCod AS 'TxAntManualEstCod',
M.MovTrnDta AS 'TxAntManualData',
SUM(L.LaaVlrTxaAnt) AS 'TxAntManualVlr'

FROM MovTrn01 M
INNER JOIN VLRPAG V
ON M.MovTrnId = V.VlpMovTrnId

INNER JOIN LANANT L
ON V.VlpNumLan = L.LaaNumLan

INNER JOIN ANTPAG A
ON L.AnpNumAnt = A.AnpNumAnt

WHERE V.VlpAnpNum > 0 AND A.AnpStsAnt = 2

GROUP BY M.EstCod, M.MovTrnDta

/* ALTERA��O DA VERS�O DO BANCO */
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

UPDATE PARSIS
SET ParCon = '2.5.5_2.4.4'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '19/01/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'