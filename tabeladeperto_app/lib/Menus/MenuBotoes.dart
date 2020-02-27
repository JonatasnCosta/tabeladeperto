import 'package:flutter/material.dart';

class MenuBotoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfaf8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height:MediaQuery.of(context).size.height - 50.0, 
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
               _buildCard('Letras', '\$1234', 'assets/letras.jpg',
               false, false, context),
               _buildCard('Letras', '\$1234', 'assets/letras.jpg',
               false, false, context),
               _buildCard('Letras', '\$1234', 'assets/letras.jpg',
               false, false, context),
               _buildCard('Letras', '\$1234', 'assets/letras.jpg',
               false, false, context)
              ],
            ),
          )
        ],
      ),
    );
  }
   Widget _buildCard(String name, String price, String imgPath, bool added, bool isFavorite, context){
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0
              )
            ],
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[
             Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavorite ? Icon(Icons.favorite, color: Color(0xffef7532)):
                    Icon(Icons.favorite_border, color: Color(0xffef7532))
                  ]
                )
              ),
              Hero(
              tag: imgPath,
              child: Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.contain 
                  )
                ),
              ),
              ),
             SizedBox(height: 7.0,),
             Text(name,
               style: TextStyle(
                 fontFamily: 'Varela',
                 fontSize: 14.0,
                 color: Color(0xff575e67)
               ),
             ) 
            ],
          ),
        )
      )
    );
 }
}