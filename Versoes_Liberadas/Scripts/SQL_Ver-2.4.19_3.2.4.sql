/* TAREFA #18395 - JOS� */

--Rodar em todos os clientes
CREATE NONCLUSTERED INDEX [UCESSAO6] ON [Cessao] (
      [CessaoEstCodBen],
      [CessaoStatusId],
      [CessaoEstCodOri],
      [CessaoDtaLiq])