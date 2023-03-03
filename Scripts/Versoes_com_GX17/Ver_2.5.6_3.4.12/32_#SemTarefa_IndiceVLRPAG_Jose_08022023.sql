/* SEM TAREFA - JOS� */

--Rodar em todos os clientes que ser� atualizado o sistema
CREATE NONCLUSTERED INDEX [UVLRPAG12] ON [VLRPAG] ( 
      [EstCod], 
      [VlpBnfCod], 
      [VlpNumLanOri]);
	  
CREATE NONCLUSTERED INDEX [UVLRPAG13] ON [VLRPAG] ( 
      [VlpDtaVct] DESC,
	  [EstCod],
      [VlpBnfCod], 
      [VlpAnpNum], 
      [VlpStspag], 
      [VlpNumLanCan], 
      [VlpNumLanOri]);