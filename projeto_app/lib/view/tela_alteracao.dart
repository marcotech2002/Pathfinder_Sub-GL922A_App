// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../style/font.dart';
import '../style/palette.dart';

class TelaAlteracao extends StatefulWidget {
  const TelaAlteracao({super.key});

  @override
  State<TelaAlteracao> createState() => _TelaAlteracaoState();
}

class _TelaAlteracaoState extends State<TelaAlteracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().Primary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Alteração de Senha",
              textAlign: TextAlign.center,
              style: Font().TitleFont
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100,100,100,50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha antiga',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nova senha',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirmar nova senha',
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