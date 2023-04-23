
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
        backgroundColor: Palette().Primary,
        title: Text(
          "Menu",
          style: Font().MenuFont
        ),
        // actions: <Widget>[
        //   IconButton(
        //     style: ButtonStyle(
        //       iconColor: Palette().Tertiary
        //     ),
        //     icon: const Icon(Icons.add_alert),
        //     tooltip: 'Show Snackbar',
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(content: Text('This is a snackbar')));
        //     },
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.navigate_next),
        //     tooltip: 'Go to the next page',
        //     onPressed: () {
        //       Navigator.push(context, MaterialPageRoute<void>(
        //         builder: (BuildContext context) {
        //           return Scaffold(
        //             appBar: AppBar(
        //               title: const Text('Next page'),
        //             ),
        //             body: const Center(
        //               child: Text(
        //                 'This is the next page',
        //                 style: TextStyle(fontSize: 24),
        //               ),
        //             ),
        //           );
        //         },
        //       ));
        //     },
        //   ),
        // ],
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
                )
              ),
            ),
            Container (
              color: Palette().Primary,
              child: Column(
                children: List.generate(4, (int index){
                  return ListTile(
                    leading: Icon(Icons.info),
                  );
                }),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Menu Principal",
                textAlign: TextAlign.center,
                style: Font().TitleFont
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,70,0,25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 50,
                        ),
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 1',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 50,
                        ),
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 2',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,25,0,25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 50,
                        ),
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 3',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 50,
                        ),
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 4',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,25,0,25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 50,
                        ),
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 5',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 60,
                          horizontal: 50,
                        ),
                        backgroundColor: Palette().Secondary,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Opção 6',
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 60, 
                  ),
                  backgroundColor: Palette().Secondary,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: Text(
                  'Sair',
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
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