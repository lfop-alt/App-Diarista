import 'package:flutter/material.dart';

void main() {
  runApp(const Diarista());
}

class Diarista extends StatelessWidget {
  const Diarista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: PaginaPrincipal(),
    );
  }
}


class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {

  final _tamanho = const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.4);
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);
  final _sizedbox = const SizedBox(width: 8,);
  final List<String> lista = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon: Icon(Icons.person)),

          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 33,)),
          ],
          title: const Text("Simone Oliveira", style: TextStyle(),
          ),
          toolbarHeight: 60.0,

        ),
        body: Container(
          child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.schedule, size: 30,),
                          title: Text("Rosana de Souza", style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("17/02/2022 - 08:00",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(onPressed: () {}, child: const Text("Feito")),
                            _sizedbox,
                            TextButton(onPressed: () {}, child: const Text("Alterar")),
                            _sizedbox,
                            TextButton(onPressed: () {}, child: const Text("Remover"))
                          ],
                        )
                      ]
                  )
              );
            }),
        ),
    );
  }
}

