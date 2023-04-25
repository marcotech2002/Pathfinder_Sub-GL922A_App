
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/view/extra/tela_alteracao.dart';
import 'package:projeto_app/view/app/tela_conectar.dart';
import 'package:projeto_app/view/extra/tela_configuracoes.dart';
import 'package:projeto_app/view/app/tela_listar.dart';
import 'package:projeto_app/view/extra/tela_sobre.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

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
      backgroundColor: Palette().Quaternary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Menu Principal",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,70,0,25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 80,
                        ),
                        backgroundColor: Palette().Primary,
                      ),
                      onPressed: () 
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaConectar())
                        );
                      },
                      child: Text(
                        'Conectar',
                        style: Font().MenuButtonFont,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 60,
                        ),
                        backgroundColor: Palette().Primary,
                      ),
                      onPressed: () 
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaLista())
                        );
                      },
                      child: Text(
                        'Dispositivos',
                        style: Font().MenuButtonFont,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,0,0,25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 98,
                        ),
                        backgroundColor: Palette().Primary,
                      ),
                      onPressed: () 
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaSobre())
                        );
                      },
                      child: Text(
                        'Sobre',
                        style: Font().MenuButtonFont,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 54,
                        ),
                        backgroundColor: Palette().Primary,
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
                        style: Font().MenuButtonFont,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,0,0,25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 55,
                        ),
                        backgroundColor: Palette().Primary,
                      ),
                      onPressed: () 
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaConfig())
                        );
                      },
                      child: Text(
                        'Configurações',
                        style: Font().MenuButtonFont,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 108,
                        ),
                        backgroundColor: Palette().Primary,
                      ),
                      onPressed: () 
                      {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sair',
                        style: Font().MenuButtonFont,
                      ),
                    ),
                  ],
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