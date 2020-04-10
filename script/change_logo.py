

im = Image.open('ic_launcher.png')

# android
im.resize((48,48)).save('./android/app/src/main/res/mipmap-mdpi/ic_launcher.png')
im.resize((72,72)).save('./android/app/src/main/res/mipmap-hdpi/ic_launcher.png')
im.resize((96,96)).save('./android/app/src/main/res/mipmap-xhdpi/ic_launcher.png')
im.resize((144,144)).save('./android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png')
im.resize((192,192)).save('./android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png')

#ios
