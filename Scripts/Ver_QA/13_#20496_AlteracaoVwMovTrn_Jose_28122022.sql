/* TAREFA #20496 - JOS� */

--Rodar script em todos os bancos de clientes que ir� ser atualizada a vers�o
ALTER VIEW [dbo].[VwMovTrn] AS
SELECT
A.MovTrnId                             AS 'VwMovTrnId',
A.MovTrnDta                            AS 'VwMovTrnDta',
A.MovTrnNsu                            AS 'VwMovTrnNsu',
A.MovTrnAutCod                         AS 'VwMovTrnAutCod',
A.MovTrnVlr                            AS 'VwMovTrnVlr',
A.MovTrnNsuMovOri                      AS 'VwMovTrnNsuMovOri',
ISNULL(D.TblBanSigla, '0')             AS 'VwMovTrnBan',
ISNULL(D.TblBanBandeira, 'MarketPay')  AS 'VwMovTrnBanDsc',
A.MovTrnTipPrd                         AS 'VwMovTrnTipPrd',
CASE
	WHEN A.MovTrnCod = 'AJ' THEN 'Ajuste'
	WHEN A.MovTrnCod = 'CC' THEN 'Cancelamento'
	WHEN A.MovTrnCod = 'PS' THEN 'Presta��o de servi�o'
	WHEN A.MovTrnTipPrd = 'D'  THEN 'D�bito'
	WHEN A.MovTrnTipPrd = 'V'  THEN 'Voucher'
	WHEN A.MovTrnTipPrd = 'C' AND A.MovTrnParQtd = 1 THEN 'Cr�dito a vista'
	WHEN A.MovTrnTipPrd = 'C' AND A.MovTrnParQtd > 1 AND A.MovTrnParIndBemFac = 'N' THEN 'Cr�dito parcelado'
	WHEN A.MovTrnTipPrd = 'C' AND A.MovTrnParQtd > 1 AND A.MovTrnParIndBemFac = 'S' THEN 'Cr�dito parcelado BF'
END                  AS 'VwMovTrnTipo',
A.MovTrnCod          AS 'VwMovTrnCod',
A.MovTrnParQtd       AS 'VwMovTrnParQtd',
A.MovTrnParVlr		 AS 'VwMovTrnParVlr',		--NOVO  14/03/2022
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
A.MovTrnBfaVlrTxaAdm AS 'VwMovTrnBfaVlrTxaAdm', --NOVO  14/03/2022
A.MovTrnBfaVlrCusTrn AS 'VwMovTrnBfaVlrCusTrn',
A.MovTrnBfaVlrCusCap AS 'VwMovTrnBfaVlrCusCap',	--NOVO  14/03/2022
E.AdqNom             AS 'VwMovTrnAdqNom',
B.EstBai             AS 'VwMovTrnBaiNom',
A.MovTrnIdeTer       AS 'VwMovTrnIdeTer',	    --NOVO 22/06/2022
F.PosCodTmrSfe		 AS 'VwMovTrnPos',
A.MovtrnAnt			 AS 'VwMovTrnAnt',
B.TavNum			 AS 'VwMovTrnTavNum',
A.MovTrnInsTimStp	 AS 'VwMovTrnInsTimStp'

FROM MovTrn01 A
INNER JOIN EST B
	ON A.EstCod = B.EstCod
INNER JOIN PARCOM C
	ON A.MovTrnPacCod = C.PacCod
LEFT JOIN TblBan D
    ON A.MovTrnBan = D.TblBanSigla AND D.TblBanAtivo = 'S'
LEFT JOIN ADQ0001 E
    ON A.AdqCod = E.AdqCod
LEFT JOIN POS F
	ON A.MovTrnPosNum = F.PosNum

GROUP BY A.MovTrnId, A.MovTrnDta, A.MovTrnNsu, A.MovTrnAutCod, A.MovTrnVlr, A.MovTrnNsuMovOri, D.TblBanSigla, D.TblBanBandeira,
         A.MovTrnTipPrd, A.MovTrnCod, A.MovTrnTipPrd, A.MovTrnParQtd, A.MovTrnParVlr, A.MovTrnParIndBemFac, A.MovTrnCod, A.MovTrnParQtd ,
		 A.MovTrnVlrLiqBemFac, A.MovTrnVlrLiqEst, A.MovTrnBfaVlrTxaAnt, A.EstCod, B.EstNomFan, B.EstPacCod, B.EstCodMcc,
		 B.EstUF, B.EstMun, A.AdqCod, A.MovTrnPacCod, C.PacNom, A.MovTrnGbpVlrTxaAdm, A.MovTrnGbpVlrTxaInt, A.MovTrnGbpVlrTxaAnt,
		 A.MovTrnBfaVlrTarCre, A.MovTrnBfaVlrTxaFin, A.MovTrnBfaVlrTxaAdm, A.MovTrnBfaVlrCusTrn, A.MovTrnBfaVlrCusCap,
		 E.AdqNom, B.EstBai, B.EstSegmento, A.MovTrnIdeTer, F.posCodTmrSfe, A.MovtrnAnt, B.TavNum, A.MovTrnInsTimStp
GO