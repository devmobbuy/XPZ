/* TAREFA  #14671 - CARLOS PATRICIO */
use BancoOrigem
use Banese
use BemFacil
use CredInov
use Credpag
use Pronto
use SmartPagamentos


CREATE TABLE [LogUpdArq] (
  [LogUpdArqNum]    INT IDENTITY (1,1)  NOT NULL,
  [LogUpdArqNomArq] CHAR(60)			NOT NULL,
  [LogUpdArqDtaInc] DATETIME			NOT NULL,
  [LogUpdArqIdUsu]  CHAR(20)			NOT NULL,
  [LogUpdArqNomUsu] VARCHAR(50)			NOT NULL,
  [LogUpdArqStsGrv] CHAR(20)			NOT NULL,
  [LogUpdArqMsgErr] CHAR(60)			NULL,
      PRIMARY KEY ( [LogUpdArqNum] ))

/* TAREFA #14658 - JOSÉ LUIZ */
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

CREATE TABLE [SolicitacaoCancelamento] (
  [SolCan_Id]                  DECIMAL(10)     NOT NULL     IDENTITY ( 1 , 1 ),
  [SolCan_cd_company]          DECIMAL(12)     NULL,
  [SolCan_dt_hr_cancel_trans]  VARCHAR(40)     NULL,
  [SolCan_alias_name]          VARCHAR(80)     NULL,
  [SolCan_name_company]        VARCHAR(80)     NULL,
  [SolCan_docum_number]        VARCHAR(40)     NULL,
  [SolCan_transaction_number]  DECIMAL(10)     NULL,
  [SolCan_nrTerminal]          VARCHAR(40)     NULL,
  [SolCan_pay_value]           MONEY     NULL,
  [SolCan_quantity_parcel]     SMALLINT     NULL,
  [SolCan_nsu_code]            VARCHAR(40)     NULL,
  [SolCan_authentication_code] VARCHAR(40)     NULL,
  [SolCan_token_number]        VARCHAR(40)     NULL,
  [SolCan_number_trunc_card]   VARCHAR(40)     NULL,
  [SolCan_nm_flag_card]        VARCHAR(40)     NULL,
  [SolCan_dt_hr_trans]         VARCHAR(40)     NULL,
  [EstCod]                     INT     NULL,
  [SolCan_Status]              VARCHAR(40)     NULL,
  [SolCan_UsuAlt]              VARCHAR(40)     NULL,
  [SolCan_UsuAltDta]           DATETIME     NULL,
  [SolCan_DtaTrans]            DATETIME     NULL,
  [SolCan_DtaCancelTrans]      DATETIME     NULL,
      PRIMARY KEY ( [SolCan_Id] ))

CREATE NONCLUSTERED INDEX [ISOLICITACAOCANCELAMENTO1] ON [SolicitacaoCancelamento] (
      [EstCod])

ALTER TABLE [SolicitacaoCancelamento]
 ADD CONSTRAINT [ISOLICITACAOCANCELAMENTO1] FOREIGN KEY ( [EstCod] ) REFERENCES [EST]([EstCod])

 /* SEGUNDO SCRIPT */
 USE Pronto

INSERT INTO sse2_mod (MOD2Id, MOD2IdInt, MOD2Dsc, MOD2Url, MOD2MtdLib, MOD2Aux, MOD2Sts, Mod2LstSub)
VALUES ('SolCancelMaq_Grid', 'SolCancelMaq_Grid', 'Solicitação de Cancelamento', '', '', 0, 1, '')

INSERT INTO sse2_mnu02 (MnucOd, MnuIteModFlg, MnuIteIde, MnuIteDsc, MnuIteOrd, MnuIteIdRoot, MnuIteTxt, MnuItePth)
VALUES (10, 1, 'SolCancelMaq_Grid', '', 41, 'REDE_CAP', '', '/pronto/servlet/')

INSERT INTO sse2_ung_mod (ung2cod, mod2id)
VALUES (25, 'SolCancelMaq_Grid')

INSERT INTO sse2_grp_mod
VALUES (25, 'ADM', 'SolCancelMaq_Grid')

 /* ALTERAÇÃO DA VERSÃO DO BANCO */
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

UPDATE PARSIS
SET ParCon = '2.5.4'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '13/01/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'
 
 

