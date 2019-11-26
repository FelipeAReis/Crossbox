import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Wod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Html(
        data:"""
        
        <div>  
        <h2>Aquecimento</h2>

          <p>4' for Mobolity </p>
          <p>4' Amrap </p>
        <br>
        <br>
        <span>- 15 Flexões Plantares </span>
        <span>- 10 Sit Ups</span>
        <span>- 20" HS Hold </span>
         <hr />

        <p> Strenght</p>

        <p> Cap 5' </p>
        <span>- 3x10 Remada Curvada (Carga Livre) </span>

        </div> 


        <div> 
        <h2> Técnica</h2>

        <p> 15' - Push Press </p>

        </div>


        <div> 
        <h2> Wod </h2>
        <p> Cap 14'</p>
        <span>200 D.u/400 S.U</span>
        <span>1,6 Km Run</span>
        
        <hr>
        
        
        
        </div>


         """)
    );
  }
}