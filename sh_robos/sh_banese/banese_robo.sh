TASK="banese_robo"
PATHCLASSES="/opt/apache-tomcat-7.0.109/webapps/banese/WEB-INF/classes"
PATHJAVA="/opt/jdk1.8.0_291/bin/java"

QTPRC=`ps -fe | grep baneserobo | wc -l`

if [ "${QTPRC:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/$TASK.lock ]
   then
      rm -f /mnt/home1/sistema/logs/$TASK.lock
   fi

fi

date >> /mnt/home1/sistema/logs/$TASK.lock

cd $PATHCLASSES

echo "INICIANDO ROBO_BANESE.sh " >> /mnt/home1/sistema/logs/robo_banese.txt

date >> /mnt/home1/sistema/logs/robo_banese.txt

$PATHJAVA -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: ptrn0090 >> /mnt/home1/sistema/logs/robo_banese.txt

date >> /mnt/home1/sistema/logs/robo_banese.txt

$PATHJAVA -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: parb0099 >> /mnt/home1/sistema/logs/robo_banese.txt

date >> /mnt/home1/sistema/logs/robo_banese.txt

$PATHJAVA -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: parb0098 >> /mnt/home1/sistema/logs/robo_banese.txt

# A ROTINA ABAIXO FAZ O TRAVA DE REEMBOLSO AUTOMOMATICO QDO ESTAB TEM MAIS DE 3 REJEICOES NO DIA

date >> /mnt/home1/sistema/logs/robo_banese.txt

$PATHJAVA -Dprocess="baneserobo" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: parb0097 >> /mnt/home1/sistema/logs/robo_banese.txt

echo "ACABOU ... " >> /mnt/home1/sistema/logs/robo_banese.txt

date >> /mnt/home1/sistema/logs/robo_banese.txt

echo "==============================================" >> /mnt/home1/sistema/logs/robo_banese.txt

if [ -f /mnt/home1/sistema/logs/$TASK.lock ]
then
  rm -f /mnt/home1/sistema/logs/$TASK.lock
fi
