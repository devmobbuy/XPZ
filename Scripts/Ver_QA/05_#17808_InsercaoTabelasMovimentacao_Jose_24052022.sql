/* TAREFA #17808 - JOS� */

--Script para ser executado no banco Monitor

CREATE TABLE [TipoReferencia] (
  [TipoReferenciaId]        INT    NOT NULL,
  [TipoReferenciaDescricao] NVARCHAR(80)    NULL,
     PRIMARY KEY ( [TipoReferenciaId] ))
	 
CREATE TABLE [MovimentacaoTransferencia] (
  [MovTransferenciaId]     INT    NOT NULL    IDENTITY ( 1 , 1 ),
  [MovTransferenciaEstCod] INT    NULL,
  [MovTransferenciaAno]    NCHAR(4)    NULL,
  [MovTransferenciaMes]    NCHAR(2)    NULL,
  [MovTransferenciaValor]  MONEY    NULL,
  [TipoReferenciaId]       INT    NULL,
     PRIMARY KEY ( [MovTransferenciaId] ))
CREATE NONCLUSTERED INDEX [IMOVIMENTACAOTRANSFERENCIA1] ON [MovimentacaoTransferencia] (
      [TipoReferenciaId])
ALTER TABLE [MovimentacaoTransferencia]
 ADD CONSTRAINT [IMOVIMENTACAOTRANSFERENCIA1] FOREIGN KEY ( [TipoReferenciaId] ) REFERENCES [TipoReferencia]([TipoReferenciaId])
 
INSERT INTO TipoReferencia
VALUES (1, 'Venda M�dia por Dia')

INSERT INTO TipoReferencia
VALUES (2, 'Ticket M�dio')

INSERT INTO TipoReferencia
VALUES (3, 'Quantidade de Transa��es por Dia')