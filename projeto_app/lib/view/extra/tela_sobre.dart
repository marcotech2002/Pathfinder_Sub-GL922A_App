// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

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
      backgroundColor: Palette().Quaternary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
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
              Image.asset('assets/images/marco.jpg', width: 500, height: 500),
              Text(
                "Marco Antônio Porsch de Almeida",
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset('assets/images/parquinhos.jpg', width: 500, height: 500),
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