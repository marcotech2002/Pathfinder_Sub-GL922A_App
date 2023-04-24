// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:projeto_app/style/palette.dart';
import 'package:projeto_app/style/font.dart';

import 'package:projeto_app/view/auth/tela_cadastro.dart';
import 'package:projeto_app/view/auth/tela_recuperacao.dart';

import 'package:projeto_app/view/body/tela_menu.dart';

class TelaLogin extends StatefulWidget 
{
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> 
{
  static var txtEmail = TextEditingController();
  static var txtSenha = TextEditingController();

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
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: Column(
                  children: [
                    TextField(
                      controller: txtEmail,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: Font().NormalFont
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      controller: txtSenha,
                      obscureText: true,
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
                onPressed: () 
                {
                  if(txtEmail.text.isEmpty||txtSenha.text.isEmpty)
                  {
                    errorMessage('Um ou mais campos não preenchidos');
                  }
                  else
                  {
                    clearTexts();
                      
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaMenu())
                    );
                  }
                },
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
                    onPressed: () 
                    {
                      clearTexts();
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaRecuperacao())
                      );
                    }, 
                    child: const Text(
                      "Esqueci a senha",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: "ChivoMono", 
                        fontSize: 10
                      )
                    ),
                  ),  
                  SizedBox(
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () 
                    {
                      clearTexts();

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCadastro())
                      );
                    }, 
                    child: const Text(
                      "Realizar seu cadastro",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
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

  clearTexts()
  {
    txtEmail.text = '';
    txtSenha.text = '';
  }

  errorMessage(message) 
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: Font().MessageFont,
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Palette().Error,
      )
    );
  }
}
