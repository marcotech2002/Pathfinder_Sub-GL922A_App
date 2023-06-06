import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/dispositivo.dart';
import '../view/snackBar/util.dart';
import 'login_controller.dart';

class DispositivosController {
  //
  // ADICIONAR um novo dispositivo na Coleção
  //
  void adicionar(context, Dispositivo t) {
    FirebaseFirestore.instance
        .collection('dispositivos')
        .add(t.toJson())
        .then((value) => sucesso(context, 'Dispositivo adicionado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // LISTAR
  //
  listar() {
    return FirebaseFirestore.instance
        .collection('dispositivos')
        .where('uid', isEqualTo: LoginController().idUsuario());
  }

  //
  // ATUALIZAR
  //
  void atualizar(context, id, Dispositivo t) {
    FirebaseFirestore.instance
        .collection('dispositivos')
        .doc(id)
        .update(t.toJson())
        .then((value) => sucesso(context, 'Dispositivo atualizado com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar o dispositivo.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  //
  void excluir(context, id) {
    FirebaseFirestore.instance
        .collection('dispositivos')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Dispositivo excluído com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir o dispositivo.'));
  }
}
