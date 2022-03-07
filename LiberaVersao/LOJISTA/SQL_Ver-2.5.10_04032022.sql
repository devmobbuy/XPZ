
/* ALTERAÇÃO DA VERSÃO DO BANCO */

UPDATE PARSIS
   SET ParCon = '2.5.12_2.4.10'
 WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
   SET ParCon = '04/03/2022'
 WHERE ParCod = 'VERSAO_BANCO_DATA'
 
 
 /* TAREFA #15541 - LÉIA */
 

INSERT INTO [dbo].[PARSIS] ([ParCod], [ParDsc] ,[ParTipPar] ,[ParTamPar] ,[ParQtdDec] ,[ParIndSin] ,[ParCon] ,[ParUsuInc] ,[ParDtiInc] ,[ParFlgInt])
     values ('SOLICCANC_EMAILAVISO','E-mail que vai receber as Solicitação de Cancelamento','CA', 255,NULL,'N',null,'Sistema','2022-03-03 00:00:00.000', 0)

INSERT INTO [dbo].[PARSIS] ([ParCod], [ParDsc] ,[ParTipPar] ,[ParTamPar] ,[ParQtdDec] ,[ParIndSin] ,[ParCon] ,[ParUsuInc] ,[ParDtiInc] ,[ParFlgInt])
     values ('SOLICCANC_EMAILMSG','Mensagem do E-mail de Solicitação de Cancelamento','CA', 255,NULL,'N',null,'Sistema','2022-03-03 00:00:00.000', 0)
