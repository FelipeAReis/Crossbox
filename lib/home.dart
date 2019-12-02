import 'package:flutter/material.dart';
import 'package:CrossBox/bodyPrincipal.dart';
import 'drawer.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
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

        );
  }
}