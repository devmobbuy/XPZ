QTPRC=`ps -fe | grep smartpagamentosemail | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/smartpagamentos_email.lock ]
   then
      rm -f /mnt/home1/sistema/logs/smartpagamentos_email.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/smartpagamentos_email.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/smartpagamentos_email.lock

echo "INICIANDO smartpagamentos_email.sh " >> /mnt/home1/sistema/logs/smartpagamentos_email.txt

cd /opt/apache-tomcat-7.0.109/webapps/smartpagamentos/WEB-INF/classes

/opt/jdk1.8.0_291/bin/java -Dprocess="smartpagamentosemail" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: mpl0100 >> /mnt/home1/sistema/logs/smartpagamentos_email.txt

echo "ENCERROU smartpagamentos_email.sh " >> /mnt/home1/sistema/logs/smartpagamentos_email.txt

if [ -f /mnt/home1/sistema/logs/smartpagamentos_email.lock ]
then
  rm -f /mnt/home1/sistema/logs/smartpagamentos_email.lock
fi
