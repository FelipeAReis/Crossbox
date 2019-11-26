import 'package:flutter/material.dart';


class Campeonato extends StatefulWidget {
  @override
  _CampeonatoState createState() => _CampeonatoState();
}

class _CampeonatoState extends State<Campeonato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Campeonato"),),

      body: Container(
            child: Text("Escrito do Campeonato"),


      ),

    );
  }
}