import 'package:diaristasimone/Screen/Cadastro_Diarias.dart';
import 'package:diaristasimone/Screen/HomePage.dart';
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
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme(color: Colors.pinkAccent)
      ),
      home: PaginaPrincipal(),
      routes: {
        '/cadastroDiarias': (_) => CadastroDiarias()
      },
    );
  }
}


