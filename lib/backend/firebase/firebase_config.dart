import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVTRKaxBJJAT4cEKZ0dMh17PqBZuLYzYA",
            authDomain: "marys-floreria.firebaseapp.com",
            projectId: "marys-floreria",
            storageBucket: "marys-floreria.appspot.com",
            messagingSenderId: "605074336433",
            appId: "1:605074336433:web:8c8ccdd1ce331eb519d090"));
  } else {
    await Firebase.initializeApp();
  }
}
