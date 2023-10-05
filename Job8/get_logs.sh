
utilisateur="shu"

# Utilisation de la commande 'journalctl' pour filtrer les lignes de connexion de l'utilisateur
nombre_connexions=$(journalctl | grep -c "Accepted.*$utilisateur")

# Chemin du répertoire de sauvegarde
backup_dir="~/Job8:Backup/"

# Nom du fichier de sortie
output_file="${backup_dir}number_connection-$(date +'%d-%m-%Y-%H:%M').txt"

# Création du fichier de sortie avec le nombre de connexions
echo "$nombre_connexions" > "$output_file"

# Archivage du fichier de sortie dans un fichier tar
tar -cvf "${output_file}.tar" "$output_file"

# Déplacement du fichier tar dans le répertoire de sauvegarde
mv "${output_file}.tar" "$backup_dir"

# Affichage du chemin du fichier archivé
echo "Le fichier $output_file.tar a été créé et déplacé dans $backup_dir."
