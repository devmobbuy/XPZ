
/* TAREFA #16786 - LÉIA */  

ALTER TABLE [Processo] ADD [ProcessoClasse] VARCHAR(45) NULL;
ALTER TABLE [Processo] ADD [ProcessoOrigem] VARCHAR(50) NULL;

CREATE NONCLUSTERED INDEX [UCNTBAN] ON [CNTBAN] ([CntFlgDOC]);

