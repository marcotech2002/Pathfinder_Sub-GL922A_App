
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/view/tela_alteracao.dart';
import 'package:projeto_app/view/tela_conectar.dart';
import 'package:projeto_app/view/tela_configuracoes.dart';
import 'package:projeto_app/view/tela_listar.dart';
import 'package:projeto_app/view/tela_sobre.dart';

import '../style/font.dart';
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
      appBar: AppBar(
        backgroundColor: Palette().Primary,
        title: Text(
          "Pathfinder",
          style: Font().MenuFont
        ),
        // actions: <Widget>[
        //   IconButton(
        //     style: ButtonStyle(
        //       iconColor: Palette().Tertiary
        //     ),
        //     icon: const Icon(Icons.add_alert),
        //     tooltip: 'Show Snackbar',
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(content: Text('This is a snackbar')));
        //     },
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.navigate_next),
        //     tooltip: 'Go to the next page',
        //     onPressed: () {
        //       Navigator.push(context, MaterialPageRoute<void>(
        //         builder: (BuildContext context) {
        //           return Scaffold(
        //             appBar: AppBar(
        //               title: const Text('Next page'),
        //             ),
        //             body: const Center(
        //               child: Text(
        //                 'This is the next page',
        //                 style: TextStyle(fontSize: 24),
        //               ),
        //             ),
        //           );
        //         },
        //       ));
        //     },
        //   ),
        // ],
      ),
      drawer: Drawer(
        backgroundColor: Palette().Primary,
        child: ListView(
          children: <Widget>[
            Container(
              color: Palette().Primary,
              child: DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: Palette().Secondary,
                )
              ),
            ),
            Container (
              color: Palette().Primary,
              child: Column(
                children: List.generate(4, (int index){
                  return ListTile(
                    leading: Icon(Icons.info),
                  );
                }),
              ),
            )
          ],
        ),
      ),
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
                        backgroundColor: Palette().Secondary,
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
                        style: Font().ButtonFont,
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
                        backgroundColor: Palette().Secondary,
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
                        style: Font().ButtonFont,
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
                        backgroundColor: Palette().Secondary,
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
                        style: Font().ButtonFont,
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
                        style: Font().ButtonFont,
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
                        backgroundColor: Palette().Secondary,
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
                        style: Font().ButtonFont,
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
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () 
                      {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sair',
                        style: Font().ButtonFont,
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