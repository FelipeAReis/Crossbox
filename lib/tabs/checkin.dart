import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class CheckIn extends StatefulWidget {
  @override
  _CheckInState createState() =>  _CheckInState();
  final String horario;
  CheckIn(this.horario) ;

}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return 

Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                            radius: 25,
                            
                            backgroundImage: new NetworkImage("https://scontent.fbhz8-1.fna.fbcdn.net/v/t1.0-9/13612364_1043240305767095_5882966014649308794_n.jpg?_nc_cat=102&_nc_ohc=V0D3YhteaQYAQlyyy-phUUYPrEkUowlWR86mXkvhXBUGo89HXqKfkCP4g&_nc_ht=scontent.fbhz8-1.fna&oh=910b0764eca82b6661797eb76c07aa74&oe=5E831D97"),
                            backgroundColor: Colors.indigoAccent,
                            foregroundColor: Colors.white,
                            
                          ),
                  trailing: Column(
                    children: <Widget>[

                                  Text("Crossfit",style: TextStyle(fontWeight: FontWeight.bold) ,),
                                   Text("12"),
                                    Text("Vagas")
                                  
                              ],
                            ), 
                  title: Text('Nome do Professor'),
                  subtitle: Text('${widget.horario}'),
                  
                ),
              ),
              actions: <Widget>[
                IconSlideAction(
                  caption: 'Check-in', 
                  color: Colors.green,
                  icon: Icons.pin_drop,
                  onTap: () {},
                ),
                
              ],
              secondaryActions: <Widget>[
                IconSlideAction(
                  caption: 'Cancelar',
                  foregroundColor: Colors.white,
                  color: Colors.red,
                  icon: Icons.cancel,
                  onTap: () {},
                ),
               
              ],
            ),
    );

  }
}