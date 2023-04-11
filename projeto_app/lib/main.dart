// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'view/tela_cadastro.dart';
import 'view/tela_login.dart';

void main() 
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Olá',
      home: TelaCadastro(),
    )
  );
}