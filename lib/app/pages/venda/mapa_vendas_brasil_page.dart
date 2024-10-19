import 'package:flutter/material.dart';
import 'package:mapa/app/pages/home/models/brasil_model.dart';
import 'package:mapa/app/pages/venda/lista_vendas_por_uf_page.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapaVendasBrasilPage extends StatefulWidget {
  const MapaVendasBrasilPage({super.key});

  @override
  State<MapaVendasBrasilPage> createState() => _MapaVendasBrasilPageState();
}

class _MapaVendasBrasilPageState extends State<MapaVendasBrasilPage> {
  late List<VendaBrasilModel> _listaVendas;
  late MapShapeSource _mapSource;

  @override
  void initState() {
    super.initState();
    _listaVendas = VendaBrasilModel.vendaBrasilModelMock();
    _mapSource = MapShapeSource.asset(
      'assets/geojson/brasil.json', // Mapa do Brasil em formato GeoJSON
      shapeDataField: 'sigla', // Campo do GeoJSON que corresponde ao estado
      dataCount: _listaVendas.length,
      primaryValueMapper: (int index) => _listaVendas[index].sigla,
      shapeColorValueMapper: (int index) => _listaVendas[index].cor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa de vendas'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SfMaps(
          layers: [
            MapShapeLayer(
              loadingBuilder: (context) {
                return const Center(
                  child: Text('Carregando mapa de vendas.'),
                );
              },
              source: _mapSource,
              showDataLabels: true,
              onSelectionChanged: (value) {
                if (mounted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListaVendasPorUfPage(
                        uf: _listaVendas[value].sigla,
                        valorVenda: _listaVendas[value].valorVendas,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
