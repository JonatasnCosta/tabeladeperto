import 'package:flutter/material.dart';

class Tabela extends StatefulWidget {
  @override
  _TabelaState createState() => _TabelaState();
}

class _TabelaState extends State<Tabela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
          SizedBox(height: 100.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('1,25m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 30.0
              ),
              ),
              Container(
            width: 140.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Carl Zeiss',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 15.0
              ),
              ),
                Text('J6',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 15.0
              ),
                )
              ],
            ),
          )
         ],
        ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('1,00m'),
              Container(
            width: 140.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Carl Zeiss'),
                Text('J5')
              ],
            ),
          )
         ],
        ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,75m'),
              Container(
            width: 140.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Carl Zeiss'),
                Text('J4')
              ],
            ),
          )
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,62m'),
              Container(
            width: 140.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Carl Zeiss'),
                Text('J3')
              ],
            ),
          )
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,50m'),
              Container(
            width: 140.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Carl Zeiss'),
                Text('J2')
              ],
            ),
          )
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,37m'),
              Container(
            width: 140.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Carl Zeiss'),
                Text('J1')
              ],
            ),
          )
         ],
        )
      ],
      ),
    );
  
  }
}


 