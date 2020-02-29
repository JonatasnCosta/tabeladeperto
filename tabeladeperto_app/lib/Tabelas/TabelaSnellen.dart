import 'package:flutter/material.dart';

class TabelaSnellen extends StatelessWidget {
   final assetPath, cookiename;
    TabelaSnellen({this.assetPath, this.cookiename});
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
       body: 
       ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Tabela de Snellen',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xfff17532)
            )
          ),
          ),
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('1,25m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("           E  \n"
                     " \n",
                     //"ao alcance de todos.\n",
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
                Text('J6',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
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
              Text('1,00m',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("            F  P   \n"
                     "                \n",
                     //"contra os raios solares.\n",
                      style: TextStyle(fontFamily: ('Varela'),
              fontSize: 17.0
              ),
              ),
                Text('J5',
                 style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
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
              Text('0,75m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("               T O Z\n"
                     "              L P E D \n",
                    style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 13.0
              ),
                     ),
                Text('J4',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
                )
              ],
            ),
          )
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,62m',
                style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("                  P E C F D  \n"
                     "            E D F P O T E C \n",
                     style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 10.0
                  ),
                  ),
                Text('J3',
                  style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
                )
              ],
            ),
          )
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,50m',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("               L E F O D F C T\n"
                     "           \n",
                     style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 9.0
                  ),
                ),
                Text('J2',
                style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
                )
              ],
            ),
          )
         ],
        ),
         Padding(padding: EdgeInsets.only(left: 15.0, top: 40.0, right: 15.0 )),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              Text('0,37m',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("                     F D P L T C R O\n"
                     "                    P E R O L C F T D \n",
                     style: TextStyle(fontFamily: ('Varela'),
                    fontSize: 8.0
                  ),
                ),
                Text('J1',
                 style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
                )
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