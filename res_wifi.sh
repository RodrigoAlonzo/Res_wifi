# CREADO POR RodrigoC.
# Suvido el 18/10/2015
# Update 29/10/2015
# Fix line [25] missing :P
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
if [ "$1" == "r" ]; then 
  echo "[+] Iniciando !"
fi
if [ -d /data/res_wfi/ ]; then
echo "[!] Carpeta existe !"
else
  echo "[+] Creando carpeta !"
  mkdir /data/res_wifi/
  echo "[!] Carpeta Creada !"
fi
if [ -f /data/misc/wifi/wpa_supplicant.conf ]; then
echo "[!] Existe Fichero ! "
cp /data/misc/wifi/wpa_supplicant.conf /data/res_wifi
else 
  echo "[!] No se encontro fichero ! "
fi 
#grep ssid /data/res_wifi/wpa_supplicant.conf && grep psk /data/res_wifi/wpa_supplicant.conf && grep key_mgmt /data/res_wifi/wpa_supplicant.conf
grep -e ssid -e psk -e key_mgmt /data/misc/wifi/wpa_supplicant.conf
echo "[!] Realizado ..."
echo "[!] Un saludos a todos, Atte : RodrigoC."
echo "[*] FB : www.fb.com/RodrigoAlonzoWar"
echo "[!] Si tienes algun problema contactame y reporta el problema !"

