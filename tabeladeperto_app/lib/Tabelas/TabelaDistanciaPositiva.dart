import 'package:flutter/material.dart';

class TabelaDistanciaPositiva extends StatelessWidget {
  final assetPath, cookiename;
    TabelaDistanciaPositiva({this.assetPath, this.cookiename});
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
        ) 
      ]
    ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Distância-Vértice Lente Positivas',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xfff17532)
            )
          )
        ),
          SizedBox(height: 30.0,),
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
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(' Rx            Lente de Contato\n'
                   '+ 4.75                    + 5.00\n'
                   '+ 5.00                    + 5.50\n'
                   '+ 5.25                    + 5.75\n'
                   '+ 5.50                    + 6.00\n'
                   '+ 5.75                    + 6.25\n'
                   '+ 6.00                    + 6.50\n'
                   '+ 6.25                    + 6.75\n'
                   '+ 6.50                    + 7.00\n'
                   '+ 6.75                    + 7.50\n'
                   '+ 7.00                    + 7.75\n'
                   '+ 7.25                    + 8.00\n'
                   '+ 7.50                    + 8.25\n'
                   '+ 7.75                    + 8.50\n'
                   '+ 8.00                    + 8.75\n' 
                   '+ 8.25                    + 9.00\n'
                   '+ 8.50                    + 9.50\n'
                   '+ 8.75                    + 9.75\n'
                   '+ 9.00                    +10.00\n'
                   '+ 9.25                    +10.50\n'
                   '+ 9.50                    +11.00\n'
                   '+ 9.75                    +11.25\n'
                   '+10.00                    +11.50\n'
                   '+10.25                    +11.75\n'
                   '+10.75                    +12.50\n'
                   '+11.00                    +12.75\n'
                   '+11.25                    +13.00\n'
                   '+11.50                    +13.50\n'
                   '+11.75                    +13.75\n'
                   '+12.00                    +14.00\n'
                   '+12.25                    +14.25\n'
                   '+12.50                    +14.75\n'
                   '+12.75                    +15.00\n'
                   '+13.00                    +15.50\n'
                   '+13.25                    +15.75\n'
                   '+13.50                    +16.25\n'
                   '+13.75                    +16.75\n'
                   '+14.00                    +17.00\n'
                   '+14.25                    +17.25\n'
                   '+14.50                    +17.50\n'
                   '+14.75                    +18.00\n'
                   '+15.00                    +18.50\n'
                   '+15.50                    +19.00\n'
                   '+15.75                    +19.50\n'
                   '+16.00                    +20.00\n'
                   '+16.75                    +21.00\n'
                   '+17.50                    +22.00\n'
                   '+18.00                    +23.00\n'
                   '+18.50                    +24.00\n'
                   '+19.25                    +25.00\n' 
                   '+20.00                    +26.50\n'         
                   ,
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
           ],
         )  
       )   
      ],
      ),
    );
  }
}