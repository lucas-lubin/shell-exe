#!/bin/bash

# Remplacez 'nom_utilisateur' par le nom de l'utilisateur que vous souhaitez surveiller
utilisateur="shu"

# Utilisation de la commande 'grep' pour filtrer les lignes de connexion de l'utilisateur
nombre_connexions=$(grep -c "sshd.*Accepted.*$utilisateur" /var/log/auth.log)

# Afficher le nombre de connexions
echo "L'utilisateur $utilisateur s'est connecté $nombre_connexions fois à la VM Linux."
