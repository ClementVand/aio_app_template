import 'package:aio/aio.dart';
import 'package:aio_app_template/app/contexts/user.dart';
import 'package:aio_app_template/utils/authentication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PagePlaceholder(
      label: "Home - ${context.watch<UserContext>().user?.email}",
      onButtonPressed: () => logout(context),
    );
  }
}
