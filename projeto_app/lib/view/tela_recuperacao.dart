// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../style/font.dart';
import '../style/palette.dart';

class TelaRecuperacao extends StatefulWidget 
{
  const TelaRecuperacao({super.key});

  @override
  State<TelaRecuperacao> createState() => _TelaRecuperacaoState();
}

class _TelaRecuperacaoState extends State<TelaRecuperacao> 
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Palette().Primary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            Text(
              "Recuperação de Senha",
              textAlign: TextAlign.center,
              style: Font().TitleFont
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100,100,100,50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,50,0,50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical:25,
                        horizontal:50,
                      ),
                      backgroundColor: Palette().Secondary,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Confirmar',
                      style: Font().ButtonFont
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical:25,
                        horizontal:50,
                      ),
                      backgroundColor: Palette().Secondary,
                    ),
                    onPressed: () { 
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancelar',
                      style: Font().ButtonFont
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}