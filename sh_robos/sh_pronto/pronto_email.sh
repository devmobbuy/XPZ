QTPRC=`ps -fe | grep prontoemail | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/pronto_email.lock ]
   then
      rm -f /mnt/home1/sistema/logs/pronto_email.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/pronto_email.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/pronto_email.lock

echo "INICIANDO pronto_email.sh " >> /mnt/home1/sistema/logs/pronto_email.txt

cd /opt/docker/volumes/pronto_7/webapps/pronto/WEB-INF/classes

/opt/java/jdk1.8.0_291/bin/java -Dprocess="prontoemail" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: mpl0100 >> /mnt/home1/sistema/logs/pronto_email.txt

echo "ENCERROU pronto_email.sh " >> /mnt/home1/sistema/logs/pronto_email.txt

if [ -f /mnt/home1/sistema/logs/pronto_email.lock ]
then
  rm -f /mnt/home1/sistema/logs/pronto_email.lock
fi
