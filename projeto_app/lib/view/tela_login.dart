// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto_app/style/palette.dart';
import 'package:projeto_app/style/font.dart';
import 'package:projeto_app/view/tela_cadastro.dart';
import 'package:projeto_app/view/tela_recuperacao.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().Primary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(400,0,400,0),
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
                        labelText: 'Senha',
                        labelStyle: Font().NormalFont
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ]
                ),
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
                  'Confirmar',
                  style: Font().ButtonFont
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaRecuperacao())
                      );
                    }, 
                    child: const Text(
                      "Clique aqui caso tenha esquecido sua senha",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "ChivoMono", 
                        fontSize: 10
                      )
                    ),
                  ),  
                  SizedBox(
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCadastro())
                      );
                    }, 
                    child: const Text(
                      "Clique aqui para realizar seu cadastro",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "ChivoMono", 
                        fontSize: 10
                      )
                    ),
                  )  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
