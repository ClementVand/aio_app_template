import 'package:aio/aio.dart';
import 'package:aio_app_template/app/constants/routes.dart';
import 'package:aio_app_template/app/contexts/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void login(BuildContext context, String email, String password) async {
  // Simulate a login
  User user = await Future.delayed(
    const Duration(seconds: 1),
    () => User(email: "email@flow.com", token: "__token__"),
  );

  // See lib/app/services/firebase/firebase.md to use Firebase Auth
  // User? user = await FirebaseAuthService.login(email, password, registerIfNotExists: true);
  // if (user == null) return;

  App().session.save(user, onSave: () {
    context.read<UserContext>().user = user;
    context.go(Routes.home);
  });
}

void logout(BuildContext context) async {
  // See lib/app/services/firebase/firebase.md to use Firebase Auth
  // await FirebaseAuthService.logout();

  // Your logout logic

  await App().session.clear(() {
    context.read<UserContext>().user = null;
  });
}
