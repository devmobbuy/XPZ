CREATE VIEW RelatorioBaseTributacao AS
select 	
	[MovTrn01].[EstCod] as RelBaseTribCodigo,
	[EST].[EstAplPsq] as RelBaseTribEstabelecimento,
	[EST].[EstSegmento] as RelBaseTribSegmentos,
	[EST].[EstNomFan] as RelBaseTribNomeFantasia,
	[EST].[EstCpfCnpj] as RelBaseTribCNPJ,
	[EST].[EstTip] as RelBaseTribEstTipo,
	movtrndta as RelBaseTribData,
	sum(MovTrnVlr) as RelBaseTribValorVenda, 	  
	sum(MovTrnVlrLiqEst) as RelBaseTribValorEstabelecimento,		
	sum(MovTrnBfaVlrTxaAdm) as RelBaseTribTaxaAdministracao,	
	sum(MovTrnBfaVlrTxaFin) as RelBaseTribReceitaAntecipacao,
	sum(TxAntManualVlr) as RelBaseTribReceitaAntecipacaoManual,
	sum(MovTrnGbpVlrTxaInt) as RelBaseTribTaxaAdquirente,
	sum(MovTrnVlr - MovTrnVlrLiqEst - MovTrnGbpVlrTxaInt) as RelBaseTribReceitaLiquida
from [MovTrn01]
	left join [EST] on [EST].[EstCod] = [MovTrn01].[EstCod]
	left join [TxAntManualVw] on [TxAntManualVw].[TxAntManualEstCod] = [EST].[EstCod]
	Where MovTrnCod in ('CV', 'CC')
	group by [MovTrn01].[EstCod], EstNomFan, EstAplPsq, EstCpfCnpj, EstTip, EstSegmento, movtrndta