import 'package:aio/aio.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // TODO: Change the title of the app
      title: "AIO Skeleton App",

      // Router
      routerConfig: App().router.I,

      locale: App().locale,

      // L10N
      // TODO: Uncomment this when the localization is ready (see l10n)
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
