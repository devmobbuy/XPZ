/* TAREFA #14812 - JOS� */

--Cria��o do campo EstSegmento
ALTER TABLE [EST]
ADD [EstSegmento] VARCHAR(40)     NOT NULL CONSTRAINT EstSegmentoEST_DEFAULT DEFAULT ''

ALTER TABLE [EST]
DROP CONSTRAINT EstSegmentoEST_DEFAULT