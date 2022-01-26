/* TAREFA #14812 - JOS� */

-- QUAIS CLIENTES PRECISA RODAR QUANDO ATUALIZAR A VERS�O --
USE Banese
USE BemFacil
USE Credinov
USE CredPag
USE Pronto
USE SmartPagamentos

--Cria��o do campo EstSegmento
ALTER TABLE [EST]
ADD [EstSegmento] VARCHAR(40)     NOT NULL CONSTRAINT EstSegmentoEST_DEFAULT DEFAULT ''

ALTER TABLE [EST]
DROP CONSTRAINT EstSegmentoEST_DEFAULT

/* #14813 - JOS� */

-- QUAIS CLIENTES PRECISA RODAR QUANDO ATUALIZAR A VERS�O --
USE Banese
USE BemFacil
USE Credinov
USE CredPag
USE Pronto
USE SmartPagamentos

-- FAZER O DROP DA VIEW, DEPOIS RODAR O CREATE VIEW COM UM CAMPO NOVO ATUALIZADO

DROP VIEW VwMovTrn
/*CREATE VIEW VwMovTrn AS
SELECT
A.MovTrnId        AS 'VwMovTrnId',
A.MovTrnDta       AS 'VwMovTrnDta',
A.MovTrnNsu       AS 'VwMovTrnNsu',
A.MovTrnAutCod    AS 'VwMovTrnAutCod',
A.MovTrnVlr       AS 'VwMovTrnVlr',
A.MovTrnNsuMovOri AS 'VwMovTrnNsuMovOri',
A.MovTrnBan       AS 'VwMovTrnBan',
D.TblBanBandeira  AS 'VwMovTrnBanDsc',
A.MovTrnTipPrd    AS 'VwMovTrnTipPrd',
CASE
	WHEN A.MovTrnCod = 'AJ' THEN 'Ajuste'
	WHEN A.MovTrnCod = 'CC' THEN 'Cancelamento'
	WHEN A.MovTrnCod = 'PS' THEN 'Presta��o de servi�o'
	WHEN A.MovTrnTipPrd = 'D'  THEN 'D�bito'
	WHEN A.MovTrnTipPrd = 'V'  THEN 'Voucher'
	WHEN A.MovTrnTipPrd = 'C' AND A.MovTrnParQtd = 0 THEN 'Cr�dito a vista'
	WHEN A.MovTrnTipPrd = 'C' AND A.MovTrnParQtd > 0 AND A.MovTrnParIndBemFac = 'N' THEN 'Cr�dito parcelado'
	WHEN A.MovTrnTipPrd = 'C' AND A.MovTrnParQtd > 0 AND A.MovTrnParIndBemFac = 'S' THEN 'Cr�dito parcelado BF'
END                  AS 'VwMovTrnTipo',
A.MovTrnCod          AS 'VwMovTrnCod',
A.MovTrnParQtd       AS 'VwMovTrnParQtd',
A.MovTrnParIndBemFac AS 'VwMovTrnParIndBemFac',
A.MovTrnVlrLiqBemFac AS 'VwMovTrnVlrLiqBemFac',
A.MovTrnVlrLiqEst    AS 'VwMovTrnVlrLiqEst',
A.MovTrnBfaVlrTxaAnt AS 'VwMovTrnBfaVlrTxaAnt',
A.EstCod             AS 'VwMovTrnEstCod',
B.EstNomFan          AS 'VwMovTrnEstNomFan',
B.EstPacCod          AS 'VwMovTrnEstPacCod',
B.EstCodMcc          AS 'VwMovTrnEstCodMcc',
B.EstUF              AS 'VwMovTrnEstUF',
B.EstMun             AS 'VwMovTrnEstMun',
B.EstSegmento		 AS 'VwMovTrnEstSegmento',
A.AdqCod             AS 'VwMovTrnAdqCod',
A.MovTrnPacCod       AS 'VwMovTrnPacCod',
C.PacNom             AS 'VwMovTrnPacNom',
A.MovTrnGbpVlrTxaAdm AS 'VwGbpVlrTxaAdm',
A.MovTrnGbpVlrTxaInt AS 'vWGbpVlrTxaInt',
A.MovTrnGbpVlrTxaAnt AS 'VwGbpVlrTxaAnt',
A.MovTrnBfaVlrTarCre AS 'vwMovBfaVlrTarCre',
A.MovTrnBfaVlrTxaFin AS 'VwMovTrnBfaVlrTxaFin',
A.MovTrnBfaVlrCusTrn AS 'VwMovTrnBfaVlrCusTrn',
E.AdqNom             AS 'VwMovTrnAdqNom',
B.EstBai             AS 'VwMovTrnBaiNom'

FROM MovTrn01 A
INNER JOIN EST B
	ON A.EstCod = B.EstCod
INNER JOIN PARCOM C
	ON A.MovTrnPacCod = C.PacCod
LEFT JOIN TblBan D
    ON A.MovTrnBan = D.TblBanSigla AND D.TblBanAtivo = 'S'
LEFT JOIN ADQ0001 E
    ON A.AdqCod = E.AdqCod

GROUP BY A.MovTrnId, A.MovTrnDta, A.MovTrnNsu, A.MovTrnAutCod, A.MovTrnVlr, A.MovTrnNsuMovOri, A.MovTrnBan, D.TblBanBandeira,
         A.MovTrnTipPrd, A.MovTrnCod, A.MovTrnTipPrd, A.MovTrnParQtd, A.MovTrnParIndBemFac, A.MovTrnCod, A.MovTrnParQtd ,
		 A.MovTrnVlrLiqBemFac, A.MovTrnVlrLiqEst, A.MovTrnBfaVlrTxaAnt, A.EstCod, B.EstNomFan, B.EstPacCod, B.EstCodMcc,
		 B.EstUF, B.EstMun, A.AdqCod, A.MovTrnPacCod, C.PacNom, A.MovTrnGbpVlrTxaAdm, A.MovTrnGbpVlrTxaInt, A.MovTrnGbpVlrTxaAnt,
		 A.MovTrnBfaVlrTarCre, A.MovTrnBfaVlrTxaFin, A.MovTrnBfaVlrCusTrn, E.AdqNom, B.EstBai, B.EstSegmento

GO*/

/* ALTERA��O DA VERS�O DO BANCO */
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

UPDATE PARSIS
SET ParCon = '2.5.6_2.4.5'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '26/01/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'