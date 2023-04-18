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
              SizedBox(
                height: 50,
              ),
              Text(
                "Criadores:",
                style: Font().NormalFont
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset('assets/images/logo.png'),
              Text(
                "Marco Antônio Porsch de Almeida",
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset('assets/images/logo.png'),
              Text(
                "Marcos Vinicius Alves da Rocha",
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Tema escolhido: IoT",
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Objetivo: Uma forma de integrar\ndispositivos com internet das coisas",
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 25
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () {},
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