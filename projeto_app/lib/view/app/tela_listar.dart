// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/model/dispositivo.dart';
import 'package:projeto_app/view/app/tela_status.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaLista extends StatefulWidget 
{
  const TelaLista({super.key});

  @override
  State<TelaLista> createState() => _TelaListaState();
}

class _TelaListaState extends State<TelaLista> 
{
  List<Dispositivo> dispositivos = [
    Dispositivo(id: 1, nome: "Refrigerador", status: 'Ativo'),
    Dispositivo(id: 2, nome: "JBL", status: 'Inativo'),
    Dispositivo(id: 3, nome: "Televisão", status: 'Ativo'),
    Dispositivo(id: 4, nome: "Luzes", status: 'Inativo'),
  ];

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Palette().Quaternary,
      body: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            "Dispositivos",
            textAlign: TextAlign.center,
            style: Font().TitleFont
          ),
          Expanded(
            child: ListView.separated(
            itemCount: dispositivos.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(dispositivos[index].id.toString()),
                subtitle: Text(dispositivos[index].nome),
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaStatus(
                        nome: dispositivos[index].nome, 
                        status: dispositivos[index].status
                      ),
                    ),
                  );
                },
              );
            }
          )
          ),
        ],
      ),
    );
  }
}