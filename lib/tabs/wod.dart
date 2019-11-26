import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Wod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Html(data:"<center><br><br>ajskdjaskd<br>asdsada<br><br>asdsadasdas<br>asdsad</center>")
    );
  }
}