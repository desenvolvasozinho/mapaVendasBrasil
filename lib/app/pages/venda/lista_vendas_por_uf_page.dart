import 'package:flutter/material.dart';

class ListaVendasPorUfPage extends StatefulWidget {
  const ListaVendasPorUfPage(
      {super.key, required this.uf, required this.valorVenda});
  final String uf;
  final double valorVenda;

  @override
  State<ListaVendasPorUfPage> createState() => _ListaVendasPorUfPageState();
}

class _ListaVendasPorUfPageState extends State<ListaVendasPorUfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem de vendas ${widget.uf}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total de vendas'),
                    Text('R\$ ${widget.valorVenda}'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('Cidade Nome'),
                    subtitle: Text('Valor venda'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
