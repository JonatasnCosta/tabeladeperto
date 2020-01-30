import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text('Tabela de leitura',
             style: TextStyle(fontFamily: 'Varela',
             fontSize: 30.0,
             fontWeight: FontWeight.bold,
             color: Color(0xff473d3a)
             )
             ),
           Padding(
             padding: EdgeInsets.only(right: 15.0),
             child: Container(
               height: 40.0,
               width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
               image:   DecorationImage(
                  image: AssetImage('assets/logo.jpg'),
                  fit: BoxFit.cover
               )
              ),
             )
           )
           ],
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.only( right: 45.0),
            child: Container(
            child: Text('Tabela de leitua de perto digital ! .',
            style: TextStyle(fontFamily: 'Nunito',
            fontSize: 17.0,
            fontWeight: FontWeight.w300,
            color: Color(0xffb0aaa7)
               )
              )
             )
          ),
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Selecione uma tabela abaixo:',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 17.0,
              color: Color(0xff473d3a)
              )
            )    
          ],
         ),
         SizedBox(height: 10.0),
         Container(
           height: 700.0,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: <Widget>[

             ],
           ),
         )
        ],
      )
    );
  }
}