// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/view/tela_splash.dart';
import 'view/tela_login.dart';

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