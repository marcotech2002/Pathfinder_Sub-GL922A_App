import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../style/font.dart';
import '../style/palette.dart';



class TelaConfig extends StatefulWidget 
{
  const TelaConfig({super.key});

  @override
  State<TelaConfig> createState() => _TelaConfigState();
}

class _TelaConfigState extends State<TelaConfig> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().Primary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Configurações",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
            ],
          ),
        ),
      ),
    );
  }
}