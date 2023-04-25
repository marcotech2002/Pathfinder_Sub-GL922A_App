// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaStatus extends StatefulWidget 
{
  //const TelaStatus({super.key});
  final String nome;
  final String status;

  TelaStatus({required this.nome, required this.status});

  @override
  State<TelaStatus> createState() => _TelaStatusState();
}

class _TelaStatusState extends State<TelaStatus> 
{
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
                "Status",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Dispositivo: " + widget.nome,
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Status: " + widget.status,
                textAlign: TextAlign.center,
                style: Font().NormalFont
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      
                    }, 
                    child: Text(
                      'Atualizar',
                      style: Font().MenuButtonFont
                    ),
                  ),
                  SizedBox(
                    width: 25,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}