import 'package:flutter/material.dart';
/*
void main() {
  runApp(
    Center(
      child: Text(
        'Hello World!',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30.0),
      ),
    ),
  );
}
*/

//Outra APlicação
/*
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column(
            children: [
              Text('Olá mundo!', style: TextStyle(fontSize: 80)),
              Icon(
                Icons.android,
                color: Colors.green,
                size: 80,
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
*/

void main() => runApp(MeuMaterialApp());

class MeuMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Barrinha'),
        ),
        drawer: const Drawer(),
        body: const Center(
          child: Text('Boa noite'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Principal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            )
          ],
        ),
      ),
    );
  }
}
