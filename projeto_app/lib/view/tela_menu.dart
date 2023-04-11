
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../style/palette.dart';

class TelaMenu extends StatefulWidget 
{
  const TelaMenu({super.key});

  @override
  State<TelaMenu> createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> 
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
                "Menu",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,50,0,100),
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 1',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 2',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 3',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 4',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sair',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}