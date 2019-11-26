import 'package:flutter/material.dart';
import 'package:iftcross/bodyPrincipal.dart';
import 'drawer.dart';

class AppBarMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


void main(){
  runApp(MaterialApp(

    title: "CrossBox",

    theme: ThemeData(
      
     
      primarySwatch: Colors.red
      ),
    
    home: 
      Scaffold(
        
        endDrawer: NovoDrawer(),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
                children: 
                  <Widget>
                  [Image.asset("assets/logo_crossbox.png", 
                    fit: BoxFit.scaleDown,
                    height: 32,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("CrossBox",
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      ),
                    ),
                ]
              ,
              ), 
              //final title
          ),

          body: SingleChildScrollView( child: BodyPrincipal(),) 

        ),


    ),
  );





}



