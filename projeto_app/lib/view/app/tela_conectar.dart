// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaConectar extends StatefulWidget 
{
  const TelaConectar({super.key});

  @override
  State<TelaConectar> createState() => _TelaConectarState();
}

class _TelaConectarState extends State<TelaConectar> 
{
  FlutterBluePlus flutterBlue = FlutterBluePlus.instance;
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Palette().Quaternary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Conectar um Dispositivo",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 25
                  ),
                  backgroundColor: Palette().Primary,
                ),
                onPressed: () 
                {
                  Navigator.pop(context);
                }, 
                child: Text(
                  'Voltar',
                  style: Font().MenuButtonFont
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}