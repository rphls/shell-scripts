#!/bin/sh
echo "Linux için script çalışıyor.."
for UDID in $(adb devices | tail -n +2 | cut -sf 1);
do 
  for APK in *.apk;
  do
  echo "$APK uygulamasını $UDID cihazı üzerinde kuruyor"
  adb -s $UDID install -r $APK
  done
done
echo "Kurulum bitti"