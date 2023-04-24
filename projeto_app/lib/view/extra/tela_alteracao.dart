// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaAlteracao extends StatefulWidget 
{
  const TelaAlteracao({super.key});

  @override
  State<TelaAlteracao> createState() => _TelaAlteracaoState();
}

class _TelaAlteracaoState extends State<TelaAlteracao> 
{
  static var txtSenha = TextEditingController();
  static var txtSenhaNov = TextEditingController();
  static var txtSenhaConf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().Quaternary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Alteração de Senha",
              textAlign: TextAlign.center,
              style: Font().TitleFont
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100,100,100,50),
              child: Column(
                children: [
                  TextField(
                    controller: txtSenha,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha antiga',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: txtSenhaNov,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Nova senha',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: txtSenhaConf,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirmar nova senha',
                      labelStyle: Font().NormalFont
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,50,0,50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical:25,
                        horizontal:50,
                      ),
                      backgroundColor: Palette().Primary,
                    ),
                    onPressed: () 
                    {
                      if(!(txtSenha.text.isEmpty||txtSenhaNov.text.isEmpty||txtSenhaConf.text.isEmpty))
                      {
                        if(txtSenhaNov.text == txtSenhaConf.text)
                        {
                          message('Senha Alterada');
                          clearTexts();

                          Navigator.pop(context);
                        }
                        else
                        {
                          errorMessage('A senha nova não coincide');
                        }
                      }
                      else
                      {
                        errorMessage('Um ou mais campos não preenchidos');
                      }
                    },
                    child: Text(
                      'Confirmar',
                      style: Font().MenuButtonFont
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical:25,
                        horizontal:50,
                      ),
                      backgroundColor: Palette().Primary,
                    ),
                    onPressed: () 
                    { 
                      clearTexts();
                      
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Voltar',
                      style: Font().MenuButtonFont
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  clearTexts()
  {
    txtSenha.text = '';
    txtSenhaNov.text = '';
    txtSenhaConf.text = '';
  }

  errorMessage(message) 
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: Font().MessageFont,
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Palette().Error,
      )
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