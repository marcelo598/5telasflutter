import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 55,
              child: Icon(Icons.person, size: 60),
            ),
            const SizedBox(height: 20),
            const Text(
              'Usuário Flutter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('usuario@email.com'),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Editar perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
