import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/perfil_screen.dart';
import 'screens/produtos_screen.dart';
import 'screens/favoritos_screen.dart';
import 'screens/configuracoes_screen.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto 5 Telas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (_) => const HomeScreen(),
        '/perfil': (_) => const PerfilScreen(),
        '/produtos': (_) => const ProdutosScreen(),
        '/favoritos': (_) => const FavoritosScreen(),
        '/configuracoes': (_) => const ConfiguracoesScreen(),
      },
    );
  }
}
