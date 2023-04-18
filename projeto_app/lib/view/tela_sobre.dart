// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../style/font.dart';
import '../style/palette.dart';

class TelaSobre extends StatefulWidget 
{
  const TelaSobre({super.key});

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Palette().Primary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              Text(
                "Sobre",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
            ],
          ),
        ),
      ),
    );
  }
}