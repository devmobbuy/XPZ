/* TAREFA #21092 - JOS� */

--Rodar em todos os clientes que ser�o atualizados
CREATE NONCLUSTERED INDEX [UMOVTRN0112] ON [MovTrn01] (
      [EstCod],
      [MovTrnCod],
      [MovTrnDta] DESC);