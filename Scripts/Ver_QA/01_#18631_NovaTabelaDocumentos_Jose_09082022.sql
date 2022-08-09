/* TAREFA #18631 - JOS� */

CREATE TABLE [EST002] ( 
  [EstCod]       INT    NOT NULL, 
  [EstTipDoc]    SMALLINT    NOT NULL, 
  [EstDocumento] VARBINARY(MAX)    NOT NULL, 
  [EstObsDoc]    VARCHAR(MAX)    NOT NULL,
  [EstDocDtaInc] DATETIME    NULL, 
  [EstDocUsuInc] VARCHAR(40)    NULL
     PRIMARY KEY ( [EstCod],[EstTipDoc] ))
	 
ALTER TABLE [EST002] 
ADD CONSTRAINT [IEST5] FOREIGN KEY ( [EstCod] ) REFERENCES [EST]([EstCod])