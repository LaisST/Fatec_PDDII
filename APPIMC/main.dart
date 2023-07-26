import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String _infoText = 'Informe seus dados!';
  void _calcularIMC() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      altura = altura / 100;

      double imc = peso / (altura * altura);
      if (imc < 18.6) {
        _infoText = "Abaixo do Peso ($imc)";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Calculadora IMC",
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ]),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.person_outline,
            size: 120.0,
            color: Colors.grey,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso (Kg)",
              labelStyle: TextStyle(
                color: Colors.green,
              ),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 25.0,
            ),
            controller: pesoController,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura (cm)",
              labelStyle: TextStyle(
                color: Colors.green,
              ),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 25.0,
            ),
            controller: alturaController,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Container(
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  _calcularIMC();
                },
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          Text("$_infoText")
        ],
      ),
    );
  }
}
