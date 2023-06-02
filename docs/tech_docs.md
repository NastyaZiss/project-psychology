
## Create SHA fingerprint  from RELEASE

Preparation for release:

1. keytool -genkey -keystore C:\key.jks -storepass 123456 -alias pushkitshowcase -keypass 123456 -dname "o=Huawei" -keysize 2048 -keyalg RSA -validity 36500
2. cd PATH jdk
3. keytool -list -v -keystore C:\key.jks
4. move key.jks file in android folder
5. local.properties
6. change file app/build.gradle
- signingConfigs
- buildTypes

flutter build apk --release


