// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

import "package:projeto_app/view/app/tela_conectar.dart";
import "package:projeto_app/view/app/tela_listar.dart";
import "package:projeto_app/view/body/tela_menu.dart";
import "package:projeto_app/view/extra/tela_alteracao.dart";
import "package:projeto_app/view/extra/tela_configuracoes.dart";
import "package:projeto_app/view/extra/tela_sobre.dart";

import "../../style/font.dart";
import "../../style/palette.dart";

class TelaPrincipal extends StatefulWidget 
{
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> 
{
  var currentPage = 1;
  var pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          TelaMenu(),
          TelaConectar(),
          TelaLista(),
          TelaSobre(),
          TelaAlteracao(),
          TelaConfig(),
        ],
        onPageChanged: (index) {
          setState(() 
            {
              currentPage = index;
            }
          );
        },
      ),
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
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Página Inicial'),
                    onTap: () {
                      // navegar para a página inicial
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Página Inicial'),
                    onTap: () {
                      // navegar para a página inicial
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Página Inicial'),
                    onTap: () {
                      // navegar para a página inicial
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Página Inicial'),
                    onTap: () {
                      // navegar para a página inicial
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Página Inicial'),
                    onTap: () {
                      // navegar para a página inicial
                    },
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}