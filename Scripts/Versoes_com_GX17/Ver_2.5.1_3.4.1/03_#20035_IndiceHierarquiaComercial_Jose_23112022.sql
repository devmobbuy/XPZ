/* TAREFA #20035- JOS� */

--Rodar script em todos os clientes
DROP INDEX [IHIERARQUIACOMERCIAL1] ON [HIERARQUIACOMERCIAL]

CREATE NONCLUSTERED INDEX [UHIERARQUIACOMERCIAL] ON [HIERARQUIACOMERCIAL] ( 
      [PacCod], 
      [HierarquiaPai])