import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDOodx7KyhKL4Vnw0UWKVXSL4a9RHj4ES0",
            authDomain: "fitness-leaf-app-s0h83s.firebaseapp.com",
            projectId: "fitness-leaf-app-s0h83s",
            storageBucket: "fitness-leaf-app-s0h83s.appspot.com",
            messagingSenderId: "182662399460",
            appId: "1:182662399460:web:4e66e420afda18a728b3f1"));
  } else {
    await Firebase.initializeApp();
  }
}
