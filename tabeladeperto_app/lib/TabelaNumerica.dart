import 'package:flutter/material.dart';



class TabelaNumerica extends StatefulWidget {
  @override
  _TabelaNumericaState createState() => _TabelaNumericaState();
}

class _TabelaNumericaState extends State<TabelaNumerica> {
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
                Text("8  4  6  2\n"
                     "7  3  8  6   \n",
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
                Text("  6  7  2  6 \n"
                     "  1  8  5  9  \n",
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
                Text("     8  5  4  9\n"
                     "     3  2  7  6\n",
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
                Text("       7  8  3  4  7  \n"
                     "       6  9  7  5  2 \n",
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
                Text("          7  8  3  4  7\n"
                     "          6  9  7  5  2 \n",
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
                Text("              8  5  4  9  8  8\n"
                     "              3  2  7  6  3  3 \n",
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