QTPRC=`ps -fe | grep prontoveroedi | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/pronto_roboveroedi.lock ]
   then
      rm -f /mnt/home1/sistema/logs/pronto_roboveroedi.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/pronto_roboveroedi.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/pronto_roboveroedi.lock

cd /opt/apache-tomcat-7.0.109/webapps/pronto/WEB-INF/classes

#Rotina de importacao EDI da VERO
/opt/jdk1.8.0_291/bin/java -Dprocess="prontoveroedi" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: ptrn0800 >> /mnt/home1/sistema/logs/pronto_roboveroedi.txt
/opt/jdk1.8.0_291/bin/java -Dprocess="prontoveroedi" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: ptrn0810 >> /mnt/home1/sistema/logs/pronto_roboveroedi.txt

if [ -f /mnt/home1/sistema/logs/pronto_roboveroedi.lock ]
then
  rm -f /mnt/home1/sistema/logs/pronto_roboveroedi.lock
fi
