#!/bin/sh
echo "OSX için script çalışıyor.."
for UDID in $(idevice_id -l | cut -f 1);
do 
  for IPA in *.ipa;
  do
  echo "$IPA uygulamasını $UDID cihazı üzerinde kuruyor"
  ideviceinstaller -u $UDID -i $IPA
  done
done
echo "Kurulum bitti"