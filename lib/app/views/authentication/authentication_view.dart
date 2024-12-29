import 'package:aio/aio.dart';
import 'package:aio_app_template/app/constants/routes.dart';
import 'package:aio_app_template/app/contexts/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  void _login(BuildContext context) async {
    // Simulate a login
    User user = await Future.delayed(
      const Duration(seconds: 1),
      () => User(email: "email@flow.com", token: "__token__"),
    );

    // See lib/app/services/firebase/firebase.md to use Firebase Auth
    // User? user = await FirebaseAuthService.login("email@flow.com", "flower", registerIfNotExists: true);
    // if (user == null) return;

    App().session.save(user, onSave: () {
      context.read<UserContext>().user = user;
      context.go(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PagePlaceholder(
      label: "Authentication View",
      onButtonPressed: () => _login(context),
    );
  }
}
