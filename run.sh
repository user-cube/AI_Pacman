#!/bin/bash

function menu()
{
	echo "[2] - Run with other options"
    echo "[1] - Run again"
    echo "[0] - Kill Xterms"

    read -p "Opção: " decision
	
	case $decision in
		
		2)
			clear
            killXterm
            options
            run
            menu
			;;
		1)
			clear
            killXterm
            run
            menu
			;;
		0)
            killXterm
            echo "Finished"
			exit
			;;

		*)
			echo "Inválido"
			menu
			;;
			
	esac
}

function options()
{
    read -p "Opções do servidor: " serverOpts
    echo "--scale 2 Para os ecrãs que não suportam o viewer na versão normal"
    read -p "Opções viewer: " viewerOpts
    read -p "Versão do client: " cliVersion
}

function run()
{
    source venv/bin/activate &&
        xterm -T "Server" -hold -e "source venv/bin/activate && python server.py $serverOpts" &
        sleep 1
        xterm -T "Viewer" -hold -e "source venv/bin/activate && python viewer.py $viewerOpts" &
        sleep 1
        xterm -T "Client" -hold -e "source venv/bin/activate && python $cliVersion" &
        sleep 1
}

function killXterm()
{
    killall xterm 
}

trap "killXterm ; exit 0" SIGINT

options
run
menu
