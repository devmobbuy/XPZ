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