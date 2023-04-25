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
  var pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          TelaLista(),
          TelaConectar(),
          TelaSobre(),
          TelaConfig(),
          TelaAlteracao(),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Palette().Primary,
        title: Text(
          "Pathfinder",
          style: Font().MenuFont
        ),
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
                  child: Text("MA", style: Font().TitleFont),
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
                    onTap: () 
                    {
                      pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.bluetooth),
                    title: Text('Conectar'),
                    onTap: () 
                    {
                      pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      Navigator.pop(context);
                    }
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.format_list_bulleted),
                  //   title: Text('Dispositivos'),
                  //   onTap: () 
                  //   {
                  //     pageController.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                  //     Navigator.pop(context);
                  //   },
                  // ),
                  ListTile(
                    leading: Icon(Icons.insert_comment_outlined),
                    title: Text('Sobre'),
                    onTap: () 
                    {
                      pageController.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Configurações'),
                    onTap: () 
                    {
                      pageController.animateToPage(3, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 250),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text('Sair', style: TextStyle(color: Colors.red)),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
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