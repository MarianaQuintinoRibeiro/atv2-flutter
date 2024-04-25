import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'login.dart';
import 'imc.dart';
import 'calculadora.dart';

class Tela1 extends StatelessWidget { // Classe Tela1 que herda de StatelessWidget
  const Tela1({super.key}); // Construtor constante para Tela1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terceira tela "Rota do menu"'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context, '/segunda');
              },
              child: const Text('imc'),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context, '/terceira');
              },
              child: const Text('calculadora'),
            ),

            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context, '/quarta');
              },
              child: const Text('login'),
            ),
          ],
        ),

      ),
    );
  }
}