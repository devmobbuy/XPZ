/* TAREFA #14905 - JOS� */

--Clientes que o script precisa ser rodado
USE Banese
USE Bemfacil
USE Credinov
USE Credpag
USE Pronto
USE SmartPagamentos

--Adi��o de �ndices nas tabelas para melhor navega��o
CREATE NONCLUSTERED INDEX [USOLICITACAOCANCELAMENTO] ON [SolicitacaoCancelamento] (
      [SolCan_DtaCancelTrans] DESC)

CREATE NONCLUSTERED INDEX [UVAN041] ON [VAN04] (
      [VanTrnDta],
      [VanTrnNumAtz],
      [VanTrnPosIde])