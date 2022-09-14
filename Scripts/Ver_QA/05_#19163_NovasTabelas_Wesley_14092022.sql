CREATE TABLE [Trn_Processamento] (
  [Trn_ProcessamentoCod]  VARCHAR(6)    NOT NULL,
  [Trn_ProcessamentoDesc] VARCHAR(100)    NOT NULL,
     PRIMARY KEY ( [Trn_ProcessamentoCod] ))

INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('002000','pagamento com cart�o de d�bito � vista ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('003000','pagamento com cart�o de cr�dito � vista ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('003100','pagamento com cart�o de cr�dito � vista ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('003800','pagamento com cart�o de cr�dito parcelado emissor ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('003900','pagamento com cart�o de cr�dito transa��o recorrente ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('942000','pagamento com cart�o Alimenta��o PAT ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('952000','pagamento com cart�o Refei��o PAT ') 
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('962000','pagamento com cart�o Vouchers Empresariais ')
INSERT INTO [dbo].[Trn_Processamento] ([Trn_ProcessamentoCod],[Trn_ProcessamentoDesc]) VALUES ('972000','pagamento com cart�o Auto ') 

-----------------------------------------------------------------------------------------

CREATE TABLE [Trn_Servico] (
  [Trn_ServicoCod]  VARCHAR(4)    NOT NULL,
  [Trn_ServicoDesc] VARCHAR(100)    NOT NULL,
     PRIMARY KEY ( [Trn_ServicoCod] ))

INSERT INTO [dbo].[Trn_Servico] ([Trn_ServicoCod],[Trn_ServicoDesc]) VALUES ('PGCD','pagamento com cart�o de d�bito ') 
INSERT INTO [dbo].[Trn_Servico] ([Trn_ServicoCod],[Trn_ServicoDesc]) VALUES ('PGCC','pagamento com cart�o de cr�dito ') 
INSERT INTO [dbo].[Trn_Servico] ([Trn_ServicoCod],[Trn_ServicoDesc]) VALUES ('PGAL','pagamento com cart�o Alimenta��o PAT ') 
INSERT INTO [dbo].[Trn_Servico] ([Trn_ServicoCod],[Trn_ServicoDesc]) VALUES ('PGRE','pagamento com cart�o Refei��o PAT ') 
INSERT INTO [dbo].[Trn_Servico] ([Trn_ServicoCod],[Trn_ServicoDesc]) VALUES ('PGVE','pagamento com cart�o Vouchers Empresariais ') 
INSERT INTO [dbo].[Trn_Servico] ([Trn_ServicoCod],[Trn_ServicoDesc]) VALUES ('PGAU','pagamento com cart�o Auto ') 

-----------------------------------------------------------------------------------------

CREATE TABLE [Trn_Situacao] (
  [Trn_SituacaoCod]  VARCHAR(2)    NOT NULL,
  [Trn_SituacaoDesc] VARCHAR(100)    NOT NULL,
     PRIMARY KEY ( [Trn_SituacaoCod] ))

INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('00','OK por confirma��o ')
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('01','OK pela resolu��o de pend�ncias on-line ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('02','OK por concilia��o ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('03','OK pela resolu��o de pend�ncias na opera��o seguinte ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('04','OK pela resolu��o de pend�ncias manual ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('05','Estorno OK ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('10','Pendente ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('13','Pr�-autoriza��o ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('20','N�o autorizada ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('21','N�o autorizada pela rede destino ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('40','Cancelada pela origem ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('41','Cancelada por resolu��o de pend�ncias on-line ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('42','Cancelada por concilia��o ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('43','Cancelada por resolu��o de pend�ncias na opera��o seguinte ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('44','Cancelada por resolu��o de pend�ncias manual ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('50','Estornada') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('51','Estornada por resolu��o de pend�ncias on-line ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('52','Estornada por concilia��o ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('53','Estornada por solicita��o posterior ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('54','Estornada por resolu��o manual ') 
INSERT INTO [dbo].[Trn_Situacao] ([Trn_SituacaoCod],[Trn_SituacaoDesc]) VALUES ('57','Estornada por Revers�o PIX ') 