import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_web_example/firebase_options.dart';
import 'package:flutter_web_example/models/post.dart';

Future<void> main() async {
  await dotenv.load(fileName: '../.env');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kDebugMode) {
    try {
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
      writeEntryToFirebase(Post(title: 'Hello', body: 'World'));
    } catch (e) {
      print(e);
    }
  }
  runApp(const MyApp());
}

void writeEntryToFirebase(Post post) {
  FirebaseFirestore.instance.collection('user').add(<String, String>{
    'title': post.title,
    'body': post.body,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
