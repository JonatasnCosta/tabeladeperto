import 'package:flutter/material.dart';
import 'package:tabeladeperto_app/AreaFree/Tabelas/TabelaIngles.dart';
import 'package:tabeladeperto_app/AreaFree/Tabelas/TabelaLetras.dart';
import 'package:tabeladeperto_app/AreaFree/Tabelas/TabelaNumerica.dart';
import 'package:tabeladeperto_app/AreaFree/Tabelas/TabelaPortugues.dart';

class MenuTabelasLeitura extends StatelessWidget {
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
                    letrasbuildCard(
                        'Letras', 'assets/letras.jpg', false, context),
                    numericabuildCard(
                        'Numérica', 'assets/numerica.jpg', false, context),
                    portuguesbuildCard('Frases Português',
                        'assets/portugues.jpg', false, context),
                    inglesbuildCard(
                        'Frases Inglês', 'assets/ingles.jpg', false, context)
                  ]))
        ]));
  }

  Widget letrasbuildCard(String name, String imgPath, bool added, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      TabelaLetras(cookiename: name, assetPath: imgPath)));
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
                  Container(
                      height: 120.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain))),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(name,
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 14.0,
                          color: Color(0xff575e67)))
                ]))));
  }
}

Widget numericabuildCard(String name_1, String imgPath_1, bool added, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    TabelaNumerica(cookiename: name_1, assetPath: imgPath_1)));
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
                          image: AssetImage(imgPath_1), fit: BoxFit.contain))),
              SizedBox(
                height: 13.0,
              ),
              Text(name_1,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      color: Color(0xff575e67)))
            ]),
          )));
}

Widget portuguesbuildCard(
    String name_3, String imgPath_3, bool added, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    TabelaPortugues(cookiename: name_3, assetPath: imgPath_3)));
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

Widget inglesbuildCard(String name_4, String imgPath_4, bool added, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    TabelaIngles(cookiename: name_4, assetPath: imgPath_4)));
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
                            image: AssetImage(imgPath_4),
                            fit: BoxFit.contain))),
                SizedBox(
                  height: 5.0,
                ),
                Text(name_4,
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        color: Color(0xff575e67)))
              ]))));
}
