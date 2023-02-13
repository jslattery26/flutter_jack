# flutter_jack
a starter template for flutter/firebase/riverpod/hooks/gorouter/flavors/theming/icons/launchscreen

## Basic Setup

1) `cd app && flutter pub get`

2) `flutter pub run change_app_package_name:main <com.new.package.name>`

3) Find and Replace all instances of `ChangeMyAppName` with your desired app name.

## Generate Icons and Launch Screens

  1) Change the Icons in the assets directory based off of the examples i have. keep the filenames the same and they have their corresponding flavor.
  ```
  app
  └───assets
      │   icon.png
      │   icon-dev.png
      │   icon-local.png
      │   foreground.png
  ```
  2) In the app directory create an .env file with your flavor colors
  ```env
    LOCAL_COLOR='"#FFFFFF"'
    DEV_COLOR='"#000000"'
    PROD_COLOR='"#180437"'
  ```
  
  3) in root dir
  ```
  chmod +x icons_and_launch_screen.sh
  ```
  
  4) 
  ```
  ./icons_and_launch_screen.sh
  ```
  
  
## Firebase Setup

  1) in app dir (install flutterfire if you haven't)
  use `--account <email>`if you need to specify firebase account
  ```
  flutterfire config
  ```
  
  2) Go to firebase console of project that you created (or existed)
  
    - Setup auth (enable anonymous sign in)
    - cloud firestore
    - storage
    - anything you need.. etc
  
  3) in firebase dir 
  choose same project in previous step
  ```
  firebase init
  ```
## Theming

For theming this uses the dynamic_color package but when the device isn't supported it uses some themes found in `app/lib/theming/themes.dart`

The `defaultLightColorScheme` and `defaultDarkColorScheme` can be generated using the [Material 3 Theme Builder](https://m3.material.io/theme-builder#/dynamic)

Then all you have to do is export to flutter and replace the code in `app/lib/theming/themes.dart`.
