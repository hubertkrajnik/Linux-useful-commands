#---------------------------------------------------------------------------------------------------------------------------#

# Pakiety w systemie:

rpm -qa # listuje pakiety zainstalowane w systemie

yum list installed # listuje pakiety zainstalowane przez yum

#---------------------------------------------------------------------------------------------------------------------------#

# Informacje o systemie wersji itd.:

hostnamectl

uname -a

neofetch

cat /etc/os-release / # cat /etc/redhat-release

lsb_release -a # informacje o dystrybucji

#---------------------------------------------------------------------------------------------------------------------------#

# Zarządzanie dyskiem:

df -h # wolne miejsce na danych partycjach

lsblk # to samo co wyżej, ale w drzewku i to są bloki dyskowe

fdisk -l # zarządzanie dyskami, guide: https://boredadmin.com/how-to-resize-or-extend-the-root-partition-in-centos/

#---------------------------------------------------------------------------------------------------------------------------#

# Zarządzanie pamięcią RAM i zużyciem zasobów:

free -h # pokazuje ilość pamięci RAM

top # pokazuje do tego procesy

htop

#---------------------------------------------------------------------------------------------------------------------------#

# Zarządzanie procesorem:

lscpu # informacje o procesorze

lshw # hardware systemu

#---------------------------------------------------------------------------------------------------------------------------#

# Sieciowe:

ip a # adres ip

ip r # adres bramy domyślnej

arp -n # wyświetla tablicę arp

route -n # wyświetla tablicę rutingu 

netstat -rn

mtr <host> # bada pośredniczące hosty pomiędzy hostem początkowym, a końcowym https://www.baeldung.com/linux/mtr-command

traceroute <host> # pokazuje ścieżkę jaką idzie ping do danego hosta

nmap -p <port> <host> # czy na tym porcie nasłuchuje jakaś usługa

nping # https://blkcipher.pl/posts/2019-05-02-na_jakim_porcie_dziala_ping/ / https://netbeez.net/blog/how-to-use-nping/

icmpush # https://linux.die.net/man/8/icmpush / https://blkcipher.pl/posts/2019-05-02-na_jakim_porcie_dziala_ping/

nload -m # pokazuje zużycie pakietów na wszystkich interfejsach (sum up all the network traffic on a network interface)

nslookup <domena/adres> # pokazuje adres/dane dla danej domeny

dig # pokazuje rekordy DNS i adresy dla nich

#---------------------------------------------------------------------------------------------------------------------------#

# Adminowe komendy do sprawdzania systemu:

last -x -F shutdown # sprawdza kiedy został zamknięty system

last -x -F reboot # sprawdza kiedy został zreastartowany system

who -b # kiedy został uruchomiony system

systemctl # https://www.tecmint.com/list-all-running-services-under-systemd-in-linux/

#---------------------------------------------------------------------------------------------------------------------------#

# Porty:

lsof -i -P -n | grep LISTEN # pokazuje na jakich portach jest nasłuchiwanie

netstat -tulpn | grep LISTEN

ss -tulpn | grep LISTEN

lsof -i:22 # pokazanie konkretnego portu, w tym przypadku 22 / netstat -na | grep :22

less /etc/services # pokazuje oficjalne numery portów

#---------------------------------------------------------------------------------------------------------------------------#

# Formatowanie:

wc -l # pokazuje liczbę linijek danej komendy

#---------------------------------------------------------------------------------------------------------------------------#

# Logi systemowe:

last <username> # kiedy użytkownik się logował w całym systemie

grep '<username>' /var/log/auth.log # to samo co wyżej, ale bierze dane z folderu

journalctl -xe # wyciąga logi z systemd
