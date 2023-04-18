// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../style/font.dart';
import '../style/palette.dart';

class TelaCadastro extends StatefulWidget 
{
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> 
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
              "Cadastro",
              textAlign: TextAlign.center,
              style: Font().TitleFont
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100,50,100,25),
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
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirmar Senha',
                      labelStyle: Font().NormalFont
                    ),
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
                        horizontal:35,
                      ),
                      backgroundColor: Palette().Secondary,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Confirmar',
                      style: Font().ButtonFont
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical:25,
                        horizontal:35,
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
