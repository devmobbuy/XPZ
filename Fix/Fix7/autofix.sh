#!/bin/bash
#ToDo: Parametrizar as aplicações.
#ToDo: Testar usar a mesma var de 'resposta'.
#ToDo: usar unzip -o (overwrite).

caminhoFix=/home/wcandida/fix/fix7/autofix.zip

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
		echo "01 = banese"
		echo "02 = bemfacil"
		echo "03 = credpag"
		echo "04 = pronto"
		echo "05 = smartpagamentos"
    echo "06 = credpagleia"
    echo "07 = baneseleia"
	
		read respostaT
		
		if (echo "$respostaT" | grep -iq "^01$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup banese"								
			rm -rf  /opt/apache-tomcat-7.0.109/Backup/banese			
			cp -fR /opt/apache-tomcat-7.0.109/webapps/banese/ /opt/apache-tomcat-7.0.109/Backup/			
			echo "Atualizando banese"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/banese/	
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/banese
		fi

		if (echo "$respostaT" | grep -iq "^02$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup bemfacil"
      rm -rf  /opt/apache-tomcat-7.0.109/Backup/bemfacil
			cp -fR /opt/apache-tomcat-7.0.109/webapps/bemfacil/ /opt/apache-tomcat-7.0.109/Backup/
			echo "Atualizando bemfacil"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/bemfacil/
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/bemfacil
		fi
		
		if (echo "$respostaT" | grep -iq "^03$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup credpag"	
      rm -rf  /opt/apache-tomcat-7.0.109/Backup/credpag		
			cp -fR /opt/apache-tomcat-7.0.109/webapps/credpag/ /opt/apache-tomcat-7.0.109/Backup/
			echo "Atualizando credpag"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/credpag/
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/credpag
		fi
		
		if (echo "$respostaT" | grep -iq "^04$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup pronto"		
      rm -rf  /opt/apache-tomcat-7.0.109/Backup/pronto	
			cp -fR /opt/apache-tomcat-7.0.109/webapps/pronto/ /opt/apache-tomcat-7.0.109/Backup/
			echo "Atualizando pronto"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/pronto/
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/pronto
		fi
				
		if (echo "$respostaT" | grep -iq "^05$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup smartpagamentos"	
      rm -rf  /opt/apache-tomcat-7.0.109/Backup/smartpagamentos		
			cp -fR /opt/apache-tomcat-7.0.109/webapps/smartpagamentos/ /opt/apache-tomcat-7.0.109/Backup/
			echo "Atualizando smartpagamentos"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/smartpagamentos/
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/smartpagamentos
		fi		
   
 		if (echo "$respostaT" | grep -iq "^06$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup credpagleia"	
      rm -rf  /opt/apache-tomcat-7.0.109/Backup/credpagleia
			cp -fR /opt/apache-tomcat-7.0.109/webapps/credpagleia/ /opt/apache-tomcat-7.0.109/Backup/
			echo "Atualizando credpag"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/credpagleia/
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/credpagleia
		fi
   
 		  if (echo "$respostaT" | grep -iq "^07$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup baneseleia"	
      rm -rf  /opt/apache-tomcat-7.0.109/Backup/baneseleia
			cp -fR /opt/apache-tomcat-7.0.109/webapps/baneseleia/ /opt/apache-tomcat-7.0.109/Backup/
			echo "Atualizando baneseleia"
			unzip -o $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/baneseleia/ 
			sudo curl -u admin:MobPwd@12345 http://localhost:8087/manager/text/reload?path=/baneseleia
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
