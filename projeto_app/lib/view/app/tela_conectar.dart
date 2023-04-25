// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

List<String> availableDevices = <String>['','JBL','Esp32','Arduino','Airpods','TV LG'];

class TelaConectar extends StatefulWidget 
{
  const TelaConectar({super.key});

  @override
  State<TelaConectar> createState() => _TelaConectarState();
}

class _TelaConectarState extends State<TelaConectar> 
{
  String dropdownValue = availableDevices.first;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Palette().Quaternary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Conectar um Dispositivo",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100,150,100,170),
                child: DropdownButton(
                  style: Font().MenuButtonFont,
                  elevation: 16,
                  dropdownColor: Palette().Primary,
                  value: dropdownValue,
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Palette().Tertiary,
                  ),
                  items: availableDevices.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) 
                  {
                    // This is called when the user selects an item.
                    setState(() 
                      {
                        dropdownValue = value!;
                      }
                    );
                  },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 25
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () 
                {
                  message('Conectando...');
                }, 
                child: Text(
                  'Conectar',
                  style: Font().ButtonFont
                ),
              ),
            ],
          ),
        ),
      ),
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

// Padding(
//                 padding: const EdgeInsets.fromLTRB(50,50,50,50),
//                 child: TextField(
//                   controller: txtDevice,
//                   enabled: false,
//                   decoration: InputDecoration(
//                     labelText: 'Dispositivo a Conectar',
//                     labelStyle: Font().NormalFont
//                   ),
//                 ),
//               ),