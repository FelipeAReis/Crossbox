import 'package:flutter/material.dart';


class Financeiro extends StatefulWidget {
  @override
  _FinanceiroState createState() => _FinanceiroState();
}

class _FinanceiroState extends State<Financeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Financeiro"),),

      body: Container(
            child: Text("Escrito do financeiro"),


      ),

    );
  }
}