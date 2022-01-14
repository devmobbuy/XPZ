USE pronto

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
           ('DIRF' 
           ,'Usar tela DIRF'
           ,'CA'
           ,200
           ,NULL
		   ,'N'
           ,'S'
           ,NULL
           ,NULL
           ,'025ADM                           '
           ,'2022-01-14 17:00:36.000'
           ,0)
GO

select * from Pronto..PARSIS where parcod = 'DIRF'
--UPDATE PARSIS SET PARCON = 'N' WHERE PARCOD = 'DIRF' -- QA