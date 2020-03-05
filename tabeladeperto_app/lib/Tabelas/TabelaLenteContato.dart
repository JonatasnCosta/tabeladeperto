import 'package:flutter/material.dart';


class TabelaLenteContato extends StatelessWidget {
  final assetPath, cookiename;
    TabelaLenteContato({this.assetPath, this.cookiename});
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
            child: Text('Noções de anatomia ocular',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xfff17532)
            )
          )
          ),
          SizedBox(height: 50.0,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
              width: 1.0
             ),
             borderRadius: BorderRadius.all(
               Radius.circular(10.0
               )
             )
            ),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/olhohumano.png'
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.00)
                ),
                Text('Noções de Contatologia.',
                style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                )
               )
              ]
            )
          )
        ]
      )
    );
  }
}