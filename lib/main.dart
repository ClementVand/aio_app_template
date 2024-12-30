import 'package:aio/aio.dart';
import 'package:aio_app_template/app/app_root.dart';
import 'package:aio_app_template/app/constants/color_palette.dart';
import 'package:aio_app_template/app/constants/routes.dart';

void main() {
  App().run(
    const AppRoot(),
    dependencies: [
      InitializableDependency(Prefs()),
      InitializableDependency.withOptions(AppRouter(), appRoutes),
    ],
    colorPalette: colorPalette,
    useAppSession: true,
    debug: true,
  );
}
