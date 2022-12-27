-- Banco Monitor
INSERT INTO Parametro
VALUES ('PERC_VARIACAO_ESTATISTICA', 'Percentual de varia��o da base estat�stica para gera��o de alerta.', '300')

INSERT INTO Parametro
VALUES ('E-MAIL_ESTATISTICA', 'E-mail padr�o para alertas da base estat�stica.', '')

ALTER TABLE [Transacao]
ADD [TransacaoEstSegmento] NVARCHAR(40)    NULL

ALTER TABLE [Ocorrencia]
ADD [OcorrenciaEstSegmento] NVARCHAR(40)    NULL

CREATE NONCLUSTERED INDEX [UMOVIMENTACAOTRANSFERENCIA] ON [MovimentacaoTransferencia] (
      [MovTransferenciaAno] DESC,
      [MovTransferenciaMes] DESC,
      [TipoReferenciaId],
      [MovTransferenciaEstCod])
	  
CREATE NONCLUSTERED INDEX [UTRANSACAO15] ON [Transacao] (
      [TransacaoData] DESC,
      [TransacaoEc])

-- Banco Retaguarda
INSERT INTO PARSIS
VALUES ('API_MONITOR_PERC_ESTAT','Url da API de percentual estat�stica do Monitor','VA',40,NULL,'N','https://app-prd.semprepronto.com.br/MonitoramentoPronto/rest/Alerta_Percentual_Estatistica','ADMIN','2022-12-26 09:59:00.000',NULL,NULL,0)