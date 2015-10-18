# CREADO POR RodrigoC.
# Suvido el 18/10/2015
# Probado en android "SONY XPERYA"
#
clear
echo "






"
echo "          [*] RES_WIFI... "
echo "          [*] Creador: Rodrigocanaza. "
echo "          [*] FB : www.fb.com/RodrigoAlonzoWar"
echo "

"

id | grep "root" >/dev/null 2>&1
if [ $? != 0 ]; then
  echo "[!]$0 No eres usuario root . "
  echo "Saliendo !"
  exit 1
fi 
if [ "$1" == "r"]; then 
  echo "[+] Iniciando !"
fi
echo "[+] Creando carpeta !"
if [ -d /data/res_wfi/ ]; then
echo "[!] No existe Carpeta saliendo !"
else
  mkdir /data/res_wifi/
  echo "[!] Carpeta Creada !"
fi
if [ -f /data/misc/wifi/wpa_supplicant.conf ]; then
echo "[!] Existe Fichero ! "
cp /data/misc/wifi/wpa_supplicant.conf /data/res_wifi
fi 
grep ssid /data/res_wifi/wpa_supplicant.conf && grep psk /data/res_wifi/wpa_supplicant.conf && grep key_mgmt /data/res_wifi/wpa_supplicant.conf

echo "[!] Realizado ..."
echo "[!] Un saludos a todos, Atte : RodrigoC."
echo "[*] FB : www.fb.com/RodrigoAlonzoWar"
echo "[!] Si tienes algun problema contactame y reporta el problema !"

