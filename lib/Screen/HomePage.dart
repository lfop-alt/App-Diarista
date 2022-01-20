import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {

  final _sizedbox = const SizedBox(width: 8,);
  final List<String> lista = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(onPressed: (){},icon: Icon(Icons.person)),

        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/cadastroDiarias');
          },
          icon: Icon(Icons.add, size: 33,)),
        ],
        title: const Text("Diarias", style: TextStyle(),
        ),
        toolbarHeight: 60.0,

      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            const DrawerHeader(decoration: BoxDecoration(color: Colors.pinkAccent),
                child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 35),),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Cadastro'),
              onTap: () {
                Navigator.pushNamed(context, '/cadastroDiarias');
              },
            )
          ],
        ),
      ),

      body: ListView.builder(
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
                        subtitle: Text("17/02/2022 - RS 150,00",
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
    );
  }
}