#!/bin/sh
#DESCRIPTION=Genera Log in /tmp/ da inviare al team ItalySat
echo "##########################################################################"
echo "##### Send this file  """"/tmp/log.txt"""" to team at www.italysat.eu ####"
echo "##########################################################################"
echo ""
echo ""
echo ""
cat /etc/italyversion > /tmp/log.txt
cat /etc/italymachine >> /tmp/log.txt
cat /etc/italysvn >> /tmp/log.txt
echo "Genero Dmesg"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "##########################################    Dmesg     ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
dmesg >> /tmp/log.txt
echo "Genero Dmesg"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "##########################################  Dmesg USB   ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
dmesg | grep usb >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "##########################################  Dmesg DVB   ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
dmesg | grep dvb >> /tmp/log.txt
echo "Genero Lsusb"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "##########################################     LSUSB    ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
lsusb >> /tmp/log.txt
echo "Genero Lsmod"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "##########################################     Lsmod    ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
lsmod >> /tmp/log.txt
echo "Genero lista specifiche devices"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "#################################### Lista Specifiche devices ####################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
cat /proc/bus/usb/devices >> /tmp/log.txt
echo "Genero Nim Sockets"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "########################################## Nim Sockets ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
cat /proc/bus/nim_sockets >> /tmp/log.txt
echo "Genero lista firmware"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "######################################### Lista Firmware #########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
ls -l /lib/firmware >> /tmp/log.txt
echo "Genero lista pacchetti installati"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "################################### Lista Pacchetti Installati ###################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
opkg list_installed >> /tmp/log.txt
echo "Genero processi attivi"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "########################################  Processi Attivi ########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
ps x >> /tmp/log.txt
echo "Genero uptime"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "########################################## Genero uptime ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
uptime >> /tmp/log.txt
echo "Altre Info"
echo "##################################################################################################" >> /tmp/log.txt
echo "##########################################    Genero    ##########################################" >> /tmp/log.txt
echo "##########################################  Altre Info  ##########################################" >> /tmp/log.txt
echo "##################################################################################################" >> /tmp/log.txt
cat /proc/stb/info/boxtype >> /tmp/log.txt
cat /proc/stb/info/chipset >> /tmp/log.txt
cat /proc/stb/info/model >> /tmp/log.txt
cat /proc/stb/info/version >> /tmp/log.txt
cat /proc/stb/info/vumodel >> /tmp/log.txt
echo ""
echo ""
echo ""
echo "##########################################################################"
echo "##Fine, send this file """"/tmp/log.txt"""" to team at www.italysat.eu ###"
echo "##########################################################################"
exit