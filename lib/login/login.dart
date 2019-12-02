import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3
                ),
                ]
                // border: Border.all(),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child:  TextField(
                
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.email,
                    color: Colors.red,
                    
                  ),
                  hintText: 'Email'
                ),
                
              ),
              ) 

            ),




          ],
        ),
      ),
    ),
    );
  }
}
