import 'package:flutter/material.dart';
import 'package:iftcross/champions_icons.dart';
import 'package:iftcross/sidemenu/campeonatos.dart';
import 'package:iftcross/sidemenu/checkin.dart';
import 'package:iftcross/sidemenu/configuracoes.dart';
import 'package:iftcross/sidemenu/desafios.dart';
import 'package:iftcross/sidemenu/financeiro.dart';
import 'package:iftcross/sidemenu/personalRecords.dart';
import 'package:iftcross/sidemenu/timeline.dart';
import 'package:iftcross/sidemenu/wods.dart';


class NovoDrawer extends StatefulWidget {
  @override
  _NovoDrawerState createState() => _NovoDrawerState();
}

class _NovoDrawerState extends State<NovoDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          
          UserAccountsDrawerHeader(
            accountName: new Text("Rafael Albanez"),
            accountEmail: new Text("rafael@crossfitbadbull.com.br"),
            currentAccountPicture: new GestureDetector(
              child:  new CircleAvatar(
                
                backgroundImage: new NetworkImage("https://digitalartes.com.br/assets/images/37923894-511975722605871-2923534683054538752-n-241x197.jpg"),
              ),
            ),
            otherAccountsPictures: <Widget>[
              new GestureDetector(
              child: Column(children: <Widget>[
                        
                        new Icon(Icons.settings,
                                  color: Colors.white,
                                  size: 22.0,
                                  ),
                        new Text("Editar", 
                                  style: TextStyle(color: Colors.white, fontSize: 10.0),),
 
              ],),
              onTap: (){

                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ConfiguracoesApp() ));

              }, 
              
            )
            ],
          ),
          Card(
              
            margin: EdgeInsets.fromLTRB(3, 2, 3, 15),
            child: 
            Container(

                        padding: EdgeInsets.all(11),
                        
 
                        height: 40,
                        decoration: BoxDecoration(
                          
                          
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent ,Colors.black26], 
                          ),
                          
                          
                        ),
                        child: Row(
                          
                        
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          
                          
                          children: <Widget>[
                              Container(
                                
                                      child: Row(
                                              
                                            
                                              children: <Widget>[
                                              new Icon(Icons.attach_money),
                                                new Text(" Saldo",
                                                          style: TextStyle(fontSize: 18, ),
                                                          
                                                          ),
                                              ],
                                            ),
                              ),
                              Container(
                               child: new Text("1.000 CC",
                              
                                        textAlign: TextAlign.right,
                                        softWrap: true,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                        
                                          ),
                              
                              ) 
                             ],
                      ),
                       )


          ),
          ListTile(
            trailing: new Icon(Icons.account_balance),
            title: Text('Financeiro'),
            onTap: () { 
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Financeiro() )
                );
                 },
          ),


          ListTile(
            trailing: new Icon(Icons.person),
            title: Text('Desafios'),
            onTap: () {  
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Desafios())
                  );

            },
          ),


          ListTile(
            trailing: new Icon(Icons.fitness_center),
            title: Text('Wods'),
            onTap: () { 
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Wods())
                );
             },
          ),



          ListTile(
            trailing: new Icon(Icons.person_pin_circle),
            title: Text('Check-in'),
            onTap: () { 
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Checkin())
                );
             },
          ),


          ListTile(
            trailing: new Icon(Icons.timeline),
            title: Text('Timeline'),
            onTap: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute( builder: (context) => Timeline()) );


             },
          ),


          ListTile(
            trailing: new Icon(Champions.award_1),
            title: Text('Personal Records'),
            onTap: () { 
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => PersonalRecords())
                  
                  );

             },
          ),


          ListTile(
            trailing: new Icon(Champions.trophy),
            title: Text('Campeonatos'),
            onTap: () { 
              Navigator.push(
                context,
                
                MaterialPageRoute(builder: (context) => Campeonato()));

             },
          ),








          Divider( color: Colors.black45,),
          ListTile(
            title: Text('Sair'),
            trailing: new Icon(Icons.exit_to_app),
            onTap: () => Navigator.of(context).pop(),
            
          ),
        ],
      ),
    );
  }
}




