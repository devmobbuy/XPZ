/* TAREFA #20559 - LEONARDO */

INSERT INTO PARSIS 
(ParCod, ParDsc, ParTipPar, ParTamPar, ParIndSin, ParCon)
VALUES
('HORA_REDECAP', 'TRATAMENTO HORARIO JSON REDECAPTURA (SEGUNDOS)', 'CA', 80, 'N', '3600')

/* TAREFA #20579 - JOS� */

--Rodar em todos os clientes que ser� atualizada a vers�o
ALTER TABLE [SolicitacaoCancelamento]
ADD [SolCan_adquirente] VARCHAR(40)    NULL