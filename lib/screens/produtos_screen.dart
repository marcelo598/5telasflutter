import 'package:flutter/material.dart';

class ProdutosScreen extends StatelessWidget {
  const ProdutosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = [
      ('Notebook', 'R\$ 3.500,00', Icons.laptop),
      ('Celular', 'R\$ 1.800,00', Icons.smartphone),
      ('Fone de ouvido', 'R\$ 250,00', Icons.headphones),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Produtos')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final produto = produtos[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(produto.$3)),
              title: Text(produto.$1),
              subtitle: Text(produto.$2),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
