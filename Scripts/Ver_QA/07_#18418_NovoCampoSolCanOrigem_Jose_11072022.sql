/* TAREFA #18418 - JOS� */

--Rodar em todos os bancos, inclusive os novos (Thepay...)
ALTER TABLE [SolicitacaoCancelamento]
ADD [SolCan_Origem] CHAR(20)    NULL