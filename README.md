# AIO App Template

Flutter app skeleton integrating AIO package

## Getting Started

### Installation
* Clone this repository to your local machine using `git clone git@github.com:ClementVand/aio_app_template.git <your_app_name>`
* Change the package name in `pubspec.yaml` to your own package name

* Use a tool like [this one](https://pub.dev/packages/rename) to change the bundle identifier for android and iOS

Rename your app with `flutter pub global run rename setAppName --targets ios,android --value "<YourAppName>"`<br>
Change the bundle identifier with `flutter pub global run rename setBundleId --targets ios,android --value "com.example.bundleId"`

* Rename all `import package:aio_app_template/...` to `import package:<your_package_name>/...`

* Run your app with `flutter run` or with the play button in your IDE

### Personalization
* Change this README to describe your app
* Search for `TODO` in the code and follow the instructions
