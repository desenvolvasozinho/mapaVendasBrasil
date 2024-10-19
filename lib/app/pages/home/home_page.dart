import 'package:flutter/material.dart';
import 'package:mapa/app/pages/venda/mapa_vendas_brasil_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App mapa de vendas'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MapaVendasBrasilPage(),
                ),
              );
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text('Ver mapa de vendas'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
