import 'package:flutter/material.dart';

class TabelaDinamicaCC extends StatelessWidget {
  final assetPath, cookiename;
    TabelaDinamicaCC({this.assetPath, this.cookiename});
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
         ) 
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
          SizedBox(height: 90.0,),
          Container(
          padding: EdgeInsets.only(top: 20.0),
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
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('     Idade                        Adição\n'
                   'Até40 Anos                  -1,25\n'
                   '41-44 Anos                  -1,50\n'
                   '45-49 Anos                  -1,75\n'
                   '50-54 Anos                  -2,00\n'
                   '55-59 Anos                  -2,25\n'
                   '60-64 Anos                  -2,50\n'
                   '65-69 Anos                  -2,75\n'
                   '  +70   Anos                  -3,00\n',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
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