import 'package:flutter/material.dart';

class NewFichaPage extends StatelessWidget {
  const NewFichaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar Nova Ficha"),
        automaticallyImplyLeading: false, // <- Remove a seta
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                decoration: const InputDecoration(labelText: 'Nome do treino')),
            const SizedBox(height: 16),
            TextField(
              maxLines: 5,
              decoration:
                  const InputDecoration(labelText: 'Descrição dos exercícios'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Salvar ficha aqui
              },
              child: const Text("Salvar Ficha"),
            )
          ],
        ),
      ),
    );
  }
}
