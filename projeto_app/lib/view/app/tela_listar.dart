// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_app/model/dispositivo.dart';
import 'package:projeto_app/view/app/tela_status.dart';

import '../../controller/dispositivos_controller.dart';
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
  var txtNome = TextEditingController();
  var txtDescricao = TextEditingController();
  var txtStatus = TextEditingController();
  // List<Dispositivo> dispositivos = [
  //   Dispositivo(id: 1, nome: "Refrigerador", status: 'Ativo'),
  //   Dispositivo(id: 2, nome: "JBL", status: 'Inativo'),
  //   Dispositivo(id: 3, nome: "Televisão", status: 'Ativo'),
  //   Dispositivo(id: 4, nome: "Luzes", status: 'Inativo'),
  // ];

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Palette().Quaternary,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: DispositivosController().listar().snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      String id = dados.docs[index].id;
                      dynamic item = dados.docs[index].data();
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.description),
                          title: Text(item['nome']),
                          subtitle: Text(item['descricao']),
                          onTap: () {
                            txtNome.text = item['nome'];
                            txtDescricao.text = item['descricao'];
                            txtStatus.text = item['status'];
                            //salvarTarefa(context, docId: id);
                          },
                          onLongPress: () {
                            DispositivosController().excluir(context, id);
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhum dispositivo associado.'),
                  );
                }
            }
          },
        ),
      ),

      // body: Column(
      //   children: <Widget>[
      //     SizedBox(height: 50),
      //     Text(
      //       "Dispositivos",
      //       textAlign: TextAlign.center,
      //       style: Font().TitleFont
      //     ),
      //     Expanded(
      //       child: ListView.separated(
      //       itemCount: dispositivos.length,
      //       separatorBuilder: (context, index) => Divider(),
      //       itemBuilder: (context, index) {
      //         return ListTile(
      //           title: Text(dispositivos[index].id.toString()),
      //           subtitle: Text(dispositivos[index].nome),
      //           onTap: () {
      //            Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => TelaStatus(
      //                   nome: dispositivos[index].nome, 
      //                   status: dispositivos[index].status
      //                 ),
      //               ),
      //             );
      //           },
      //         );
      //       }
      //     )
      //     ),
      //   ],
      // ),
    );
  }
}