/*CRIA A TABELA HierarquiaComercial*/

CREATE TABLE [HierarquiaComercial] (
  [HierarquiaComercialId]     DECIMAL(10)    NOT NULL    IDENTITY ( 1 , 1 ),
  [UEstCod]                   VARCHAR(128)    NOT NULL,
  [HierarquiaTipoId]          DECIMAL(10)    NOT NULL,
  [HierarquiaPai]             DECIMAL(10)    NOT NULL,
  [HierarquiaComercialStatus] BIT    NOT NULL,
     PRIMARY KEY ( [HierarquiaComercialId] ))
CREATE NONCLUSTERED INDEX [IHIERARQUIACOMERCIAL1] ON [HierarquiaComercial] (
      [HierarquiaTipoId])