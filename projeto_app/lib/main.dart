// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/view/splash/tela_splash.dart';

void main() 
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pathfinder',
      home: TelaSplash(),
    )
  );
}