import 'package:flutter/material.dart';

void main() {
  runApp(imc());
}

class imc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Variáveis para armazenar os valores dos operandos
  double _value1 = 0;
  double _value2 = 0;

  // Variável para armazenar o resultado das operações
  double _result = 0;

  // Função para somar os valores dos operandos
  void _sum() {
    setState(() {
      _result = _value1 / (_value2*_value2);
    });
  }

  // Função para subtrair os valores dos operandos


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Básica de IMC'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Campo de entrada para o primeiro operando
            TextField(
              keyboardType: TextInputType.number,
              decoration:
              InputDecoration(labelText: 'Digite o seu Peso (KG)'),
              onChanged: (value) {
                _value1 = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20.0),
            // Campo de entrada para o segundo operando
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Digite sua altura (m)'),
              onChanged: (value) {
                _value2 = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20.0),
            // Botões para realizar as operações
            ElevatedButton(
              onPressed: _sum,
              child: Text('Resultado'),
            ),
            SizedBox(height: 2.0),

            // Exibição do resultado
            Text(
              'Resultado: $_result',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}