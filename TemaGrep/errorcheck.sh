#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Eroare: nu avem calea catre fisier."
	exit 1
fi

log="$1"

if [ ! -f "$log" ]; then
	echo "Eroare: Nu s-a gasit log file-ul."
	exit 1
fi

errors=$(grep -c "ERROR" "$log")

if [ "$errors" -gt 0 ]; then
	echo "S-au gasit erori in fisierul log $log"
	echo "Numarul erorilor gasite: $errors"
else 
	echo "Nu au fost gasite erori in fisierul log $log"
fi
