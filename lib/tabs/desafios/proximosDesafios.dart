import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class ProximosDesafios extends StatefulWidget {
  @override
  _ProximosDesafiosState createState() => _ProximosDesafiosState();
}

class _ProximosDesafiosState extends State<ProximosDesafios> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                color: Colors.white,
                child: ListTile(
                  leading:  CircleAvatar(
                            radius: 25,
                            
                            backgroundImage: new NetworkImage("https://digitalartes.com.br/assets/images/70446941-145726356683246-2444561182991866408-n-400x400.jpeg"),
                            backgroundColor: Colors.indigoAccent,
                            foregroundColor: Colors.white,
                           
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
                  caption: 'Aceitar', 
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
                  caption: 'Editar',
                  foregroundColor: Colors.black,
                  color: Colors.black12,
                  icon: Icons.edit,
                  onTap: () {},
                ),
                IconSlideAction(
                  caption: 'Negar',
                  color: Colors.red,
                  icon: Icons.do_not_disturb_alt,
                  onTap: (){},
                ),
              ],
            ),
    );
  } 
  }