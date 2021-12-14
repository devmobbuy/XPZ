cd /opt/tomcat/apache-tomcat-6.0.53/webapps/bemfacil/WEB-INF/classes

d=2020-06-08
while [ "$d" != 2020-06-10 ]; do 
  echo $d
  /usr/java/jdk1.8.0_191/bin/java  -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0500 $d
  /usr/java/jdk1.8.0_191/bin/java  -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0600 $d

  d=$(date -I -d "$d + 1 day")

done

/usr/java/jdk1.8.0_191/bin/java  -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: van0220  
/usr/java/jdk1.8.0_191/bin/java  -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: ptrn0140 

