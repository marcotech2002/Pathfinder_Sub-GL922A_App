// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100,100,100,50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                      ),
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
                      backgroundColor: Palette().Secondary,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Confirmar',
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette().Secondary,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Cancelar',
                      style: const TextStyle(
                        fontSize: 25,
                      ),
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