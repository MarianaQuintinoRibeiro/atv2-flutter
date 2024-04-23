import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'Tela1.dart'; // Importando o arquivo Tela1.dart
import 'tela2.dart';
import 'tela3.dart';

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
      routes: {'/':(context) => Tela1(),
      '/segunda':(context) => Tela2(),
      '/terceira':(context) => Tela3(),
      },
    );
  }
}
