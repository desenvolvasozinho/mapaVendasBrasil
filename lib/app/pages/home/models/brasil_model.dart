import 'package:flutter/material.dart';

class VendaBrasilModel {
  String sigla;
  String nome;
  int quantidadeVendas;
  double valorVendas;
  Color cor;

  VendaBrasilModel({
    required this.sigla,
    required this.nome,
    required this.quantidadeVendas,
    required this.valorVendas,
    required this.cor,
  });

  // Mock de dados para os estados do Brasil
  static List<VendaBrasilModel> vendaBrasilModelMock() {
    return [
      VendaBrasilModel(
        sigla: 'PR',
        nome: 'Paraná',
        quantidadeVendas: 250,
        valorVendas: 50000.00,
        cor: Colors.green,
      ),
      VendaBrasilModel(
        sigla: 'SP',
        nome: 'São Paulo',
        quantidadeVendas: 1000,
        valorVendas: 200000.00,
        cor: Colors.blue,
      ),
      VendaBrasilModel(
        sigla: 'RJ',
        nome: 'Rio de Janeiro',
        quantidadeVendas: 600,
        valorVendas: 120000.00,
        cor: Colors.orange,
      ),
      VendaBrasilModel(
        sigla: 'MG',
        nome: 'Minas Gerais',
        quantidadeVendas: 450,
        valorVendas: 90000.00,
        cor: Colors.purple,
      ),
      VendaBrasilModel(
        sigla: 'RS',
        nome: 'Rio Grande do Sul',
        quantidadeVendas: 300,
        valorVendas: 60000.00,
        cor: Colors.red,
      ),
    ];
  }
}
