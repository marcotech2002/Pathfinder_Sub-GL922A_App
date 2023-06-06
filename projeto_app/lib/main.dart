// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:projeto_app/view/splash/tela_splash.dart';

import 'firebase_options.dart';

Future<void> main() async
{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pathfinder',
      home: TelaSplash(),
    )
  );
}