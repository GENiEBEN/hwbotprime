jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore /Users/frederik/dev/git/hwbotprime-security/hwbotprime-security/android/android.keystore ~/Desktop/hwbotprime-android.apk hwbot.org
jarsigner -verify ~/Desktop/hwbotprime-android.apk
mv ~/Desktop/hwbotprime-android.apk ~/Desktop/hwbotprime-android-unaligned.apk
/Users/frederik/android-sdks/tools/zipalign -v 4  ~/Desktop/hwbotprime-android-unaligned.apk ~/Desktop/hwbotprime-android.apk
s3cmd put ~/Desktop/hwbotprime-android.apk s3://hwbotdownloads 
echo done! Do not forget to make s3 file public.
