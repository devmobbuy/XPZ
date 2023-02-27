
CREATE TABLE [ControleSaldoEvento] (
  [ControleSaldoEventoId]   SMALLINT    NOT NULL,
  [ControleSaldoEventoDesc] VARCHAR(40)    NOT NULL,
     PRIMARY KEY ( [ControleSaldoEventoId] ))

INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (1, 'Vendas Realizadas') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (2, 'Cancelamentos') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (3, 'Bancos') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (4, 'Antecipa��es') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (5, 'Cess�o Realizada') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (6, 'Recusa da ArqDet') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (7, 'Lan�amento Manual') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (8, 'Aluguel POS') 
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (9, 'Presta��o de Servi�o')
INSERT INTO [dbo].[ControleSaldoEvento] ([ControleSaldoEventoId],[ControleSaldoEventoDesc]) VALUES (10, 'Cess�o Recebida') 

CREATE TABLE [ControleSaldo] (
  [ControleSaldoId]               DECIMAL(18)    NOT NULL    IDENTITY ( 1 , 1 ),
  [ControleSaldoEstCod]           INT    NOT NULL,
  [ControleSaldoData]             DATETIME    NOT NULL,
  [ControleSaldoEventoId]         SMALLINT    NOT NULL,
  [ControleSaldoReferencia]       VARCHAR(200)    NULL,
  [ControleSaldoValor]            DECIMAL(17,2)    NOT NULL,
  [ControleSaldoAnterior]         DECIMAL(17,2)    NOT NULL,
  [ControleSaldoAtual]            DECIMAL(17,2)    NOT NULL,
  [ControleSaldoDataHoraExecucao] DATETIME    NOT NULL,
     PRIMARY KEY ( [ControleSaldoId] ))
CREATE NONCLUSTERED INDEX [UCONTROLEVENDAEC] ON [ControleSaldo] (
      [ControleSaldoEstCod],
      [ControleSaldoId] DESC)
CREATE NONCLUSTERED INDEX [UCONTROLEVENDAEC1] ON [ControleSaldo] (
      [ControleSaldoEventoId],
      [ControleSaldoReferencia])
ALTER TABLE [ControleSaldo]
 ADD CONSTRAINT [ICONTROLEVENDAEC1] FOREIGN KEY ( [ControleSaldoEventoId] ) REFERENCES [ControleSaldoEvento]([ControleSaldoEventoId])
ALTER TABLE [ControleSaldo]
 ADD CONSTRAINT [ICONTROLEVENDAEC2] FOREIGN KEY ( [ControleSaldoEstCod] ) REFERENCES [EST]([EstCod])