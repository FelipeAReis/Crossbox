import 'package:flutter/material.dart';


class PersonalRecords extends StatefulWidget {
  @override
  _PersonalRecordsState createState() => _PersonalRecordsState();
}

class _PersonalRecordsState extends State<PersonalRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Personal Records"),),

      body: Container(
            child: Text("Escrito do Personal Records"),


      ),

    );
  }
}