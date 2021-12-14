QTPRC=`ps -fe | grep baneseemail | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/banese_email.lock ]
   then
      rm -f /mnt/home1/sistema/logs/banese_email.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/banese_email.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/banese_email.lock

echo "INICIANDO banese_email.sh " >> /mnt/home1/sistema/logs/banese_email.txt

cd /opt/tomcat/webapps/banese/WEB-INF/classes
/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/java -Dprocess="baneseemail" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: mpl0100 >> /mnt/home1/sistema/logs/banese_email.txt

echo "ENCERROU banese_email.sh " >> /mnt/home1/sistema/logs/banese_email.txt

if [ -f /mnt/home1/sistema/logs/banese_email.lock ]
then
  rm -f /mnt/home1/sistema/logs/banese_email.lock
fi
