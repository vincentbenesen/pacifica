import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pacifica/model/User.dart';
import 'package:firebase_core/firebase_core.dart';

import 'HomepageElements/homepage.dart';
import 'ContactElements/contact.dart';
import 'InfrastructureElements/infrastructure.dart';
import 'TeamElements/teampage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAipwchueYRMQhdswHq-HvbnQOXWIf5DN8",
          authDomain: "fir-flutter-479eb.firebaseapp.com",
          projectId: "fir-flutter-479eb",
          storageBucket: "fir-flutter-479eb.appspot.com",
          messagingSenderId: "985079857939",
          appId: "1:985079857939:web:e3106b184d8d5affc450e6"));
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Contact(),
    );
  }
}
