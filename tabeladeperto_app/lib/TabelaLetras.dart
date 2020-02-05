import 'package:flutter/material.dart';

class TabelaLetras extends StatefulWidget {
  @override
  _TabelaLetrasState createState() => _TabelaLetrasState();
}

class _TabelaLetrasState extends State<TabelaLetras> {
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
              fontSize: 21.0
              ),
              ),
              Container(
            width: 230.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("C  O  H  Z  V  L  G\n"
                     "S  Z  N  D  C  J  X \n",
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
                Text("  K  C  N  R  D  B  S \n"
                     "  V  O  Y  W  S  J  L  \n",
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
                Text("     M  N  Q  O  W  M\n"
                     "     L  D  S  A  N  Z  X \n",
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
                Text("       P  B  M  N  Q  O  W  M  \n"
                     "          F  C  L  D  S  A  N  Z \n",
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
                Text("          P  B  M  N  Q  O  W  M\n"
                     "          F  C  L  D  S  A  N  Z  X \n",
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
                Text("              P  B  M  N  Q  O  W  M\n"
                     "              F  C  L  D  S  A  N  Z  X \n",
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


 