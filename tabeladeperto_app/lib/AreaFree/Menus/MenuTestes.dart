import 'package:flutter/material.dart';
import 'package:tabeladeperto_app/AreaFree/Receita/ReceitaExpress.dart';
import 'package:tabeladeperto_app/AreaFree/Teste/Ishihara.dart';

class MenuTestes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffcfaf8),
        body: ListView(children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    ishiharabuildCard('Teste de Ishihara', 'assets/figura1.png',
                        false, context),
                    receitaexpressbuildCard('Receita Express',
                        'assets/logoreceitaexpress.png', false, context),
                    desenvolvimento_1buildCard('Em desenvolvimento',
                        'assets/emdesenvolvimento.png', false, context),
                    desenvolvimento_2buildCard('Em desenvolvimento',
                        'assets/emdesenvolvimento.png', false, context)
                  ]))
        ]));
  }

  Widget ishiharabuildCard(String name, String imgPath, bool added, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Ishihara(cookiename: name, assetPath: imgPath)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                      )),
                  Container(
                      height: 120.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain))),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(name,
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 14.0,
                          color: Color(0xff575e67)))
                ]))));
  }
}

Widget receitaexpressbuildCard(
    String name_1, String imgPath_1, bool added, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ReceitaExpress()));
          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    )),
                Container(
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath_1),
                            fit: BoxFit.contain))),
                SizedBox(
                  height: 7.0,
                ),
                Text(name_1,
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        color: Color(0xff575e67)))
              ]))));
}

Widget desenvolvimento_1buildCard(
    String name_3, String imgPath_3, bool added, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    )),
                Container(
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath_3),
                            fit: BoxFit.contain))),
                SizedBox(
                  height: 3.0,
                ),
                Text(name_3,
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        color: Color(0xff575e67)))
              ]))));
}

Widget desenvolvimento_2buildCard(
    String name_4, String imgPath_4, bool added, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    )),
                Container(
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath_4),
                            fit: BoxFit.contain))),
                SizedBox(
                  height: 3.0,
                ),
                Text(name_4,
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        color: Color(0xff575e67)))
              ]))));
}
