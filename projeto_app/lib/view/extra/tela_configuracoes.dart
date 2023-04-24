// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                    "Opção 1",
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Opção 2",
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Opção 3",
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
                height: 50,
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