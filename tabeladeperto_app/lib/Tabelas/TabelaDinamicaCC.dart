import 'package:flutter/material.dart';



class TabelaDinamicaCC extends StatelessWidget {
final assetPath, cookiename;
    TabelaDinamicaCC({this.assetPath, this.cookiename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
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
            child: Text('Tabela Dinâmica 40 cm',
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
              Text('Idade                           Adição',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),   
         ],
        ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('Até 40 Anos                 -1,25',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
       Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('41-44 Anos                  -1,50',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('45-49 Anos                  -1,75',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('50-54 Anos                  -2,00',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('55-59 Anos                  -2,25',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
          Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('60-64 Anos                  -2,50',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('65-69 Anos                  -2,75',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
         ],
        ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('    +70 Anos                  -3,00',
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


