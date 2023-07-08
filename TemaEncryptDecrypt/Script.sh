#!/bin/bash

# Criptarea fișierului folosind AES-256 în modul ECB, cu adăugarea de salt și derivate de cheie PBKDF2:

openssl enc -aes-256-ecb -salt -pbkdf2 -in fisier.txt -out fisier.enc -k "Cerberus"

# Mutarea fișierului criptat în altă locație:

mv fisier.enc decryptingFolder/fisier.enc

# Decriptarea fișierului folosind AES-256 în modul ECB, cu adăugarea de salt și derivate de cheie PBKDF2:

openssl enc -d -aes-256-ecb -pbkdf2 -in decryptingFolder/fisier.enc -out decryptingFolder/fisier.txt -k "Cerberus"

# Afișarea conținutului fișierului criptat:

echo -e  "Fisier criptat:\n"

cat decryptingFolder/fisier.enc

# Afișarea conținutului fișierului decriptat:

echo -e "\n\nFisier decriptat:\n"

cat  decryptingFolder/fisier.txt
