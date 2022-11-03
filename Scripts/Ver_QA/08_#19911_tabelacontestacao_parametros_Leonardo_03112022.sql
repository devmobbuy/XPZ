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