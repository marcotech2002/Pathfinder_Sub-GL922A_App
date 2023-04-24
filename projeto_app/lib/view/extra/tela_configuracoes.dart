// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaConfig extends StatefulWidget 
{
  const TelaConfig({super.key});

  @override
  State<TelaConfig> createState() => _TelaConfigState();
}

class _TelaConfigState extends State<TelaConfig> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().Primary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Configurações",
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
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () 
                {
                  Navigator.pop(context);
                }, 
                child: Text(
                  'Voltar',
                  style: Font().ButtonFont
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