import 'package:flutter/material.dart';
import 'package:tabeladeperto_app/Menus/MenuDirecional.dart';
import 'package:tabeladeperto_app/Menus/MenuLetras.dart';
import 'package:tabeladeperto_app/Menus/MenuNumerica.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
with SingleTickerProviderStateMixin {
TabController _tabController;
@override
 void initState(){
   super.initState();
   _tabController = TabController(length: 3, vsync: this);
 }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.blur_on,
            color: Color(0xff545d68)),
            onPressed: (){},
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
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0,),
          Text('Categorias',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 42.0,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 15.0),
          TabBar(
           controller: _tabController,
           indicatorColor: Colors.transparent,
           labelColor: Color(0xffc88d67),
           isScrollable: true,
           labelPadding: EdgeInsets.only(right: 45.0),
           unselectedLabelColor: Color(0xffcdcdcd),
           tabs: <Widget>[
             Tab(
               child: Text('Letras',
               style: TextStyle(
                 fontFamily: 'Varela',
                 fontSize: 21.0,
               ),
               ),
             ),
             Tab(
               child: Text('Numérica',
               style: TextStyle(
                 fontFamily: 'Varela',
                 fontSize: 21.0,
               ),
               ),
             ),
             Tab(
               child: Text('Direcional',
               style: TextStyle(
                 fontFamily: 'Varela',
                 fontSize: 21.0,
               ),
               ),
             )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0 ,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                MenuLetras(),
                MenuNumerica(),
                MenuDirecional(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

