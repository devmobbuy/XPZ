/* SEM TAREFA - JOSÉ */

CREATE NONCLUSTERED INDEX [UVLRPAG12] ON [VLRPAG] ( 
      [VlpBnfCod], 
      [VlpNumLanOri], 
      [EstCod])
	  
CREATE NONCLUSTERED INDEX [UVLRPAG13] ON [VLRPAG] ( 
      [VlpDtaVct] DESC, 
      [VlpBnfCod], 
      [VlpAnpNum], 
      [VlpStspag], 
      [VlpNumLanCan], 
      [VlpNumLanOri])