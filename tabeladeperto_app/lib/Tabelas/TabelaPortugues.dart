import 'package:flutter/material.dart';

class TabelaPortugues extends StatelessWidget {
   final assetPath, cookiename;
    TabelaPortugues({this.assetPath, this.cookiename});
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
       body: 
       ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Tabela frases em português',
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
              Text('1,25m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
             Text("Suas lentes\n"
                  "tem correção visual,\n"
                  "cuide bem delas.\n",
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
              ),
                Text('J6',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
               )
              )
            ]
          )
        )
      ]
        ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 8.0, right: 15.0 )),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('1,00m',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Oferecem visão nítida\n"
                     "e transições suaves.\n",
                style: TextStyle(fontFamily: ('Varela'),
              fontSize: 17.0
              )
              ),
                Text('J5',
                 style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            )
          ]
        )
      )
    ]
      ),
        Padding(padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,75m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Consulte as condições\n"
                     "e coberturas da garantia\n"
                     "das suas lentes.\n",
                    style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 13.0
              )
                    ),
                Text('J4',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
             )
          ]
        )
      )
    ]
    ),
      Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,62m',
                style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(" As revolucionárias lentes \n"
                     " reinventam a visão de perto para \n"
                     " pessoas com mais de 40 anos.\n",
                     style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 10.0
                  )
                  ),
                Text('J3',
                  style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            )
          ]
       )
      )
    ]
  ),
    Padding(padding: EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,50m',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(" As pessoas estão o tempo inteiro \n"
                     "entre computador, tablet e smartphone.\n",
                    style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 9.0
                  )
                ),
                Text('J2',
                style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            )
          ]
        )
      )
    ]
    ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,37m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Estas lentes são para você, além de estar \n"
                     "de acordo com algo mais refinado.\n",
                     
                     style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 8.0
                  )
                ),
                Text('J1',
                 style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            )
          ]
        )
      )
    ]
  )
]
)
);
}
}