import 'package:flutter/material.dart';

class ConfiguracoesScreen extends StatefulWidget {
  const ConfiguracoesScreen({super.key});

  @override
  State<ConfiguracoesScreen> createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends State<ConfiguracoesScreen> {
  bool notificacoes = true;
  bool modoEscuro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Notificações'),
            subtitle: const Text('Receber notificações do aplicativo'),
            secondary: const Icon(Icons.notifications),
            value: notificacoes,
            onChanged: (valor) {
              setState(() => notificacoes = valor);
            },
          ),
          SwitchListTile(
            title: const Text('Modo escuro'),
            subtitle: const Text('Alterar aparência do aplicativo'),
            secondary: const Icon(Icons.dark_mode),
            value: modoEscuro,
            onChanged: (valor) {
              setState(() => modoEscuro = valor);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Sobre o aplicativo'),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Projeto 5 Telas',
                applicationVersion: '1.0.0',
                applicationLegalese: 'Projeto acadêmico em Flutter',
              );
            },
          ),
        ],
      ),
    );
  }
}
