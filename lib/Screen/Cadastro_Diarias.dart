import 'package:diaristasimone/models/models_diaria.dart';
import 'package:flutter/material.dart';

class CadastroDiarias extends StatelessWidget {
  CadastroDiarias({Key? key}) : super(key: key);

  final TextEditingController _nomeCliente = TextEditingController();
  final TextEditingController _valorDiarista = TextEditingController();
  final TextEditingController _enderecoCliente = TextEditingController();
  final TextEditingController _data = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastrar Diarias", style: TextStyle(),
        ),
        toolbarHeight: 60.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _nomeCliente,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),labelText: "Nome do Cliente"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _valorDiarista,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),labelText: "Valor",
              ), keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _data,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),labelText: "Escolha uma Data"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _enderecoCliente,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),labelText: "Endereço"
              ),
            ),
          ),
          Campos(_enderecoCliente, 'tudo'),
          ElevatedButton(
            onPressed: () {
              final String cliente = _nomeCliente.text;
              final double? valor = double.tryParse(_valorDiarista.text);
              final String data_clien = _data.text;
              final String endereco_client = _enderecoCliente.text;

              final DiariasModels newDiaria = DiariasModels(cliente, valor!, data_clien, endereco_client);

              Navigator.pop(context, newDiaria);
            },
            child: const Text("Salvar"),
          )
        ],
      ) ,
    );
  }
}

Campos(controller, texto) {
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      controller: controller,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),labelText: 'texto'
      ),
    ),
  );
}
