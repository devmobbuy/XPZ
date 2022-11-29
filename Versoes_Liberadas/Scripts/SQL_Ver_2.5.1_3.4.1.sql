/* TAREFA #20035- JOSÉ */

--Rodar script em todos os clientes
DROP INDEX [IHIERARQUIACOMERCIAL1] ON [HIERARQUIACOMERCIAL]

CREATE NONCLUSTERED INDEX [UHIERARQUIACOMERCIAL] ON [HIERARQUIACOMERCIAL] ( 
      [PacCod], 
      [HierarquiaPai])

/* TAREFA #20046 - WESLEY */

USE [Pronto]
GO

/****** Object:  View [dbo].[Est08_Aux03]    Script Date: 25/11/2022 10:52:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[Est08_Bloqueio_EfeitoContrato] as 

select 
      E.EstCod                                                           AS 'Estcod',
	  EC.EfeitoContratoTitular                                           AS 'EstcpfCnpj',
      CASE 
	      WHEN EC.Data_Vencimento >= GETDATE() AND NOT EC.EfeitoContratoTitular IS NULL AND EC2.EfeitoContratoSituacao not in ('B','R') THEN 'S' 
		  WHEN E.EstPermiteCessao = 0 THEN 'S' 
		  ELSE 'N' 
	  END                                                                AS 'Bloqueio',
	  CASE 
	      WHEN EC.Data_Vencimento >= GETDATE() AND NOT EC.EfeitoContratoTitular IS NULL AND EC2.EfeitoContratoSituacao not in ('B','R') THEN 'Bloqueio efeito de contrato.' 
		  WHEN E.EstPermiteCessao = 0 THEN 'Estabelecimento não tem permissão para gerar cessão.' 
		  ELSE '' 
	  END                                                                AS 'MotivoBloqueio',
	  EC2.EfeitoContratoDtaVenc                                          AS 'DataVencimento',
	  EC2.EfeitoContratoSituacao                                         AS 'Situacao',
	  CASE 
		  WHEN EC2.EfeitoContratoDtaVenc < GETDATE() OR EC.EfeitoContratoTitular IS NULL OR EC2.EfeitoContratoSituacao in ('B','R') THEN 'OK' ELSE '' 
	  END                                                                AS 'Status'
from Est E

LEFT JOIN (select EfeitoContratoEstCod,
                  EfeitoContratoTitular,
                  max(EfeitoContratoDtaVenc) as 'Data_Vencimento'
		   from EfeitoContrato with(nolock) where EfeitoContratoAprovado = 1 group by EfeitoContratoEstCod,EfeitoContratoTitular) EC
     ON  E.EstCod = EC.EfeitoContratoEstCod 

LEFT JOIN (SELECT EfeitoContratoEstCod,
                  EfeitoContratoTitular,
				  EfeitoContratoDtaVenc,
				  EfeitoContratoSituacao
				  FROM EfeitoContrato
				  GROUP BY EfeitoContratoEstCod, EfeitoContratoTitular, EfeitoContratoDtaVenc, EfeitoContratoSituacao) EC2
ON EC2.EfeitoContratoEstCod  = EC.EfeitoContratoEstCod  AND 
   EC2.EfeitoContratoTitular = EC.EfeitoContratoTitular AND 
   EC2.EfeitoContratoDtaVenc = EC.Data_Vencimento

GO

---------------------------------------------------------------------------------------------------------------------------------

USE [Pronto]
GO

/****** Object:  View [dbo].[Est08_Aux10]    Script Date: 25/11/2022 10:51:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE View [dbo].[Est08_VlrPag_Aberto] as 

SELECT 
      EstCod, 
	  VlpVlrPag,
	  VlpDtaVct,
	  VlpTipPrd
FROM VLRPAG with(nolock) where VlpStsPag = 1

GO

---------------------------------------------------------------------------------------------------------------------------------

USE [Pronto]
GO

/****** Object:  View [dbo].[Est08]    Script Date: 25/11/2022 10:58:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[Est08] as 

SELECT 
	  E.EstCod                                                                                                                           AS 'VwSdEstcod',
      E.EstNomFan                                                                                                                        AS 'VwSdEstNom',
      ISNULL(Convert(Numeric(15),B.EstcpfCnpj),E.EstCpfCnpj)                                                                             AS 'VwSdEstcpfCnpj',
	  E.EstTip                                                                                                                           AS 'VwSdEstTipo',
	  B.Bloqueio                                                                                                                         AS 'VwSdBloqueio',
	  B.MotivoBloqueio                                                                                                                   AS 'VwSdMotivoBloqueio', 
	  ISNULL(SUM(A.VlpVlrPag),0)                                                                                                         AS 'VwSdSaldoTotal',
	  CASE WHEN B.Status = 'OK' THEN SUM(CASE WHEN A.VlpTipPrd = 'C' THEN A.VlpVlrPag ELSE 0 END) ELSE 0 END                             AS 'VwSdSaldoAberto', 
	  CASE WHEN B.Status = 'OK' THEN ISNULL(C.EstVlrCessao, 0) ELSE 0 END                                                                AS 'VwSdSaldoReservado',
	  CASE WHEN B.Status = 'OK' THEN SUM(CASE WHEN A.VlpTipPrd = 'C' THEN A.VlpVlrPag ELSE 0 END) - ISNULL(C.EstVlrCessao, 0) ELSE 0 END AS 'VwSdSaldoDisponivelCessao',
	  B.DataVencimento                                                                                                                   AS 'VwSdDtaVenc',
	  B.Situacao                                                                                                                         AS 'VwEfeitoContratoSituacao',
	  ROUND(CASE WHEN CAST(SUM(A.VlpVlrPag) AS numeric(18,2)) = 0 THEN  0 ELSE
				 ROUND(SUM(DATEDIFF(day,GETDATE(),A.VlpDtaVct) * A.VlpVlrPag) / CAST(SUM(A.VlpVlrPag) AS numeric(18,2)),0) END,2)        AS 'VwSdPrazoMedio'

FROM EST E with(nolock)

--EC BLOQUEIO
LEFT JOIN Est08_Bloqueio_EfeitoContrato B
     ON E.EstCod = B.Estcod

--VLRPAG COM STS = 1
LEFT JOIN (SELECT EstCod, 
	              VlpVlrPag,
	              VlpDtaVct,
	              VlpTipPrd  FROM Est08_VlrPag_Aberto) A
     ON E.EstCod = A.EstCod

--CESSOES
LEFT JOIN Est07 C with(nolock)
     ON E.EstCod = C.EstCodCessao

GROUP BY E.EstCod,
         E.EstNomFan, 
		 E.EstCpfCnpj,
		 E.EstTip,
		 B.Bloqueio,
		 B.MotivoBloqueio,
		 B.EstcpfCnpj,
		 B.Status,
		 B.DataVencimento,
		 B.Situacao,
		 C.EstVlrCessao

GO

/* TAREFA #20070 - JOSÉ */

CREATE NONCLUSTERED INDEX [UHIERARQUIACOMERCIAL1] ON [HIERARQUIACOMERCIAL] ( 
      [HierarquiaPai])

/* SEM TAREFA - JOSÉ */

INSERT INTO sse2_mod (MOD2Id, MOD2IdInt, MOD2Dsc, MOD2Url, MOD2MtdLib, MOD2Aux, MOD2Sts, Mod2LstSub)
VALUES ('wpExecutaJobs', 'wpExecutaJobs', 'Executa robôs', '', '', 0, 1, '')

INSERT INTO sse2_mnu02 (MnucOd, MnuIteModFlg, MnuIteIde, MnuIteDsc, MnuIteOrd, MnuIteIdRoot, MnuIteTxt, MnuItePth)
VALUES (10, 1, 'wpExecutaJobs', '', 105, 'TAB_GER', '', '/pronto/servlet/')

INSERT INTO sse2_ung_mod (ung2cod, mod2id)
VALUES (25, 'wpExecutaJobs')

INSERT INTO sse2_grp_mod
VALUES (25, 'ADM', 'wpExecutaJobs')