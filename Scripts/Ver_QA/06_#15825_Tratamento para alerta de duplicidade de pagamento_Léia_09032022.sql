
/* TAREFA #15825 - LÉIA */  

CREATE TABLE [Processo] (
  [ProcessoId]          INT     NOT NULL     IDENTITY ( 1 , 1 ),
  [ProcessoRotina]      SMALLINT     NULL,
  [ProcessoDataInicial] DATETIME     NULL,
  [ProcessoDataFinal]   DATETIME     NULL,
  [ProcessoMensagem]    VARCHAR(MAX)     NULL,
  [ProcessoStatus]      SMALLINT     NULL,
      PRIMARY KEY ( [ProcessoId] ))

 
 
 
 