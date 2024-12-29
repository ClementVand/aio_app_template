import 'package:aio/aio.dart';
import 'package:aio_app_template/app/contexts/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _logout(BuildContext context) async {
    // See lib/app/services/firebase/firebase.md to use Firebase Auth
    // await FirebaseAuthService.logout();
    await App().session.clear(() {
      context.read<UserContext>().user = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PagePlaceholder(
      label: "Home - ${context.watch<UserContext>().user?.email}",
      onButtonPressed: () => _logout(context),
    );
  }
}
