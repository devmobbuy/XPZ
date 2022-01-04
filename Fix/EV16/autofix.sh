#!/bin/bash
#ToDo: Parametrizar as aplicações.
#ToDo: Testar usar a mesma var de 'resposta'.
#ToDo: usar unzip -o (overwrite).

caminhoFix=/home/joseluiz/fix/fix9/autofix.zip

clear
echo "Maravilha, é hora de atualizar o FIX!"
echo ""
echo "Você tem CERTEZA que o arquivo $caminhoFix possui a pasta WEB-INF e/ou static logo no primeiro nível?"
echo "Abra o zip se estiver na dúvida! Isso é importante pra não descompactar a aplicação no local errado."
echo ""
echo "Podemos continuar? [s/n]:"
read resposta

if echo "$resposta" | grep -iq "^s" ;then
	if (unzip -l $caminhoFix | grep -q " WEB-INF") || (unzip -l $caminhoFix | grep -q " static"); then

		echo ""
		echo "Qual cliente deseja atualizar?"
		echo "00 = TODOS"
		echo "01 = credinov"
		echo "02 = bemfacil"
		echo "03 = credpag"
		echo "04 = pronto"
		echo "05 = smartpagamentos"
	
		read respostaT
		
		if (echo "$respostaT" | grep -iq "^01$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup credinov"												
			cp -fR /opt/apache-tomcat-9.0.46/webapps/credinovev15/ /opt/apache-tomcat-9.0.46/Backup/			
			echo "Atualizando credinov"
			unzip $caminhoFix -d /opt/apache-tomcat-9.0.46/webapps/credinovev15/	

			#sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/credinovev15
		
		fi

		if (echo "$respostaT" | grep -iq "^02$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup bemfacil"
			cp -fR /opt/apache-tomcat-9.0.46/webapps/bemfacilev15/ /opt/apache-tomcat-9.0.46/Backup/
			echo "Atualizando bemfacil"
			unzip $caminhoFix -d /opt/apache-tomcat-9.0.46/webapps/bemfacilev15/
			
			#sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/bemfacilev15
		fi
		
		if (echo "$respostaT" | grep -iq "^03$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup credpag"			
			cp -fR /opt/apache-tomcat-9.0.46/webapps/credpagev15/ /opt/apache-tomcat-9.0.46/Backup/
			echo "Atualizando credpag"
			unzip $caminhoFix -d /opt/apache-tomcat-9.0.46/webapps/credpagev15/
			
			#sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/credpagev15
		fi
		
		if (echo "$respostaT" | grep -iq "^04$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup pronto"			
			cp -fR /opt/apache-tomcat-9.0.46/webapps/prontoev15/ /opt/apache-tomcat-9.0.46/Backup/
			echo "Atualizando pronto"
			unzip $caminhoFix -d /opt/apache-tomcat-9.0.46/webapps/prontoev15/
			
			#sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/prontoev15
		fi
				
		if (echo "$respostaT" | grep -iq "^05$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup smartpagamentos"			
			cp -fR /opt/apache-tomcat-9.0.46/webapps/smartpagamentosev15/ /opt/apache-tomcat-9.0.46/Backup/
			echo "Atualizando smartpagamentos"
			unzip $caminhoFix -d /opt/apache-tomcat-9.0.46/webapps/smartpagamentosev15/
			
			#sudo curl -u admin:MobPwd@12345 http://localhost:8089/manager/text/reload?path=/smartpagamentosev15
		fi			
		
		echo ""
		echo ""
		echo "Certo, não há mais o que fazer por enquanto."
		echo "Até mais!"
		exit
		
	else
		echo ""
		echo "Opa, não encontrei a pasta WEB-INF ou static na raiz do arquivo $caminhoFix."
		echo "Não fizemos nada por enquanto. Até mais!"
		exit
	fi
else
	echo "Certo, não fizemos nada por enquanto."
	echo "Até mais!"
	exit
fi
