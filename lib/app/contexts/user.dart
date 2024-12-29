import 'package:aio/aio.dart';
import 'package:flutter/material.dart';

class UserContext extends ChangeNotifier {
  UserContext(User? user) : _user = user;

  User? _user;

  User? get user => _user;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }
}
