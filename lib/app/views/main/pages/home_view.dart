import 'package:aio/aio.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _logout(BuildContext context) async {
    await App().session.logout();
    context.go(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return PagePlaceholder(
      label: "Home",
      onButtonPressed: () => _logout(context),
    );
  }
}
