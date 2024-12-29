import 'package:aio/aio.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

class FirebaseAuthService {
  /// Registers a user with the given email and password.
  /// Returns the user if successful, otherwise null.
  static Future<User?> register(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return User(email: userCredential.user?.email, token: userCredential.credential?.accessToken);
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (e) {
      Logger.log("Register failed: $e", level: LoggerLevel.error, tag: LoggerTag.network);
      return null;
    }
  }

  /// Logs in a user with the given email and password.
  /// If the user does not exist, and [registerIfNotExists] is true, the user will be created.
  /// Returns the user if successful, otherwise null.
  static Future<User?> login(String email, String password, {bool registerIfNotExists = false}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return User(email: userCredential.user?.email, token: userCredential.credential?.accessToken);
    } on FirebaseAuthException catch (e) {
      // TODO: Change this method
      // This does not work when email enumeration protection is enabled on Firebase
      if (e.code == "user-not-found" && registerIfNotExists) {
        Logger.log("User not found, creating user", level: LoggerLevel.info, tag: LoggerTag.network);
        return await register(email, password);
      } else {
        rethrow;
      }
    } catch (e) {
      Logger.log("Login failed: $e", level: LoggerLevel.error, tag: LoggerTag.network);
      return null;
    }
  }

  static Future<void> logout() {
    try {
      return FirebaseAuth.instance.signOut();
    } catch (e) {
      Logger.log("Logout failed: $e", level: LoggerLevel.error, tag: LoggerTag.network);
      rethrow;
    }
  }
}
