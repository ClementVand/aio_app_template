import 'package:aio/aio.dart';
import 'package:aio_app_template/app/app_root.dart';
import 'package:aio_app_template/app/constants/routes.dart';

void main() {
  App().run(
    const AppRoot(),
    dependencies: [
      InitializableDependency(Prefs()),
      InitializableDependency.withOptions(AppRouter(), appRoutes),
    ],
    // appLifeCycleHandler: AppLifeCycleHandler(
    //   onPaused: () => print("App paused"),
    //   onResumed: () => print("App resumed"),
    // ),
    useAppSession: true,
    debug: true,
  );
}
