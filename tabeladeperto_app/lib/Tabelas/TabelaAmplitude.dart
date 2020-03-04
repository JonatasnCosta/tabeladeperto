import 'package:flutter/material.dart';

class TabelaAmplitude extends StatelessWidget {
  final assetPath, cookiename;
    TabelaAmplitude({this.assetPath, this.cookiename});
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
        )
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Color(0xff545d68)),
            onPressed: (){},
        ) 
        ]
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Tabela de Amplitude de Acc',
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
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Idade                    AA\n'
                   '  5                          18\n'
                   '  10                        14\n'
                   '  18                        12\n'
                   '  30                         6\n'
                   '  40                         4\n'
                   '  50                         1\n'
                   '  60                        0,50\n',
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