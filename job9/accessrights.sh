if ! grep -q '^User:' /etc/group; then
  sudo groupadd User
echo "le groupe a ete cree"
fi

if ! grep -q '^Admin:' /etc/group; then
  sudo groupadd Admin
echo "le group a ete cree"
fi

fichier_csv="Shell_Userlist.csv"

if [ ! -f "$fichier_csv" ]; then
