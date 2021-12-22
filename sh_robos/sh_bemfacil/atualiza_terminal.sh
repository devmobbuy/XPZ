QTPRC=`ps -fe | grep atualizaterminal | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.lock ]
   then
      rm -f /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.lock

echo "INICIANDO atualiza_terminal.sh " >> /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.txt

cd /opt/tomcat/webapps/bemfacil/WEB-INF/classes
/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/java -Dprocess="atualizaterminal" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: atualizaidterminal >> /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.txt

echo "ENCERROU atualiza_terminal.sh " >> /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.txt

if [ -f /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.lock ]
then
  rm -f /mnt/home1/sistema/logs/atualiza_terminal_bemfacil.lock
fi
