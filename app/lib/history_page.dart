import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Histórico de Fichas"),
        automaticallyImplyLeading: false, // <- Remove a seta
      ),
      body: ListView(
        children: const [
          ListTile(title: Text("Treino Peito - 01/05")),
          ListTile(title: Text("Treino Costas - 03/05")),
          ListTile(title: Text("Treino Pernas - 06/05")),
        ],
      ),
    );
  }
}
