import 'package:aio/aio.dart';
import 'package:aio_app_template/utils/authentication.dart';
import 'package:flutter/material.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return PagePlaceholder(
      label: "Authentication View",
      onButtonPressed: () => login(context, "email@mail.com", "password"),
    );
  }
}
