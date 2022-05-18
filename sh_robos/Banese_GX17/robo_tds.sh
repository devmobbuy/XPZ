QTPRC=`ps -fe | grep baneserobo | wc -l`
if [ "${QTPRC1:-0}" -gt "1" ]
then
   exit
else
   if [ -f /mnt/home1/sistema/logs/banese_robotds.lock ]
   then
      rm -f /mnt/home1/sistema/logs/banese_robotds.lock
   fi
fi

if [ -f /mnt/home1/sistema/logs/banese_robotds.lock ]
then
   exit
fi

date >> /mnt/home1/sistema/logs/banese_robotds.lock

SERVER=200.198.75.242
#SERVER=200.174.54.18
#SERVER=177.69.107.225

DIRETORIO_TDS=/SubAdquirencia/012/tds/vendas/
DIRETORIO_TMP=$DIRETORIO_TDS+"tmp"
DIRETORIO_REMOTE=$DIRETORIO_TDS"remote/"
DIRETORIO_PROCESSADOS=$DIRETORIO_TDS"processados/"
DIRETORIO_GX=/opt/apache-tomcat-9.0.46/webapps/banese-v17up8/WEB-INF/classes/

deletar_arquivo_no_ftp(){ 
        ftp -i -n $SERVER <<END_SCRIPT
        quote user inforcard
        quote PASS Inf0card0801
        mdelete $ARQ_DELECAO
pass
mdelete $ARQ_DELECAO
        bye
END_SCRIPT
}
deletar_arquivo_local(){ 
        #cp $DIRETORIO/local/historico/$ARQ_DELECAO $DIRETORIO/local/historico/fin/$ARQ_DELECAO  
	echo $ARQ_DELECAO
        if [ -e $DIRETORIO_PROCESSADOS$ARQ_DELECAO ] ; then
                rm -f $DIRETORIO_REMOTE$ARQ_DELECAO
                deletar_arquivo_no_ftp
        fi
}


cd $DIRETORIO_REMOTE ; wget --user=inforcard --password=Inf0card0801  --no-clobber ftp://200.198.75.242/FTPINFO*
sudo chmod 777 -R $DIRETORIO_REMOTE  
rm -rf /SubAdquirencia/012/tds/vendas/remote/arquivos.txt    ; ls -l $DIRETORIO_REMOTE             | grep FTPINFO | awk '{print $9}' > /SubAdquirencia/012/tds/vendas/remote/arquivos.txt
rm -rf /SubAdquirencia/012/tds/vendas/remote/processados.txt ; ls -l $DIRETORIO_PROCESSADOS        | grep FTPINFO | awk '{print $9}' > /SubAdquirencia/012/tds/vendas/remote/processados.txt
rm -rf /SubAdquirencia/012/tds/vendas/remote/novos.txt ; cat /SubAdquirencia/012/tds/vendas/remote/arquivos.txt | grep -v -f /SubAdquirencia/012/tds/vendas/remote/processados.txt > /SubAdquirencia/012/tds/vendas/remote/novos.txt
sudo chmod 777 -R $DIRETORIO_PROCESSADOS

cd $DIRETORIO_GX
/opt/jdk1.8.0_291/bin/java -Dprocess="baneserobo" -classpath ../lib/activation-1.1.jar:../lib/annotations-api.jar:../lib/asm-3.1.jar:../lib/bcpkix-jdk15on-1.69.jar:../lib/bcprov-jdk15on-1.69.jar:../lib/bcutil-jdk15on-1.69.jar:../lib/commons-codec-1.9.jar:../lib/commons-collections4-4.1.jar:../lib/commons-compress-1.21.jar:../lib/commons-fileupload-1.2.1.jar:../lib/commons-fileupload-1.3.3.jar:../lib/commons-io-1.4.jar:../lib/commons-io-2.2.jar:../lib/commons-lang-2.6.jar:../lib/commons-logging-1.0.4.jar:../lib/commons-math3-3.6.1.jar:../lib/commons-net-3.3.jar:../lib/compiler-0.9.7.jar:../lib/curvesapi-1.06.jar:../lib/encoder-1.2.2.jar:../lib/encoder-jsp-1.2.2.jar:../lib/GeneXus.jar:../lib/gmbal-api-only-3.1.0-b001.jar:../lib/grpc-all-1.29.0.jar:../lib/grpc-api-1.29.0.jar:../lib/grpc-core-1.29.0.jar:../lib/grpc-protobuf-1.29.0.jar:../lib/grpc-services-1.29.0.jar:../lib/grpc-stub-1.29.0.jar:../lib/guava-30.1-jre.jar:../lib/gxclassR.jar:../lib/gxcommon.jar:../lib/gxcryptocommon.jar:../lib/gxexternalproviders.jar:../lib/gxgeospatial.jar:../lib/gxmail.jar:../lib/gxmaps.jar:../lib/gxoffice.jar:../lib/gxsearch.jar:../lib/gxwebsocket.jar:../lib/gxwrappercommon.jar:../lib/gxwrapperjavax.jar:../lib/ha-api-3.1.12.jar:../lib/hk2-api-2.6.1.jar:../lib/hk2-locator-2.6.1.jar:../lib/hk2-utils-2.6.1.jar:../lib/httpclient-4.5.13.jar:../lib/httpcore-4.4.13.jar:../lib/itext-2.1.7.jar:../lib/iTextAsian.jar:../lib/jackson-annotations-2.12.5.jar:../lib/jackson-core-2.12.5.jar:../lib/jackson-databind-2.12.5.jar:../lib/jackson-jaxrs-base-2.12.5.jar:../lib/jackson-jaxrs-json-provider-2.12.5.jar:../lib/jackson-module-jaxb-annotations-2.12.5.jar:../lib/javapns.jar:../lib/javax.inject-2.4.0-b34.jar:../lib/javax.jms-3.1.2.2.jar:../lib/javax.mail-1.6.2.jar:../lib/javax.ws.rs-api-2.1.jar:../lib/jaxb-api-2.3.1.jar:../lib/jaxb-core-2.3.0.jar:../lib/jaxb-impl-2.3.1.jar:../lib/jaxws-api-2.3.1.jar:../lib/jaxws-rt-2.3.1.jar:../lib/jersey-client-2.34.jar:../lib/jersey-common-2.34.jar:../lib/jersey-container-servlet-core-2.34.jar:../lib/jersey-entity-filtering-2.34.jar:../lib/jersey-hk2-2.34.jar:../lib/jersey-media-json-jackson-2.34.jar:../lib/jersey-server-2.34.jar:../lib/joda-time-2.10.4.jar:../lib/json-20180813.jar:../lib/JsonJava.jar:../lib/jt400.jar:../lib/jtds-1.2.jar:../lib/jts-1.14.jar:../lib/jtsio-1.14.jar:../lib/log4j-1.2-api-2.17.1.jar:../lib/log4j-api-2.17.1.jar:../lib/log4j-core-2.17.1.jar:../lib/lucene-core-2.2.0.jar:../lib/lucene-highlighter-2.2.0.jar:../lib/lucene-spellchecker-2.2.0.jar:../lib/management-api-3.2.1.jar:../lib/mysql-connector-java-5.1.49.jar:../lib/noggit-0.5.jar:../lib/ojdbc8.jar:../lib/poi-4.1.2.jar:../lib/poi-ooxml-4.1.2.jar:../lib/poi-ooxml-schemas-4.1.2.jar:../lib/poi-scratchpad-4.1.2.jar:../lib/policy-2.7.5.jar:../lib/postgresql-42.2.14.jar:../lib/resolver-20050927.jar:../lib/saaj-api-1.3.5.jar:../lib/saaj-impl-1.5.0.jar:../lib/SecurityAPICommons.jar:../lib/SecurityAPICommons-17.8.0.jar:../lib/serializer-2.7.2.jar:../lib/simple-xml-2.7.1.jar:../lib/slf4j-api-1.7.32.jar:../lib/slf4j-nop-1.7.7.jar:../lib/SparseBitSet-1.2.jar:../lib/spatial4j-0.6.jar:../lib/sqlitejdbc-v056.jar:../lib/stax-ex-1.8.jar:../lib/streambuffer-1.5.6.jar:../lib/Tidy.jar:../lib/upload.jar:../lib/validation-api-1.1.0.Final.jar:../lib/wss4j-1.6.19.jar:../lib/xalan-2.7.2.jar:../lib/xercesImpl-2.12.0.jar:../lib/xml-apis-1.4.01.jar:../lib/xmlbeans-3.1.0.jar:../lib/xmlsec-2.2.3.jar:.: van0300
/opt/jdk1.8.0_291/bin/java -Dprocess="baneserobo" -classpath ../lib/activation-1.1.jar:../lib/annotations-api.jar:../lib/asm-3.1.jar:../lib/bcpkix-jdk15on-1.69.jar:../lib/bcprov-jdk15on-1.69.jar:../lib/bcutil-jdk15on-1.69.jar:../lib/commons-codec-1.9.jar:../lib/commons-collections4-4.1.jar:../lib/commons-compress-1.21.jar:../lib/commons-fileupload-1.2.1.jar:../lib/commons-fileupload-1.3.3.jar:../lib/commons-io-1.4.jar:../lib/commons-io-2.2.jar:../lib/commons-lang-2.6.jar:../lib/commons-logging-1.0.4.jar:../lib/commons-math3-3.6.1.jar:../lib/commons-net-3.3.jar:../lib/compiler-0.9.7.jar:../lib/curvesapi-1.06.jar:../lib/encoder-1.2.2.jar:../lib/encoder-jsp-1.2.2.jar:../lib/GeneXus.jar:../lib/gmbal-api-only-3.1.0-b001.jar:../lib/grpc-all-1.29.0.jar:../lib/grpc-api-1.29.0.jar:../lib/grpc-core-1.29.0.jar:../lib/grpc-protobuf-1.29.0.jar:../lib/grpc-services-1.29.0.jar:../lib/grpc-stub-1.29.0.jar:../lib/guava-30.1-jre.jar:../lib/gxclassR.jar:../lib/gxcommon.jar:../lib/gxcryptocommon.jar:../lib/gxexternalproviders.jar:../lib/gxgeospatial.jar:../lib/gxmail.jar:../lib/gxmaps.jar:../lib/gxoffice.jar:../lib/gxsearch.jar:../lib/gxwebsocket.jar:../lib/gxwrappercommon.jar:../lib/gxwrapperjavax.jar:../lib/ha-api-3.1.12.jar:../lib/hk2-api-2.6.1.jar:../lib/hk2-locator-2.6.1.jar:../lib/hk2-utils-2.6.1.jar:../lib/httpclient-4.5.13.jar:../lib/httpcore-4.4.13.jar:../lib/itext-2.1.7.jar:../lib/iTextAsian.jar:../lib/jackson-annotations-2.12.5.jar:../lib/jackson-core-2.12.5.jar:../lib/jackson-databind-2.12.5.jar:../lib/jackson-jaxrs-base-2.12.5.jar:../lib/jackson-jaxrs-json-provider-2.12.5.jar:../lib/jackson-module-jaxb-annotations-2.12.5.jar:../lib/javapns.jar:../lib/javax.inject-2.4.0-b34.jar:../lib/javax.jms-3.1.2.2.jar:../lib/javax.mail-1.6.2.jar:../lib/javax.ws.rs-api-2.1.jar:../lib/jaxb-api-2.3.1.jar:../lib/jaxb-core-2.3.0.jar:../lib/jaxb-impl-2.3.1.jar:../lib/jaxws-api-2.3.1.jar:../lib/jaxws-rt-2.3.1.jar:../lib/jersey-client-2.34.jar:../lib/jersey-common-2.34.jar:../lib/jersey-container-servlet-core-2.34.jar:../lib/jersey-entity-filtering-2.34.jar:../lib/jersey-hk2-2.34.jar:../lib/jersey-media-json-jackson-2.34.jar:../lib/jersey-server-2.34.jar:../lib/joda-time-2.10.4.jar:../lib/json-20180813.jar:../lib/JsonJava.jar:../lib/jt400.jar:../lib/jtds-1.2.jar:../lib/jts-1.14.jar:../lib/jtsio-1.14.jar:../lib/log4j-1.2-api-2.17.1.jar:../lib/log4j-api-2.17.1.jar:../lib/log4j-core-2.17.1.jar:../lib/lucene-core-2.2.0.jar:../lib/lucene-highlighter-2.2.0.jar:../lib/lucene-spellchecker-2.2.0.jar:../lib/management-api-3.2.1.jar:../lib/mysql-connector-java-5.1.49.jar:../lib/noggit-0.5.jar:../lib/ojdbc8.jar:../lib/poi-4.1.2.jar:../lib/poi-ooxml-4.1.2.jar:../lib/poi-ooxml-schemas-4.1.2.jar:../lib/poi-scratchpad-4.1.2.jar:../lib/policy-2.7.5.jar:../lib/postgresql-42.2.14.jar:../lib/resolver-20050927.jar:../lib/saaj-api-1.3.5.jar:../lib/saaj-impl-1.5.0.jar:../lib/SecurityAPICommons.jar:../lib/SecurityAPICommons-17.8.0.jar:../lib/serializer-2.7.2.jar:../lib/simple-xml-2.7.1.jar:../lib/slf4j-api-1.7.32.jar:../lib/slf4j-nop-1.7.7.jar:../lib/SparseBitSet-1.2.jar:../lib/spatial4j-0.6.jar:../lib/sqlitejdbc-v056.jar:../lib/stax-ex-1.8.jar:../lib/streambuffer-1.5.6.jar:../lib/Tidy.jar:../lib/upload.jar:../lib/validation-api-1.1.0.Final.jar:../lib/wss4j-1.6.19.jar:../lib/xalan-2.7.2.jar:../lib/xercesImpl-2.12.0.jar:../lib/xml-apis-1.4.01.jar:../lib/xmlbeans-3.1.0.jar:../lib/xmlsec-2.2.3.jar:.: van0220
/opt/jdk1.8.0_291/bin/java -Dprocess="baneserobo" -classpath ../lib/activation-1.1.jar:../lib/annotations-api.jar:../lib/asm-3.1.jar:../lib/bcpkix-jdk15on-1.69.jar:../lib/bcprov-jdk15on-1.69.jar:../lib/bcutil-jdk15on-1.69.jar:../lib/commons-codec-1.9.jar:../lib/commons-collections4-4.1.jar:../lib/commons-compress-1.21.jar:../lib/commons-fileupload-1.2.1.jar:../lib/commons-fileupload-1.3.3.jar:../lib/commons-io-1.4.jar:../lib/commons-io-2.2.jar:../lib/commons-lang-2.6.jar:../lib/commons-logging-1.0.4.jar:../lib/commons-math3-3.6.1.jar:../lib/commons-net-3.3.jar:../lib/compiler-0.9.7.jar:../lib/curvesapi-1.06.jar:../lib/encoder-1.2.2.jar:../lib/encoder-jsp-1.2.2.jar:../lib/GeneXus.jar:../lib/gmbal-api-only-3.1.0-b001.jar:../lib/grpc-all-1.29.0.jar:../lib/grpc-api-1.29.0.jar:../lib/grpc-core-1.29.0.jar:../lib/grpc-protobuf-1.29.0.jar:../lib/grpc-services-1.29.0.jar:../lib/grpc-stub-1.29.0.jar:../lib/guava-30.1-jre.jar:../lib/gxclassR.jar:../lib/gxcommon.jar:../lib/gxcryptocommon.jar:../lib/gxexternalproviders.jar:../lib/gxgeospatial.jar:../lib/gxmail.jar:../lib/gxmaps.jar:../lib/gxoffice.jar:../lib/gxsearch.jar:../lib/gxwebsocket.jar:../lib/gxwrappercommon.jar:../lib/gxwrapperjavax.jar:../lib/ha-api-3.1.12.jar:../lib/hk2-api-2.6.1.jar:../lib/hk2-locator-2.6.1.jar:../lib/hk2-utils-2.6.1.jar:../lib/httpclient-4.5.13.jar:../lib/httpcore-4.4.13.jar:../lib/itext-2.1.7.jar:../lib/iTextAsian.jar:../lib/jackson-annotations-2.12.5.jar:../lib/jackson-core-2.12.5.jar:../lib/jackson-databind-2.12.5.jar:../lib/jackson-jaxrs-base-2.12.5.jar:../lib/jackson-jaxrs-json-provider-2.12.5.jar:../lib/jackson-module-jaxb-annotations-2.12.5.jar:../lib/javapns.jar:../lib/javax.inject-2.4.0-b34.jar:../lib/javax.jms-3.1.2.2.jar:../lib/javax.mail-1.6.2.jar:../lib/javax.ws.rs-api-2.1.jar:../lib/jaxb-api-2.3.1.jar:../lib/jaxb-core-2.3.0.jar:../lib/jaxb-impl-2.3.1.jar:../lib/jaxws-api-2.3.1.jar:../lib/jaxws-rt-2.3.1.jar:../lib/jersey-client-2.34.jar:../lib/jersey-common-2.34.jar:../lib/jersey-container-servlet-core-2.34.jar:../lib/jersey-entity-filtering-2.34.jar:../lib/jersey-hk2-2.34.jar:../lib/jersey-media-json-jackson-2.34.jar:../lib/jersey-server-2.34.jar:../lib/joda-time-2.10.4.jar:../lib/json-20180813.jar:../lib/JsonJava.jar:../lib/jt400.jar:../lib/jtds-1.2.jar:../lib/jts-1.14.jar:../lib/jtsio-1.14.jar:../lib/log4j-1.2-api-2.17.1.jar:../lib/log4j-api-2.17.1.jar:../lib/log4j-core-2.17.1.jar:../lib/lucene-core-2.2.0.jar:../lib/lucene-highlighter-2.2.0.jar:../lib/lucene-spellchecker-2.2.0.jar:../lib/management-api-3.2.1.jar:../lib/mysql-connector-java-5.1.49.jar:../lib/noggit-0.5.jar:../lib/ojdbc8.jar:../lib/poi-4.1.2.jar:../lib/poi-ooxml-4.1.2.jar:../lib/poi-ooxml-schemas-4.1.2.jar:../lib/poi-scratchpad-4.1.2.jar:../lib/policy-2.7.5.jar:../lib/postgresql-42.2.14.jar:../lib/resolver-20050927.jar:../lib/saaj-api-1.3.5.jar:../lib/saaj-impl-1.5.0.jar:../lib/SecurityAPICommons.jar:../lib/SecurityAPICommons-17.8.0.jar:../lib/serializer-2.7.2.jar:../lib/simple-xml-2.7.1.jar:../lib/slf4j-api-1.7.32.jar:../lib/slf4j-nop-1.7.7.jar:../lib/SparseBitSet-1.2.jar:../lib/spatial4j-0.6.jar:../lib/sqlitejdbc-v056.jar:../lib/stax-ex-1.8.jar:../lib/streambuffer-1.5.6.jar:../lib/Tidy.jar:../lib/upload.jar:../lib/validation-api-1.1.0.Final.jar:../lib/wss4j-1.6.19.jar:../lib/xalan-2.7.2.jar:../lib/xercesImpl-2.12.0.jar:../lib/xml-apis-1.4.01.jar:../lib/xmlbeans-3.1.0.jar:../lib/xmlsec-2.2.3.jar:.: ptrn0140



#DELECAO DOS ARQUIVOS JA PROCESSADOS (tanto na infocards quanto no ftp da tds)
for ARQ_DELECAO in $(ls -lav $DIRETORIO_REMOTE | grep --invert-match ^d |awk '{print $9}');do echo $ARQ_DELECAO;deletar_arquivo_local;done;

if [ -f /mnt/home1/sistema/logs/banese_robotds.lock ]
then
  rm -f /mnt/home1/sistema/logs/banese_robotds.lock
fi

