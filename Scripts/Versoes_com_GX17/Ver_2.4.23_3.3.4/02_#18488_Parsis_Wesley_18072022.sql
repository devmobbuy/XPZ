INSERT INTO [dbo].[PARSIS]
           ([ParCod]
           ,[ParDsc]
           ,[ParTipPar]
           ,[ParTamPar]
           ,[ParQtdDec]
           ,[ParIndSin]
           ,[ParCon]
           ,[ParUsuInc]
           ,[ParDtiInc]
           ,[ParUsuAlt]
           ,[ParDtiAlt]
           ,[ParFlgInt])
     VALUES
           ('PER_USU_MANUTENCAO' 
           ,'Usu�rio(s) com permiss�o para fazer manuten��o da movtrn01 e vlrpag.Separa cada usu�rio por |'
           ,'CA'
           ,1
           ,NULL
           ,'N'
           ,'S'
           ,NULL
           ,NULL
           ,'025ADM                           '
           ,'2022-07-18 10:00:36.000'
           ,0)
GO

--select * from parsis where parcod = 'PER_USU_CAN_MANUAL'
--select * from parsis where parcod = 'PER_USU_MANUTENCAO'
--update parsis set ParCon = '012suporte' where parcod = 'PER_USU_MANUTENCAO'