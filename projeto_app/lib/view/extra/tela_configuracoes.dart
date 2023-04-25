// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:projeto_app/view/extra/tela_alteracao.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaConfig extends StatefulWidget 
{
  const TelaConfig({super.key});

  @override
  State<TelaConfig> createState() => _TelaConfigState();
}

class _TelaConfigState extends State<TelaConfig> 
{
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;

  @override
  Widget build(BuildContext context) {
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
                "Configurações",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ativar Notifição",
                    style: Font().NormalFont,
                  ),
                  Switch(
                    value: btn1,
                    inactiveThumbColor: Palette().Primary,
                    activeColor: Palette().Tertiary, 
                    onChanged: (bool value)
                    {
                      setState(() 
                        {
                          btn1 = value;
                        }
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tema escuro",
                    style: Font().NormalFont,
                  ),
                  Switch(
                    value: btn2,
                    inactiveThumbColor: Palette().Primary,
                    activeColor: Palette().Tertiary, 
                    onChanged: (bool value)
                    {
                      setState(() 
                        {
                          btn2 = value;
                        }
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lembrar usuário no login",
                    style: Font().NormalFont,
                  ),
                  Switch(
                    value: btn3,
                    inactiveThumbColor: Palette().Primary,
                    activeColor: Palette().Tertiary, 
                    onChanged: (bool value)
                    {
                      setState(() 
                        {
                          btn3 = value;
                        }
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Autenticação de dois fatores",
                    style: Font().NormalFont,
                  ),
                  Switch(
                    value: btn4,
                    inactiveThumbColor: Palette().Primary,
                    activeColor: Palette().Tertiary, 
                    onChanged: (bool value)
                    {
                      setState(() 
                        {
                          btn4 = value;
                        }
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () 
                {

                }, 
                child: Text(
                  'Adicionar foto de perfil',
                  style: Font().ButtonFont
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 122,
                    vertical: 15
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () 
                {
                  message('Verifique seu Email');
                }, 
                child: Text(
                  'Mudar Email',
                  style: Font().ButtonFont
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 110,
                    vertical: 15
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () 
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaAlteracao())
                  );
                }, 
                child: Text(
                  'Alterar Senha',
                  style: Font().ButtonFont
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 159,
                    vertical: 15
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () 
                {
                  
                }, 
                child: Text(
                  'Ajuda',
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

  message(message) 
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: Font().MessageFont,
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Palette().Tertiary,
      )
    );
  }
}