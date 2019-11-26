import 'package:flutter/material.dart';


class ConfiguracoesApp extends StatefulWidget {
  @override
  _ConfiguracoesAppState createState() => _ConfiguracoesAppState();
}

class _ConfiguracoesAppState extends State<ConfiguracoesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Configurações"),),

      body: Container(
            child: 
            
            Padding(
                padding: EdgeInsets.all(25),
                child: Text("Escrito do financeiro"),


            ),
            


      ),

    );
  }
}