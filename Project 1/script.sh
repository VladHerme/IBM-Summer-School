#!/bin/bash

# Crearea fisierelor in folderul Financials

	touch ~/Desktop/Financials/money.txt
	touch ~/Desktop/Financials/name.txt
	touch ~/Desktop/Financials/car.txt

# Extragerea si salvarea valorilor in fiecare fisier

	awk '{ print $1 }' ~/Desktop/NAS_IN/banking_data.txt > ~/Desktop/Financials/money.txt
	awk '{ print $2, $3 }' ~/Desktop/NAS_IN/banking_data.txt > ~/Desktop/Financials/name.txt
	awk '{ print $4 }' ~/Desktop/NAS_IN/banking_data.txt > ~/Desktop/Financials/car.txt

# Crearea folderului de backupp si copierea fisierelor cu nume modificate

	mkdir ~/Desktop/Financials/backup
	cp ~/Desktop/Financials/money.txt ~/Desktop/Financials/backup/m.txt
	cp ~/Desktop/Financials/name.txt ~/Desktop/Financials/backup/n.txt
	cp ~/Desktop/Financials/car.txt ~/Desktop/Financials/backup/c.txt

# Printarea continutul fiecarui fisier din folderul backup

	cat ~/Desktop/Financials/backup/m.txt
	cat ~/Desktop/Financials/backup/n.txt
	cat ~/Desktop/Financials/backup/c.txt
