#!/bin/bash
  #Pornire daemon.sh in fundal
  
./daemon.sh &

  # Salvare PID daemon.sh
  
pid=$!

  #Afisare PID
  
echo "Daemon.sh PID: $pid"

  #Crearea choice-ului utilizatorului
  
read -p "Do you want to kill the daemon process (y/n)?" choice

  #Verificarea raspunsului printr-un if
  
if [ "$choice" == "y" ]; then

	  #Se opreste scriptul
   
	kill "$pid"
	echo "daemon.sh was killed"
else 

	  #Nu se executa oprirea si iesim din script
   
	echo "The script was not killed, exiting..."
	exit 0
fi
