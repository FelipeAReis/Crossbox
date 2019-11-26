import 'package:flutter/material.dart';
import 'package:iftcross/tabs/checkin.dart';
import 'package:iftcross/tabs/desafios/ativos.dart';
import 'package:iftcross/tabs/desafios/proximosDesafios.dart';
import 'package:iftcross/tabs/wod.dart';




class BodyPrincipal extends StatefulWidget {
  @override
  _BodyPrincipalState createState() => _BodyPrincipalState();
}

class _BodyPrincipalState extends State<BodyPrincipal> with TickerProviderStateMixin{

  TabController _tabController;
  TabController _tabController2;

  

  @override
  void initState() {
   
    super.initState();
        _tabController = new TabController(length: 2, vsync: this);
        _tabController2 = new TabController(length: 7, vsync: this);

        }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: MediaQuery.of(context).size.width,
      child:  Column( 
      
        
      children: <Widget>[
          
          Padding(
            padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
            child: Row(

                      children: <Widget>[

                        new ClipOval(
                              child: Image(image: new AssetImage("assets/logo.png"),
                              width: 60,
                              height: 60,) ,
                              
                            ),

                                Padding(
                                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                  
                                  child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                      new Text("Nome do Crossfit",
                                                                style: TextStyle(fontSize: 24,
                                                                fontWeight: FontWeight.bold ),),
                                                      new Text("Endereço do Box"),
                                                              ],
                                                )
                                       ),
                                      ],
                       ),
                   ),
       
          Card(
            
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
            child: Container(
            padding: EdgeInsets.fromLTRB(10,15, 10, 0),
              child: Column( children: <Widget>[
                          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              
                              children: <Widget>[
                              new Padding( padding: EdgeInsets.only(left: 15),),
                              new Icon(Icons.people),
                              new Padding( padding: EdgeInsets.only(left: 15),),
                              new Text("Desafios", 
                              style: new TextStyle( fontSize: 18, fontWeight: FontWeight.bold,
                              ),
                              ),
                              ],
                            ), 
                            Container(
                                          child: TabBar(
                                                            labelColor: Colors.black,
                                                            controller: _tabController,
                                                            tabs: <Widget>[
                                                            Tab(text: 'Novos',),
                                                            Tab( text: 'Ativos',)
                                                            ],) ,
                                        ),

                                    
                            Container(
                              height: 90,
                              child: 
                                              TabBarView(
                                                controller: _tabController,
                                                children: <Widget>[
                                                  
                                                  ProximosDesafios(),
                                                  DesafiosAtivos(),
                                                  
                                                ],
                                              )
                              ),
                               
                               
                               
                              Container(
                                 //height: 10,
                                 margin: EdgeInsets.all(0),
                                 padding: EdgeInsets.all(0),
                                 
                                 child: Row(
                                
                  
                                children: <Widget>[
                                 
                                  Expanded(
                                    
                                    
                                    child: Container(
                                        
                                        alignment: Alignment.centerLeft ,
                                        child: Icon(Icons.arrow_left, size: 16,),
                                    )
                                    
                                 
                                  ),

                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.arrow_right, size: 16,),
                                    ),
                                  ),
                      
                                ],
                              ),
                               ),



   

                            ],
                            
                            ),
              ), 
          ),

          Card(
            
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
            child: Container(
              padding: EdgeInsets.fromLTRB(10,15, 10, 0),
              child: Column(
                    children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              
                              children: <Widget>[
                              new Padding( padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
                              new Icon(Icons.person_pin_circle),
                              new Padding( padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
                              new Text("Check-in", 
                              style: new TextStyle( fontSize: 18, fontWeight: FontWeight.bold,
                              ),
                              ),
                              ],
                            ), 
                              Container(
                                          child: TabBar( 
                                                            isScrollable: true,
                                                            labelColor: Colors.black,
                                                            controller: _tabController2,
                                                            tabs: <Widget>[
                                                            Tab(text: '2:00',),
                                                            Tab( text: '3:00',),
                                                            Tab( text: '5:00',),
                                                            Tab( text: '6:00',),
                                                            Tab( text: '7:00',),
                                                            Tab( text: '8:00',),
                                                            Tab( text: '9:00',),


                                                            ],) ,
                                        ),
                            Container(
                              height: 90,
                              child: 
                                              TabBarView(
                                                controller: _tabController2,
                                                children: <Widget>[
                                                 CheckIn('2:00'),
                                                 CheckIn('3:00'),
                                                 CheckIn('5:00'),
                                                 CheckIn('6:00'),
                                                 CheckIn('7:00'),
                                                 CheckIn('8:00'),
                                                 CheckIn('9:00'),
                                                  
                                                ],
                                              )
                              ),
                                Container(
                                 //height: 10,
                                 margin: EdgeInsets.all(0),
                                 padding: EdgeInsets.all(0),
                                 
                                 child: Row(
                                
                  
                                children: <Widget>[
                                 
                                  Expanded(
                                    
                                    
                                    child: Container(
                                        
                                        alignment: Alignment.centerLeft ,
                                        child: Icon(Icons.arrow_left, size: 16,),
                                    )
                                    
                                 
                                  ),

                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.arrow_right, size: 16,),
                                    ),
                                  ),
                      
                                ],
                              ),
                               ),  
                    ],
              ),


            ),
          ),
          
          Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
          child: Container(
            padding: EdgeInsets.fromLTRB(10,15, 10, 0),
            child: Column(
              children: <Widget>[
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: <Widget>[
                            new Padding( padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
                            new Icon(Icons.fitness_center),
                            new Padding( padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
                            new Text("Wod do Dia ", 
                            style: new TextStyle( fontSize: 18, fontWeight: FontWeight.bold,
                            ),
                            ),
                            ],
                          ), 
                          Container(
                                  height: 2,
                                  color: Colors.red,
                              ),

                          Container(
                                  child: Wod(),

                              ),

              ],

            ),



          ),


        ),

                 ],
               )
    );
          


  }
}