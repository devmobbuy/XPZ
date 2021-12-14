QTPRC=`ps -fe | grep baneseredecaptura | wc -l`
echo $QTPRC
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/banese_redecaptura.lock ]
   then
      rm -f /mnt/home1/sistema/logs/banese_redecaptura.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/banese_redecaptura.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/banese_redecaptura.lock

cd /opt/apache-tomcat-7.0.109/webapps/banese/WEB-INF/classes

echo "INICIANDO banese_redecaptura.sh " >> /mnt/home1/sistema/logs/banese_redecaptura.txt

date >> /mnt/home1/sistema/logs/banese_redecaptura.txt

/opt/jdk1.8.0_291/bin/java -Dprocess="baneseredecaptura"  -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0600 >> /mnt/home1/sistema/logs/banese_redecaptura.txt

date >> /mnt/home1/sistema/logs/banese_redecaptura.txt

echo "ACABOU banese_redecaptura.sh " >> /mnt/home1/sistema/logs/banese_redecaptura.txt

date >> /mnt/home1/sistema/logs/banese_redecaptura.txt

echo "==============================================" >> /mnt/home1/sistema/logs/banese_redecaptura.txt

if [ -f /mnt/home1/sistema/logs/banese_redecaptura.lock ]
then
  rm -f /mnt/home1/sistema/logs/banese_redecaptura.lock
fi
