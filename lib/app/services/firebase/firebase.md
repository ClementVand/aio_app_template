* Install firebase core package [firebase_core](https://pub.dev/packages/firebase_core)

Then install plugins you need. Here are the supported plugins by the template:
* [firebase_auth](https://pub.dev/packages/firebase_auth)

Then, move the content of `addons/firebase` to `lib/app/services/firebase` and replace with your firebase_options.dart file.

`FirebaseService` is provided as a dependency so you can use it when you run your app.

### Usage
```dart
App().run(
  const AppRoot(),
  dependencies: [
    InitializableDependency(Prefs()),
    InitializableDependency.withOptions(AppRouter(), appRoutes),
    InitializableDependency(FirebaseService()),
  ],
  // appLifeCycleHandler: AppLifeCycleHandler(
  //   onPaused: () => print("App paused"),
  //   onResumed: () => print("App resumed"),
  // ),
  useAppSession: true,
  debug: true,
);
```
