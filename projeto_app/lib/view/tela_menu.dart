
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../style/font.dart';
import '../style/palette.dart';

class TelaMenu extends StatefulWidget 
{
  const TelaMenu({super.key});

  @override
  State<TelaMenu> createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu",
          style: Font().TitleFont
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'This is the home page',
          style: Font().TitleFont,
        ),
      ),
    );
      // backgroundColor: Palette().Primary,
      // body: SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       children: <Widget>[
      //         Image.asset('assets/images/logo.png'),
      //         Text(
      //           "Menu",
      //           textAlign: TextAlign.center,
      //           style: const TextStyle(
      //             fontSize: 50,
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.fromLTRB(0,50,0,100),
      //           child: Column(
      //             children: [
      //               ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                   padding: EdgeInsets.symmetric(
      //                     vertical:25,
      //                     horizontal:50,
      //                   ),
      //                   backgroundColor: Palette().Secondary,
      //                 ),
      //                 onPressed: () {},
      //                 child: Text(
      //                   'Opção 1',
      //                   style: const TextStyle(
      //                     fontSize: 35,
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 35,
      //               ),
      //               ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                   padding: EdgeInsets.symmetric(
      //                     vertical:25,
      //                     horizontal:50,
      //                   ),
      //                   backgroundColor: Palette().Secondary,
      //                 ),
      //                 onPressed: () {},
      //                 child: Text(
      //                   'Opção 2',
      //                   style: const TextStyle(
      //                     fontSize: 35,
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 35,
      //               ),
      //               ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                   padding: EdgeInsets.symmetric(
      //                     vertical:25,
      //                     horizontal:50,
      //                   ),
      //                   backgroundColor: Palette().Secondary,
      //                 ),
      //                 onPressed: () {},
      //                 child: Text(
      //                   'Opção 3',
      //                   style: const TextStyle(
      //                     fontSize: 35,
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 35,
      //               ),
      //               ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                   padding: EdgeInsets.symmetric(
      //                     vertical:25,
      //                     horizontal:50,
      //                   ),
      //                   backgroundColor: Palette().Secondary,
      //                 ),
      //                 onPressed: () {},
      //                 child: Text(
      //                   'Opção 4',
      //                   style: const TextStyle(
      //                     fontSize: 35,
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 75,
      //               ),
      //               ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                   padding: EdgeInsets.symmetric(
      //                     vertical:25,
      //                     horizontal:50,
      //                   ),
      //                   backgroundColor: Palette().Secondary,
      //                 ),
      //                 onPressed: () {},
      //                 child: Text(
      //                   'Sair',
      //                   style: const TextStyle(
      //                     fontSize: 35,
      //                   ),
      //                 ),
      //               ),
      //             ]
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
  }
}