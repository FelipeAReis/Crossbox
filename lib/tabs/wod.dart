import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Wod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
      child: Html(data: """
        
      
        <h5>Aquecimento</h5>
      
        <hr />
          <p>4' for Mobolity </p>
          <p>4' Amrap </p>
        <br>
        <span>- 15 Flexões Plantares </span>
        <span>- 10 Sit Ups</span>
        <span>- 20" HS Hold </span>
        <p> Strenght</p>
        <p> Cap 5' </p>
        <span>- 3x10 Remada Curvada (Carga Livre) </span>
         

       <h5> Técnica</h5>
        <hr>
        <p> 15' - Push Press </p>
        
        

        <h5> Wod </h5>
     
        <hr>
        <p> Cap 14'</p>
        <span> 200 D.u/400 S.U</span>
        <span> 1,6 Km Run</span>

         """));
  }
}
