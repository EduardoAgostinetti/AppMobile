import 'package:flutter/material.dart';

class CodeVerificationPage extends StatelessWidget {
  const CodeVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.verified_user, size: 80, color: Color(0xFF00796B)),
              const SizedBox(height: 24),
              const Text(
                'Verificar Código',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF333333)),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: const InputDecoration(labelText: 'Código de verificação'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/reset'),
                child: const Text('Verificar'),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Não recebeu o código?", style: TextStyle(color: Color(0xFF333333))),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/forgot'),
                    child: const Text("Voltar"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
