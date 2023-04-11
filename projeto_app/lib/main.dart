// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/view/tela_recuperacao.dart';
import 'view/tela_cadastro.dart';
import 'view/tela_login.dart';
import 'view/tela_menu.dart';

void main() 
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Olá',
      home: TelaMenu(),
    )
  );
}