/* TAREFA #20024 - JOS� */

--Rodar em todos os clientes, um update de cada vez

ALTER TABLE [USUEST]
ADD [GX_AUX] VARCHAR(40)    NULL CONSTRAINT GX_AUXUSUEST_DEFAULT DEFAULT '' WITH VALUES

ALTER TABLE [USUEST]
DROP CONSTRAINT GX_AUXUSUEST_DEFAULT

UPDATE [USUEST]
SET    [GX_AUX] = Rtrim([UEstUsuAlt])

ALTER TABLE [USUEST]
DROP COLUMN [UEstUsuAlt]

EXEC sp_rename '[USUEST].GX_AUX', 'UEstUsuAlt'

ALTER TABLE [USUEST]
ADD [GX_AUX] VARCHAR(40)    NULL CONSTRAINT GX_AUXUSUEST_DEFAULT DEFAULT '' WITH VALUES

ALTER TABLE [USUEST]
DROP CONSTRAINT GX_AUXUSUEST_DEFAULT

UPDATE [USUEST]
SET    [GX_AUX] = Rtrim([UEstUsuInc])

ALTER TABLE [USUEST]
DROP COLUMN [UEstUsuInc]

EXEC sp_rename '[USUEST].GX_AUX', 'UEstUsuInc'