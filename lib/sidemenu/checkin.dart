import 'package:flutter/material.dart';


class Checkin extends StatefulWidget {
  @override
  _CheckinState createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Checkin"),),

      body: Container(
            child: Text("Escrito do Checkin"),


      ),

    );
  }
}