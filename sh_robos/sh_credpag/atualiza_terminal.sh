QTPRC=`ps -fe | grep atualizaterminal | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/atualiza_terminal.lock ]
   then
      rm -f /mnt/home1/sistema/logs/atualiza_terminal.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/atualiza_terminal.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/atualiza_terminal.lock

echo "INICIANDO atualiza_terminal.sh " >> /mnt/home1/sistema/logs/atualiza_terminal.txt

cd /opt/docker/volumes/pronto_7/webapps/pronto/WEB-INF/classes
/opt/java/jdk1.8.0_291/bin/java -Dprocess="atualizaterminal" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: atualizaidterminal >> /mnt/home1/sistema/logs/atualiza_terminal.txt

echo "ENCERROU atualiza_terminal.sh " >> /mnt/home1/sistema/logs/atualiza_terminal.txt

if [ -f /mnt/home1/sistema/logs/atualiza_terminal.lock ]
then
  rm -f /mnt/home1/sistema/logs/atualiza_terminal.lock
fi