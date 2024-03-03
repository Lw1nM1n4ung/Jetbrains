read -p "Enter Zip Password: " 	ZIP
read -p "Enter GPG Password: " GPG
gpg --decrypt --passphrase "$GPG" jetbrain.zip.gpg > jetbrain.zip
7z x ./jetbrain.zip -P$ZIP
rm -rf jetbrain.zip

