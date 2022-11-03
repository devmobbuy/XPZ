/* TAREFA #19899 - JOS� */

--Rodar em todos os clientes (O ParCon do script da Parsis muda conforme o banco do cliente, Pronto: 7399...
INSERT INTO PARSIS
VALUES ('MCC_PS', 'MCC da presta��o de servi�o da rotina de recalcular taxa', 'VA', 16, NULL, 'N', 
'7399', 'ADMIN', '2022-11-01 00:00:00', NULL, NULL, 0)

CREATE NONCLUSTERED INDEX [UADQ0011] ON [ADQ0011] (
      [AdqMccCod],
      [AdqCod],
      [AdqMccBanCod],
      [AdqMccPrdTipPln],
      [AdqMccPrdQtdPar],
      [AdqMccPrdSts])

CREATE NONCLUSTERED INDEX [UMOVTRN0111] ON [MovTrn01] (
      [MovTrnDta] DESC,
      [MovTrnCod])

/* TAREFA #19911 - LEONARDO */

USE PRONTO
GO

CREATE TABLE [Contestacao] (
  [ContestacaoCodigo]    VARCHAR(2)    NOT NULL,
  [ContestacaoDescricao] VARCHAR(255)    NOT NULL,
     PRIMARY KEY ( [ContestacaoCodigo] ))
	 
ALTER TABLE [EfeitoContrato]
ADD [EfeitoContratoDataContestacao] DATETIME    NULL,
    [ContestacaoCodigo] VARCHAR(2)    NULL
CREATE NONCLUSTERED INDEX [IEFEITOCONTRATO2] ON [EfeitoContrato] (
      [ContestacaoCodigo])
ALTER TABLE [EfeitoContrato]
 ADD CONSTRAINT [IEFEITOCONTRATO2] FOREIGN KEY ( [ContestacaoCodigo] ) REFERENCES [Contestacao]([ContestacaoCodigo])



INSERT INTO CONTESTACAO VALUES (
'01', 'Usu�rio Final Recebedor ou Titular n�o reconhece a opera��o'),
('02', 'Duplicidade de lan�amento de opera��o'),
('03', 'Opera��o em diverg�ncia com o instrumento contratual'),
('04', 'Usu�rio Final Recebedor ou Titular n�o tem rela��o com o Financiador ou N�o Financeira.'),
('05', 'Diverg�ncia entre valor esperado pelo Financiador ou N�o Financeira e o valor efetivamente liquidado pela Institui��o Credenciadora ou Subcredenciadora devedora da obriga��o'),
('99', 'Outros')

INSERT INTO PARSIS (ParCod, ParDsc, ParTipPar, ParTamPar, ParIndSin, ParCon)
VALUES ('CERC_CONST_METODO', 'METODO CONTESTACAO CERC', 'CA', 255, 'N', 'enviar')

INSERT INTO PARSIS (ParCod, ParDsc, ParTipPar, ParTamPar, ParIndSin, ParCon)
VALUES ('CERC_CONST_BASE_URL', 'BASE URL CONTESTACAO CERC', 'CA', 255, 'N', 'contestacao')

/* TAREFA #19836 - JOS� */

--Rodar em todos os bancos de clientes
ALTER view [dbo].[AgdPag01] as
select
AgdPg1Dta = v.VlpDtaVct ,
AgdPg1VlrDeb = sum( case when v.TidCod=1 and isnull(MovTrnCod,'') IN ('CV','PS','CC') and isnull(MovTrnTipPrd,'')='D' and isnull(MovTrnParQtd,'') <= 1 then VlpVlrPag Else 0 end ) ,
AgdPg1VlrCre = sum( case when v.TidCod=1 and isnull(MovTrnCod,'') IN ('CV','PS','CC') and isnull(MovTrnTipPrd,'')='C' and isnull(MovTrnParQtd,'') <= 1 then VlpVlrPag Else 0 end ),
AgdPg1VlrPrc = sum( case when v.TidCod=1 and isnull(MovTrnCod,'') IN ('CV','PS','CC') and isnull(MovTrnTipPrd,'')='C' and isnull(MovTrnParQtd,'') >  1 then VlpVlrPag Else 0 end ),
AgdPg1VlrAju = sum( case when v.TidCod=1 and isnull(MovTrnCod,'')='AJ' then VlpVlrPag Else 0 end ),
AgdPg1VlrCan = sum( case when v.TidCod=1 and isnull(MovTrnCod,'')='CC' then VlpVlrPag Else 0 end ),
AgdPg1VlrOut = sum( case when v.TidCod>1 or  isnull(MovTrnCod,'')=''   then VlpVlrPag Else 0 end ),
AgdPg1VlrRee = sum( case when v.VlpStspag=2                            then VlpVlrPag Else 0 end ),
AgdPg1VlrCom = sum( case when v.TidCod=1 and isnull(MovTrnTipPrd,'')='S' then VlpVlrPag Else 0 end )
from VlrPag v left join movtrn01 m on (m.movtrnid =  v.VlpMovTrnId ) where v.VlpStspag not in (3,4)
group by v.VlpDtaVct
GO