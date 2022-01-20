import 'package:flutter/material.dart';

class CadastroDiarias extends StatelessWidget {
  const CadastroDiarias({Key? key}) : super(key: key);

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
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),labelText: "Nome do Cliente"
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),labelText: "Valor",
              ), keyboardType: TextInputType.number,
            ),
          ),
          Row(
               children: <Widget> [
                 Expanded(
                   child: TextButton(
                     onPressed: () {
                       showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2010), lastDate: DateTime(2025));
                     },
                     child: const Text("Escolha uma Data"),
                     //style: ButtonStyle(backgroundColor: )
                     //style: BoxDecoration(color: ),
                     //style: const ButtonStyle(),
                   )
                 )
               ]
            ),
          ElevatedButton(
            onPressed: () {  },
            child: const Text("Salvar"),
          )
        ],
      ) ,
    );
  }
}
