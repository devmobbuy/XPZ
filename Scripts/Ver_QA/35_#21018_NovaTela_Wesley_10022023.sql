--Rodar script em todos os clientes que ir� ser atualizada a vers�o
INSERT INTO sse2_mod (MOD2Id, MOD2IdInt, MOD2Dsc, MOD2Url, MOD2MtdLib, MOD2Aux, MOD2Sts, Mod2LstSub)
VALUES ('SituacaoTrn05_Grid', 'SituacaoTrn05_Grid', 'Situa��o TRN05', '', '', 0, 1, '')

INSERT INTO sse2_mnu02 (MnucOd, MnuIteModFlg, MnuIteIde, MnuIteDsc, MnuIteOrd, MnuIteIdRoot, MnuIteTxt, MnuItePth)
VALUES (10, 1, 'SituacaoTrn05_Grid', '', 10, 'REDE_CAP', '', '/pronto/servlet/') --Mudar onde est� 'pronto' conforme cliente

INSERT INTO sse2_ung_mod (ung2cod, mod2id)
VALUES (28, 'SituacaoTrn05_Grid') --Verificar a unidade de neg�cio para modificar de '25' se for diferente da Pronto

INSERT INTO sse2_grp_mod
VALUES (28, 'API', 'SituacaoTrn05_Grid') --Verificar a unidade de neg�cio para modificar de '25' se for diferente da Pronto