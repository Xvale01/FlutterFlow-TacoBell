import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDheAXaYqkRvV-zl86b0IxkR0ULSg4AgP8",
            authDomain: "proyecto-taco-bell-help-ywxow0.firebaseapp.com",
            projectId: "proyecto-taco-bell-help-ywxow0",
            storageBucket: "proyecto-taco-bell-help-ywxow0.appspot.com",
            messagingSenderId: "40561231365",
            appId: "1:40561231365:web:bdab2b299687459bd4fe6c"));
  } else {
    await Firebase.initializeApp();
  }
}
