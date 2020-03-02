import 'package:flutter/material.dart';



class TabelaAcomodacao extends StatelessWidget {
  final assetPath, cookiename;
    TabelaAcomodacao({this.assetPath, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar( 
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff545d68)),
            onPressed: (){ 
              Navigator.of(context).pop();
              },
        ) ,
        title: Text("Tabela de Perto",
        style: TextStyle(
          fontFamily: 'Varela',
          fontSize: 20.0,
          color: Color(0xff545d68)
        ),
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Color(0xff545d68)),
            onPressed: (){},
        ) ,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Tabela de Acomodação - Emétrope',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xfff17532)
            )
          )
          ),
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Distância                 ACC(D)s\n'
                   '  6 m                           0,16\n'
                   '  3 m                           0,33\n'
                   '  1 m                           1,00\n'
                   ' 50 cm                        2,00\n'
                   ' 40 cm                        2,50\n'
                   ' 33 cm                        3,00\n'
                   ' 20 cm                        5,00\n'
                   ' 10 cm                       10,00\n'
                   '   5 cm                       20,00\n'
                   ,
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),   
         ],
        )
      ],
      ),
    );
  }
}