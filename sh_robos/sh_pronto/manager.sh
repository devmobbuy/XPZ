
#cd /usr/libexec/tomcat7/webapps/pronto/WEB-INF/classes
cd /opt/apache-tomcat-7.0.109/webapps/pronto/WEB-INF/classes/

/opt/jdk1.8.0_291/bin/java -Dprocess="prontomanager" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: managergetvolumtrans "$1" "$2"

/opt/jdk1.8.0_291/bin/java -Dprocess="prontomanager" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: importaps

/opt/jdk1.8.0_291/bin/java -Dprocess="prontomanager" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: atualizaprestacao

/opt/jdk1.8.0_291/bin/java -Dprocess="prontomanager" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: statusprestacao

/opt/jdk1.8.0_291/bin/java -Dprocess="prontomanager" -classpath ../lib/commons-lang-2.4.jar:../lib/gxclassR.jar:../lib/Una2000.jar:../lib/iText.jar:../lib:.:../lib/gxclassR.jar:../lib/jtds-1.2.jar:../lib/ojdbc14.jar:.: cancelamentoprestacao