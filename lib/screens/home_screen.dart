import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.home, size: 70),
            const SizedBox(height: 20),
            const Text(
              'Bem-vindo!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Este é um exemplo de aplicativo Flutter com cinco telas.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            _botao(context, 'Perfil', Icons.person, '/perfil'),
            _botao(context, 'Produtos', Icons.shopping_bag, '/produtos'),
            _botao(context, 'Favoritos', Icons.favorite, '/favoritos'),
            _botao(context, 'Configurações', Icons.settings, '/configuracoes'),
          ],
        ),
      ),
    );
  }

  Widget _botao(BuildContext context, String texto, IconData icone, String rota) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () => Navigator.pushNamed(context, rota),
          icon: Icon(icone),
          label: Text(texto),
        ),
      ),
    );
  }
}
