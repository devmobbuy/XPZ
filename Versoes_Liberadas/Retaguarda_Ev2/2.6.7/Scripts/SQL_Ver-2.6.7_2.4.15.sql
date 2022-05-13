/* ALTERA��O DA VERS�O DO BANCO */

UPDATE PARSIS
SET ParCon = '2.6.7_2.4.15'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '13/05/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'

/* TAREFA #17190 - WESLEY */

--INDEX MOVTRN01
CREATE NONCLUSTERED INDEX [UMOVTRN016] ON [MovTrn01] (
      [MovTrnDta],
      [MovTrnParQtd],
      [MovTrnNsu],
      [MovTrnVlr])

-- INDEX LOGCON
DROP INDEX [ILOGCON2] ON [LOGCON]

CREATE NONCLUSTERED INDEX [ULOGCON] ON [LOGCON] (
      [LocNumLog] DESC,
      [LocNomExtArq])

-- COLUNA NOVA MOVTRN01
ALTER TABLE [MovTrn01]
ADD [MovtrnAnt] VARCHAR(1)     NOT NULL CONSTRAINT MovtrnAntMovTrn01_DEFAULT DEFAULT ''

ALTER TABLE [MovTrn01]
DROP CONSTRAINT MovtrnAntMovTrn01_DEFAULT

/* TAREFA #17737 - JOS� */

--Rodar primeiro
USE Pronto
INSERT INTO sse2_mod (MOD2Id, MOD2IdInt, MOD2Dsc, MOD2Url, MOD2MtdLib, MOD2Aux, MOD2Sts, Mod2LstSub)
VALUES ('HRPT0200_GRID', 'HRPT0200_GRID', 'Hist�rico Contas Pagar/Receber', '', '', 0, 1, '')

SELECT * FROM sse2_mnu02 ORDER BY MnuIteIdRoot, MnuIteOrd --SELECT para ver a ordena��o (MnuIteOrd) que a tela vai ficar no menu no INSERT abaixo
--A ordena��o � em ordem crescente

--Rodar segundo
INSERT INTO sse2_mnu02 (MnucOd, MnuIteModFlg, MnuIteIde, MnuIteDsc, MnuIteOrd, MnuIteIdRoot, MnuIteTxt, MnuItePth)
VALUES (10, 1, 'HRPT0200_GRID', '', 128, 'CTR_FIN', '', '/pronto/servlet/') --Alterar "/cliente/servlet/"

--Rodar terceiro
INSERT INTO sse2_ung_mod (ung2cod, mod2id)
VALUES (25, 'HRPT0200_GRID') --Dar o SELECT de baixo na sse2_ung e pegar o UNG2Cod e alterar conforme o valor de cada cliente

SELECT * FROM sse2_ung

--Rodar quarto
INSERT INTO sse2_grp_mod
VALUES (25, 'ADM', 'HRPT0200_GRID') --Dar o SELECT de cima na sse2_ung e pagar o UNG2Cod e alterar conforme o valor de cada cliente