/* ALTERA��O DA VERS�O DO BANCO */

UPDATE PARSIS
SET ParCon = '2.5.14_2.4.10'
WHERE ParCod = 'VERSAO_BANCO'

UPDATE PARSIS
SET ParCon = '10/03/2022'
WHERE ParCod = 'VERSAO_BANCO_DATA'

/* TAREFA #15479 - CARLOS */

--USE BANESE
--USE BEMFACIL
--USE CREDINOV
--USE CREDPAG
--USE PRONTO
--USE SMARTPAGAMENTOS
--USE CredPagLeia

CREATE TABLE [CodigoRetornoTransacoes] (
  [CodigoRetornoTransacoesCod] VARCHAR(32)     NOT NULL,
  [CodigoRetornoTransacoesDsc] VARCHAR(500)     NOT NULL,
      PRIMARY KEY ( [CodigoRetornoTransacoesCod] ))

--use Banese
--use Bemfacil
--use Credinov
--use CredPag
--use Pronto
--use Smartpagamentos
--use CredPagLeia

insert into CodigoRetornoTransacoes (CodigoRetornoTransacoesCod, CodigoRetornoTransacoesDsc)
values 
('00','Transa��o Autorizada'),
('01','Transa��o Referida � Emissor'),
('03','Rede Inv�lida (comerciante)'),
('05','Trn. N�o Autorizada � Emissor'),
('06','Erro Gen�rico'),
('08','Time-out no Emissor/Bandeira'),
('0A','CNPJ wallet n�o habilitado para� transacionar'),
('0B','Cart�o j� adicionado a uma carteira'),
('12','Transa��o Inv�lida'),
('13','Valor da Transa��o Inv�lido'),
('14','Cart�o Inv�lido'),
('15','Institui��o n�o Cadastrada (Emissor sem conv�nio)'),
('17','Data Invalida'),
('19','Repita a Transa��o�(Tente Novamente)'),
('21','N�o foi poss�vel cancelar ou�confirmar a transa��o'),
('23','Parcelamento inv�lido'),
('25','Registro n�o encontrado'),
('26','Opera��o com Id duplicada'),
('30','Erro de formato'),
('31','Institui��o n�o pertence a rede'),
('38','Excedido tentativas de senha'),
('40','Servi�o Indispon�vel'),
('41','Cart�o Extraviado'),
('43','Cart�o Roubado'),
('51','Saldo Insuficiente'),
('52','Utilize fun��o Cr�dito'),
('53','Utilize fun��o D�bito'),
('54','Cart�o e/ou Conta Vencida'),
('55','Senha Inv�lida'),
('56','Cart�o sem registro'),
('57','Servi�o Inv�lido para esse Cliente'),
('58','Transa��o n�o permitida conveniado'),
('60','Entrar em contato com�o Banrisul'),
('61','Excedido Limite de Saque'),
('62','Cart�o Bloqueado'),
('64','Valor da transa��o n�o permitido'),
('65','Excedido Freq��ncia de Saque'),
('68','Time-Out � N�o recebida resposta� Institui��o Origem'),
('76','N�o foi poss�vel confirmar ou�cancelar a transa��o'),
('77','Dados referentes ao registro n�o s�o� pertinentes � solicita��o original'),
('78','Limite de compra excedido'),
('79','Transa��o cancelada'),
('80','Data Inv�lida'),
('81','Chave de Criptografia Inv�lida'),
('83','Cart�o ou Cheque Bloqueado'),
('85','Verifica��o de Cadastro OK'),
('86','Parcela Inv�lida'),�
('87','Prazo Inv�lido'),�
('88','CNAE wallet n�o permitida para o�cart�o'),
('89','CNPJ inv�lido para transacionar'),
('90','Ambiente Indispon�vel�Temporariamente'),�
('91','Institui��o Destino Temporariamente� Fora de Servi�o'),	
('92','Wallet pendente de aprova��o'),
('93','Wallet n�o habilitado para transacionar'),
('94','Zero d�lar com prazo expirado de� libera��o no App'),
('N0','Conta Bloqueada'),�
('N1','Via Inv�lida'),�
('N2','Categoria de Conta Inv�lida'),�
('N3','Problema sistema: XXX�Cod: 99'),
('N4','Ag�ncia Inv�lida'),�
('N5','Ag�ncia e/ou Conta Inv�lida'),�
('N6','Tamanho Inv�lido'),�
('N7','Erro Retorno PGM: XXXXX�Cod: 99'),
('N8','Abend'),�
('NA','Erro de CheckSum'),�
('NB','NPJ/CPF N�o Cadastrado'),�
('NR','Servi�o bloqueado para o cliente'),�
('NS','Qtd. de parcelas solicitadas superior� a permitida'),�
('NT','Valor solicitado � inferior ao m�nimo� permitido'),
('NU','Valor da parcela solicitado � inferior� ao m�nimo permitido'),
('NV','Valor solicitado � superior ao� dispon�vel'),
('NW','Quantidade de Parcelas Menor que o� Permitido'),
('NX','Valor dispon�vel inferior ao m�nimo� permitido p/ Cr�dito 1 Minuto'),
('P1','Erro no c�digo de barras'),�
('P2','Encargo n�o permitido'),�
('P3','Data de vencimento inv�lida'),�
('P4','Documento vencido'),�
('P5','Valor digitado diferente do c�digo de� barras'),
('P6','Erro no CMC-7 do cheque'),�
('P7','Solicita��o de pagamento sem� sess�o aberta'),
('P8','Valor n�o permitido nesta forma de� pagamento'),
('P9','Documento n�o pode ser pago com� cheque de outros bancos'),
('PA','Documento fora do prazo'),�
('PB','Informa��o de �ltimo NSU ok� incompat�vel'),
('PC','Abertura com Lote n�o encerrado'),�
('PD','Documento n�o pode ser pago com� cheque'),
('PE','Cancelamento de opera��o que n�o� do Lote Corrente'),
('PF','Cheque j� utilizado'),�
('PG','Feche o lote e recolha � ag�ncia'),�
('PH','Lote Aberto em Data Anterior'),�
('PI','Transa��o n�o permitida neste� hor�rio'),
('PJ','C�digo de Pagamento do GPS� inexistente'),
('PK','Compet�ncia do GPS inv�lida'),�
('PL','Identificador GPS Invalido'),�
('PM','Valor INSS GPS Invalido'),�
('PN','Valor Outras Entidades do GPS� Invalido'),
('PO','Valor ATM/Multas e Juros de GPS� Invalido'),
('PP','Valor Total de GPS Invalido'),
('Q0','Solicita��o de Fechamento de� Terminal'),
('Q1','Consulta cheque de outro banco'),�
('Q2','Identificador Dep�sito Inv�lido'),�
('Q3','Limite de Dep�sito Excedido'),�
('Q4','C�digo de Seguran�a Inv�lido'),�
('Q5','Senha vencida, verificar na ag�ncia'),�
('Q6','Mac Address n�o cadastrado'),�
('V0','Contate a central do seu cart�o'),�
('V1','Desbloqueie o Cart�o'),�
('V2','Cart�o n�o permite transa��es� internacionais'),
('V3','Valor diferente da pr�-autoriza��o'),�
('V4','Senha Inv�lida'),�
('V5','Senha Inv�lida. Utilize a nova senha'),�
('V6','Lojista, contate o Adquirente'),�
('V7','Conta destino inv�lida'),�
('V8','Conta origem inv�lida'),�
('V9','Erro no Cart�o'),�
('VA','Suspens�o de pagamento recorrente� para servi�o'),
('VB','Saque n�o dispon�vel'),�
('VC','Transa��o NFC n�o permitida.� Utilizar CHIP'),
('Y1','Transa��o EMV aprovada offline'),�
('Y3','Transa��o EMV aprovada offline por� falta de comunica��o'),
('Z1','Transa��o EMV negada offline'),�
('Z3','Transa��o EMV negada offline por�falta de comunica��o')

/* TAREFA #15479 - L�IA */

USE PRONTO


--Rodar primeiro
INSERT INTO  sse2_mod (MOD2Id, MOD2IdInt, MOD2Dsc, MOD2Url, MOD2MtdLib, MOD2Aux, MOD2Sts, Mod2LstSub)
VALUES ('wwAviso', 'wwAviso', 'Avisos', '', '', 0, 1, '')


select * from   sse2_mod where MOD2Id = 'wwAviso'


--Rodar segundo

Select * from sse2_mnu02 where  MnuIteIde = 'wwAviso'

INSERT INTO sse2_mnu02 (MnucOd, MnuIteModFlg, MnuIteIde, MnuIteDsc, MnuIteOrd, MnuIteIdRoot, MnuIteTxt, MnuItePth)
VALUES (10, 1, 'wwAviso', 'Avisos', 103, 'TAB_GER', '', '/pronto/servlet/') --Alterar "/cliente/servlet/"


--Rodar terceiro
select * from sse2_ung_mod where mod2id = 'wwAviso'

INSERT INTO sse2_ung_mod (ung2cod, mod2id)
VALUES (25, 'wwAviso') -- Dar o SELECT de baixo na sse2_ung e pagar o UNG2Cod e alterar conforme o valor de cada cliente

SELECT * FROM sse2_ung

--Rodar quarto
select * from sse2_grp_mod where MOD2Id = 'wwAviso'

INSERT INTO sse2_grp_mod
VALUES (25, 'ADM', 'wwAviso') --Dar o SELECT de cima na sse2_ung e pagar o UNG2Cod e alterar conforme o valor de cada cliente

/* TAREFA #15541 - L�IA */

INSERT INTO [dbo].[PARSIS] ([ParCod], [ParDsc] ,[ParTipPar] ,[ParTamPar] ,[ParQtdDec] ,[ParIndSin] ,[ParCon] ,[ParUsuInc] ,[ParDtiInc] ,[ParFlgInt])
     values ('SOLICCANC_EMAILAVISO','Email que vai receber as solicita��es de Cancelamento','CA', 255,NULL,'N',null,'Sistema','2022-03-03 00:00:00.000', 0)

INSERT INTO [dbo].[PARSIS] ([ParCod], [ParDsc] ,[ParTipPar] ,[ParTamPar] ,[ParQtdDec] ,[ParIndSin] ,[ParCon] ,[ParUsuInc] ,[ParDtiInc] ,[ParFlgInt])
     values ('SOLICCANC_EMAILMSG','Mensagem do Email de solicita��es de Cancelamento','CA', 255,NULL,'N',null,'Sistema','2022-03-03 00:00:00.000', 0)