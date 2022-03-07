@echo off
setlocal enableDelayedExpansion

rem ====================================================================================================
rem ===================          CONFIGURACOES (ALTERAR APENAS ESSE BLOCO)           ===================
rem ====================================================================================================

rem | pasta raíz (onde está localizado o bat)
set DirHome=D:\LiberaVersao\RETAGUARDA

rem | binários
set BinJava=C:\Program Files\Java\jdk1.7.0_71\bin
set SevenZip=C:\Program Files\7-Zip

rem | aplicação
set AppNome=Pronto
set AppPasta=Pronto
set AppDir=C:\Central\Apache\tomcat7\webapps\MobBuy-liberacao

rem | KB
set KbDir=C:\Central\KB\Ev2Up7\MOBBUY_LIBERACAO

rem | SQL Server
set SqlServerService=MSSQL$SQLEXPRESS

rem | banco novo
set BancoNovoHost=
set BancoNovoPorta=
set BancoNovoBanco=
set BancoNovoUsuario=
set BancoNovoSenha=

rem | banco antigo
set BancoAntigoHost=
set BancoAntigoPorta=
set BancoAntigoBanco=
set BancoAntigoUsuario=
set BancoAntigoSenha=

rem | banco log
set BancoLogHost=
set BancoLogPorta=
set BancoLogBanco=
set BancoLogUsuario=
set BancoLogSenha=

set DataAtual=%date:~0,2%%date:~3,2%%date:~6,4%

rem ====================================================================================================
rem ====================================================================================================
rem ====================================================================================================

rem set JarDiff=D:\LiberaVersao\apgdiff\apgdiff-2.4.jar

rem ====================================================================================================

echo.
echo.*************************************************************************
echo.****** ******                                               ****** ******
echo.******                     LIBERACAO DE VERSAO                     ******
echo.****** ******                                               ****** ******
echo.*************************************************************************
echo.
echo.APLICACAO........: %AppNome%
echo.KB...............: %KbDir%
echo.DIRETORIO........: %AppDir%
echo.DATA ATUAL.......: %DataAtual%
echo.

rem ====================================================================================================

rem | verifica se está executando o bat como administrador (para poder parar o serviço do sqlserver)
net session >nul 2>&1
if not %errorLevel% == 0 (
	echo.===============================================================================
	echo.========               EXECUTE O BAT COMO ADMINISTRADOR                ========
	echo.===============================================================================
	echo.
	goto eof
)
	
rem ====================================================================================================

rem | parametro da versão
:Versao
set /p Versao="INFORME A VERSAO.: Ver-"
if %Versao%.==. goto Versao

echo.

set Versao=Ver-%Versao%

rem ====================================================================================================

echo.[CRIANDO A PASTA DA VERSAO.................]

rem | monta a pasta da versão
set VersaoDir=%DirHome%\%Versao%

rem | apaga se existir e cria a pasta da versão
if exist "%VersaoDir%" rmdir /S /Q "%VersaoDir%" > nul
mkdir "%VersaoDir%" > nul

rem ====================================================================================================

echo.[PARANDO O SQL SERVER......................]

echo Y | net stop %SqlServerService% > nul 2>&1

rem ====================================================================================================

echo.[COMPACTANDO A KB..........................]

"%SevenZip%\7zG.exe" a -tzip -mx0 "%VersaoDir%\KB_%AppNome%_%Versao%_%DataAtual%.zip" "%KbDir%"

rem ====================================================================================================

echo.[INICIANDO O SQL SERVER....................]

echo Y | net start %SqlServerService% > nul 2>&1

rem ====================================================================================================

echo.[COPIANDO A APLICACAO......................]

rem | copia a aplicação
xcopy "%AppDir%" "%VersaoDir%\%AppPasta%\" /E /C /Y /Q > nul

rem | limpa as pastas temporarias
if exist "%VersaoDir%\%AppPasta%\PublicTempStorage" del /Q /F "%VersaoDir%\%AppPasta%\PublicTempStorage\*" > nul
if exist "%VersaoDir%\%AppPasta%\PublicTempStorage\multimedia" del /Q /F "%VersaoDir%\%AppPasta%\PublicTempStorage\multimedia\*" > nul
if exist "%VersaoDir%\%AppPasta%\PrivateTempStorage" del /Q /F "%VersaoDir%\%AppPasta%\PrivateTempStorage\*" > nul
if exist "%VersaoDir%\%AppPasta%\WEB-INF\PrivateTempStorage" del /Q /F "%VersaoDir%\%AppPasta%\WEB-INF\PrivateTempStorage\*" > nul

rem ====================================================================================================

echo.[COMPACTANDO A APLICACAO......................]

rem | compacta a aplicação full
"%SevenZip%\7zG.exe" a -tzip "%VersaoDir%\APL_%AppNome%_%Versao%_%DataAtual%.zip" "%VersaoDir%\%AppPasta%"

rem ====================================================================================================

echo.[LIMPANDO OS ARQUIVOS TEMPORARIOS..........]

rem | apaga a pasta temporária com a aplicação
if exist "%VersaoDir%\%AppPasta%" rmdir /S /Q "%VersaoDir%\%AppPasta%" > nul

echo.[PROCESSO FINALIZADO.......................]
echo.

rem ====================================================================================================

:eof

pause
