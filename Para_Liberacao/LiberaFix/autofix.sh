#!/bin/bash
#ToDo: Parametrizar as aplicações.
#ToDo: Testar usar a mesma var de 'resposta'.
#ToDo: usar unzip -o (overwrite).

caminhoFix=/home/joseluiz/autofix.zip

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
	
		read respostaT
		
		if (echo "$respostaT" | grep -iq "^01$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup banese"			
			cp /opt/apache-tomcat-7.0.109/webapps/banese /opt/apache-tomcat-7.0.109/webapps/baneseOLD
			echo "Atualizando banese"
			unzip $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/banese/			
		fi

		if (echo "$respostaT" | grep -iq "^02$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup bemfacil"
			cp /opt/apache-tomcat-7.0.109/webapps/bemfacil /opt/apache-tomcat-7.0.109/webapps/bemfacilOLD
			echo "Atualizando bemfacil"
			unzip $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/bemfacil/
		fi
		
		if (echo "$respostaT" | grep -iq "^03$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup credpag"			
			cp /opt/apache-tomcat-7.0.109/webapps/credpag /opt/apache-tomcat-7.0.109/webapps/credpagOLD
			echo "Atualizando credpag"
			unzip $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/credpag/
		fi
		
		if (echo "$respostaT" | grep -iq "^04$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup pronto"			
			cp /opt/apache-tomcat-7.0.109/webapps/pronto /opt/apache-tomcat-7.0.109/webapps/prontoOLD
			echo "Atualizando pronto"
			unzip $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/pronto/
		fi
				
		if (echo "$respostaT" | grep -iq "^05$") || (echo "$respostaT" | grep -iq "^00$") ;then
			echo ""
			echo "Realizando Backup smartpagamentos"			
			cp /opt/apache-tomcat-7.0.109/webapps/smartpagamentos /opt/apache-tomcat-7.0.109/webapps/smartpagamentosOLD
			echo "Atualizando smartpagamentos"
			unzip $caminhoFix -d /opt/apache-tomcat-7.0.109/webapps/smartpagamentos/
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
