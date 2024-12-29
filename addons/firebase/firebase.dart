import 'package:aio/aio.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

class FirebaseService extends Dependency<FirebaseService> {
  @override
  Future<void> init(Object? options) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return super.init(options);
  }
}
