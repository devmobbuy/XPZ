cd /usr/local/apache-tomcat-6.0.36/webapps/bemfacil/WEB-INF/classes 
echo "===[ INICIO ]==="

/usr/java/jdk1.8.0_191/bin/java  -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: reprocessa_phebus

echo "===[ FIM ]==="
