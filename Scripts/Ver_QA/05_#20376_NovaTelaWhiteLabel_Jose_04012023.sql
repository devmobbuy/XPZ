/* TAREFA #20376 - JOS� */

--Rodar script em todos os clientes que ir� ser atualizada a vers�o
INSERT INTO sse2_mod (MOD2Id, MOD2IdInt, MOD2Dsc, MOD2Url, MOD2MtdLib, MOD2Aux, MOD2Sts, Mod2LstSub)
VALUES ('CadastroWhitelabel', 'CadastroWhitelabel', 'Cadastro de whitelabel', '', '', 0, 1, '')

INSERT INTO sse2_mnu02 (MnucOd, MnuIteModFlg, MnuIteIde, MnuIteDsc, MnuIteOrd, MnuIteIdRoot, MnuIteTxt, MnuItePth)
VALUES (10, 1, 'CadastroWhitelabel', '', 161, 'TAB_GER', '', '/pronto/servlet/') --Mudar onde est� 'pronto' conforme cliente

INSERT INTO sse2_ung_mod (ung2cod, mod2id)
VALUES (25, 'CadastroWhitelabel') --Verificar a unidade de neg�cio para modificar de '25' se for diferente da Pronto

INSERT INTO sse2_grp_mod
VALUES (25, 'ADM', 'CadastroWhitelabel') --Verificar a unidade de neg�cio para modificar de '25' se for diferente da Pronto