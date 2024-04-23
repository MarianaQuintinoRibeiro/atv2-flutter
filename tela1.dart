import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'tela2.dart'; // Importando o arquivo Tela2.dart

class Tela1 extends StatelessWidget { // Classe Tela1 que herda de StatelessWidget
  const Tela1({super.key}); // Construtor constante para Tela1

  @override
  Widget build(BuildContext context) { // Método build que retorna o widget da tela Tela1
    return Scaffold( // Scaffold: Widget responsável por criar um layout "padrão" para a tela
      appBar: AppBar( // AppBar: Barra localizada na parte superior da tela
        title: const Text('Primeira tela "Rota" '), // Título da AppBar
        centerTitle: true, // Centraliza o título na AppBar
        backgroundColor: Colors.amber, // Cor de fundo da AppBar
      ),
      body: Center( // Center: Widget que centraliza o conteúdo na tela
        child: ElevatedButton( // Botão elevado que leva para a Tela2
          child: const Text('Levar para Tela 2'), // Texto exibido no botão
          onPressed: () { // Ação ao pressionar o botão
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}
