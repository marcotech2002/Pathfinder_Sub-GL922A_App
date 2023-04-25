// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_app/model/dispositivo.dart';

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
    Dispositivo(id: 1, nome: "Refrigerador"),
    Dispositivo(id: 2, nome: "JBL"),
    Dispositivo(id: 3, nome: "Televisão"),
    Dispositivo(id: 4, nome: "Luzes"),
  ];

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: Column(
        children: <Widget>[
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
              );
            }
          )
          ),
        ],
      ),
    );
  }
}