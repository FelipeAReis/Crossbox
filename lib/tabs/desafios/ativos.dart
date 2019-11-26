import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class DesafiosAtivos extends StatefulWidget {
  @override
  _DesafiosAtivosState createState() => _DesafiosAtivosState();
}

class _DesafiosAtivosState extends State<DesafiosAtivos> {
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
                            
                            backgroundImage: new NetworkImage("https://scontent.fbhz8-1.fna.fbcdn.net/v/t1.0-9/21761802_1452932971453531_42981012389709770_n.jpg?_nc_cat=106&_nc_ohc=lyPCoe-Z92QAQlQJuJ2SgPfM8jYK1DFCBi2rPok88xgAegdb84_l0Vsdw&_nc_ht=scontent.fbhz8-1.fna&oh=fdecd215ed9a7a9f78ecad6d80c3a078&oe=5E4F11AA"),
                            backgroundColor: Colors.indigoAccent,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.av_timer),
                          ),
                  trailing: Column(
                    children: <Widget>[

                                  Text(""),
                                  Text("Aposta", style: TextStyle( fontWeight: FontWeight.bold),),
                                  Text("\$ 15", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red))
                              ],
                            ), 
                  title: Text('Nome do Desafiante'),
                  subtitle: Text('Descrição detalhada do desafio '),
                  
                ),
              ),
              actions: <Widget>[
                IconSlideAction(
                  caption: 'Confirmar', 
                  color: Colors.green,
                  icon: Icons.check,
                  onTap: () {},
                ),
                IconSlideAction(
                  caption: 'Próximo',
                  foregroundColor: Colors.black,
                  color: Colors.black12,
                  icon: Icons.fast_forward,
                  onTap: () {},
                ),
              ],
              secondaryActions: <Widget>[
                IconSlideAction(
                  caption: 'Lançar',
                  foregroundColor: Colors.black,
                  color: Colors.black12,
                  icon: Icons.av_timer,
                  onTap: () {},
                ),
                 IconSlideAction(
                  caption: 'Mediação',
                  foregroundColor: Colors.white,
                  color: Colors.red,
                  icon: Icons.live_help,
                  onTap: () {},
                ),
               
              ],
            ),
    );

  }
}