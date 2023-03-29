// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget 
{
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> 
{


  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Text("Login",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 50,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(
                  fontSize: 20,
                ),
                ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: const TextStyle(
                  fontSize: 20,
                ),
                ),
            ),
            ElevatedButton(
              onPressed: ()
              {

              }, 
              child: Text('Confirmar',
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}