import 'package:flutter/material.dart';


class Wods extends StatefulWidget {
  @override
  _WodsState createState() => _WodsState();
}

class _WodsState extends State<Wods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Wods"),),

      body: Container(
            child: Text("Escrito do Wods"),


      ),

    );
  }
}