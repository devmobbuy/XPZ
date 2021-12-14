JAVAEXEC="/opt/java/jdk1.8.0_291/bin/java"

QTPRC=`ps -fe | grep credpagsoftwareexpress | wc -l`
if [ "${QTPRC1:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/credpag_softwareexpress.lock ]
   then
      rm -f /mnt/home1/sistema/logs/credpag_softwareexpress.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/credpag_softwareexpress.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/credpag_softwareexpress.lock

cd /opt/docker/volumes/pronto_7/webapps/pronto/WEB-INF/classes

$JAVAEXEC -Dprocess="credpagsoftwareexpress" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0500 

$JAVAEXEC -Dprocess="credpagsoftwareexpress" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0220

$JAVAEXEC -Dprocess="credpagsoftwareexpress" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0208

if [ -f /mnt/home1/sistema/logs/credpag_softwareexpress.lock ]
then
  rm -f /mnt/home1/sistema/logs/credpag_softwareexpress.lock
fi
