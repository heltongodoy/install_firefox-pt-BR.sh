#!/bin/bash
echo " "
echo "#############################################################################################"
echo "#                  Removendo Firefox SNAP, caso exista.                                     #"
echo "#############################################################################################"
sudo snap remove --purge firefox
echo " "
echo " "
echo "#############################################################################################"
echo "#                             Iniciando download.                                           #"
echo "#############################################################################################"
wget -O ~/FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=pt-BR"
echo " "
echo " "
echo "#############################################################################################"
echo "#                            Iniciando instalação.                                          #"
echo "#############################################################################################"
sudo tar xjf ~/FirefoxSetup.tar.bz2 -C /opt/
sudo rm -rf /usr/bin/firefox
sudo ln -s /opt/firefox/firefox /usr/bin/firefox
rm ~/FirefoxSetup.tar.bz2
if [ -e "/usr/local/share/applications/firefox.desktop" ] ; then
echo "O arquivo firefox.desktop existe. Finalizar"
else
echo "O arquivo firefox.desktop não existe. Gerar arquivo."
sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications
fi
echo " "
echo " "
echo "#############################################################################################"
echo "#                              INSTALAÇÃO FINALIZADA!                                       #"
echo "#############################################################################################"
