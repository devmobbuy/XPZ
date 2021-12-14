QTPRC=`ps -fe | grep baneserobo | wc -l`
if [ "${QTPRC1:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/banese_robotds.lock ]
   then
      rm -f /mnt/home1/sistema/logs/banese_robotds.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/banese_robotds.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/banese_robotds.lock

SERVER=200.198.75.242
#SERVER=200.174.54.18
#SERVER=177.69.107.225

DIRETORIO_TDS=/SubAdquirencia/012/tds/vendas/
DIRETORIO_TMP=$DIRETORIO_TDS+"tmp"
DIRETORIO_REMOTE=$DIRETORIO_TDS"remote/"
DIRETORIO_PROCESSADOS=$DIRETORIO_TDS"processados/"
DIRETORIO_GX=/opt/tomcat/webapps/banese/WEB-INF/classes/

deletar_arquivo_no_ftp(){ 
        ftp -i -n $SERVER <<END_SCRIPT
        quote user inforcard
        quote PASS Inf0card0801
        mdelete $ARQ_DELECAO
pass
mdelete $ARQ_DELECAO
        bye
END_SCRIPT
}
deletar_arquivo_local(){ 
        #cp $DIRETORIO/local/historico/$ARQ_DELECAO $DIRETORIO/local/historico/fin/$ARQ_DELECAO  
	echo $ARQ_DELECAO
        if [ -e $DIRETORIO_PROCESSADOS$ARQ_DELECAO ] ; then
                rm -f $DIRETORIO_REMOTE$ARQ_DELECAO
                deletar_arquivo_no_ftp
        fi
}


cd $DIRETORIO_REMOTE ; wget --user=inforcard --password=Inf0card0801  --no-clobber ftp://200.198.75.242/FTPINFO*
sudo chmod 777 -R $DIRETORIO_REMOTE  
rm -rf /SubAdquirencia/012/tds/vendas/remote/arquivos.txt    ; ls -l $DIRETORIO_REMOTE             | grep FTPINFO | awk '{print $9}' > /SubAdquirencia/012/tds/vendas/remote/arquivos.txt
rm -rf /SubAdquirencia/012/tds/vendas/remote/processados.txt ; ls -l $DIRETORIO_PROCESSADOS        | grep FTPINFO | awk '{print $9}' > /SubAdquirencia/012/tds/vendas/remote/processados.txt
rm -rf /SubAdquirencia/012/tds/vendas/remote/novos.txt ; cat /SubAdquirencia/012/tds/vendas/remote/arquivos.txt | grep -v -f /SubAdquirencia/012/tds/vendas/remote/processados.txt > /SubAdquirencia/012/tds/vendas/remote/novos.txt
sudo chmod 777 -R $DIRETORIO_PROCESSADOS

cd $DIRETORIO_GX
/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/java -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0300
/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/java -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0220
/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/java -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: ptrn0140



#DELECAO DOS ARQUIVOS JA PROCESSADOS (tanto na infocards quanto no ftp da tds)
for ARQ_DELECAO in $(ls -lav $DIRETORIO_REMOTE | grep --invert-match ^d |awk '{print $9}');do echo $ARQ_DELECAO;deletar_arquivo_local;done;

if [ -f /mnt/home1/sistema/logs/banese_robotds.lock ]
then
  rm -f /mnt/home1/sistema/logs/banese_robotds.lock
fi

