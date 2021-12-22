TASK="bemfacil_cerc"
PATHCLASSES="/opt/tomcat/webapps/bemfacil/WEB-INF/classes"
PATHJAVA="/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/java"
TEXTCLASSPATH="-Dprocess="bemfacilcerc" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.:"
PROCESS1="pr_envia_estabelecimentos_cerc"
PROCESS2="pr_envia_recebiveis_cerc"
PROCESS3="pr_consulta_contratos_cerc"

QTPRC=`ps -fe | grep bemfacilcerc | wc -l`
if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/$TASK.lock ]
   then
      rm -f /mnt/home1/sistema/logs/$TASK.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/$TASK.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/$TASK.lock

echo $PATHJAVA $TEXTCLASSPATH $PROCESS3

cd $PATHCLASSES
#$PATHJAVA $TEXTCLASSPATH $PROCESS1 >> /mnt/home1/sistema/logs/$TASK.txt
$PATHJAVA $TEXTCLASSPATH $PROCESS2 "$1" > /mnt/home1/sistema/logs/$TASK.2txt
#$PATHJAVA $TEXTCLASSPATH $PROCESS3 >> /mnt/home1/sistema/logs/$TASK.3txt

if [ -f /mnt/home1/sistema/logs/$TASK.lock ]
then
  rm -f /mnt/home1/sistema/logs/$TASK.lock
fi