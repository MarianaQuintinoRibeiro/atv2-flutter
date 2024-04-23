import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'login.dart';
import 'imc.dart';
import 'calculadora.dart';

void main() { // Função principal que inicializa o app Flutter
  runApp(const MyApp()); // Executa o widget MyApp e inicia o app
}

class MyApp extends StatelessWidget { // Classe MyApp que herda de StatelessWidget
  const MyApp({super.key}); // Construtor constante para MyApp

  @override
  Widget build(BuildContext context) { // Método build que retorna o widget principal do app
    return MaterialApp( // MaterialApp: Widget que define as configurações gerais do app
      debugShowCheckedModeBanner: false, // Desativa o banner de debug no canto superior direito
      title: 'Rotas Nomeadas',
      initialRoute: '/',
      routes: {'/':(context) => login(),
        '/segunda':(context) => imc(),
        '/terceira':(context) => calculadora(),
      },
    );
  }
}
