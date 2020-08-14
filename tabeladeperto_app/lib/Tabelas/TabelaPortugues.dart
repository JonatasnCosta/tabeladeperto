import 'package:flutter/material.dart';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = '9A88AAC62836EFF2EF922D024CB9D9BE';

class TabelaPortugues extends StatefulWidget {
  final assetPath, cookiename;
  TabelaPortugues({this.assetPath, this.cookiename});
  @override
  _TabelaPortuguesState createState() => _TabelaPortuguesState();
}

class _TabelaPortuguesState extends State<TabelaPortugues> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Credit', 'Lawyer'],
  );

  BannerAd _bannerAd;
  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-7677202089790115/7305972971',
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-7677202089790115~4215733257');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xff545d68)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text("Optical tabelas",
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 20.0,
                    color: Color(0xff545d68))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert, color: Color(0xff545d68)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                },
              )
            ]),
        body: ListView(
            padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Tabela frase em português',
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff17532)))),
              SizedBox(
                height: 50.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('1,25m',
                        style:
                            TextStyle(fontFamily: ('Varela'), fontSize: 21.0)),
                    Container(
                        width: 250.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  "Suas lentes\n"
                                  "tem correção,\n"
                                  "cuide bem delas.\n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 22.0
                                      //Tamanho fonte J6
                                      )),
                              Text('J6',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('1,00m',
                        style:
                            TextStyle(fontFamily: ('Varela'), fontSize: 21.0)),
                    Container(
                        width: 250.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  "Oferecem visão nítida\n"
                                  "e transições suaves.\n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 18.0
                                      //Tamanho fonte J5
                                      )),
                              Text('J5',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('0,75m',
                        style:
                            TextStyle(fontFamily: ('Varela'), fontSize: 21.0)),
                    Container(
                        width: 250.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  "Consulte as condições\n"
                                  "e coberturas da garantia\n"
                                  "das suas lentes.\n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 14.0
                                      //Tamanho fonte J4
                                      )),
                              Text('J4',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('0,62m',
                        style:
                            TextStyle(fontFamily: ('Varela'), fontSize: 21.0)),
                    Container(
                        width: 250.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  " As revolucionárias lentes\n"
                                  " reinventam a visão\n"
                                  "de perto para\n"
                                  " pessoas com mais de 40 anos.\n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 13.0
                                      //Tamanho fonte J3
                                      )),
                              Text('J3',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('0,50m',
                        style:
                            TextStyle(fontFamily: ('Varela'), fontSize: 21.0)),
                    Container(
                        width: 250.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  " As pessoas estão\n"
                                  " o tempo inteiro entre \n"
                                  " computador, tablet e smartphone.\n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 12.0
                                      //Tamanho fonte J2
                                      )),
                              Text('J2',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('0,37m',
                        style:
                            TextStyle(fontFamily: ('Varela'), fontSize: 21.0)),
                    Container(
                        width: 250.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  "Essas lentes são para você,\n"
                                  "além de estar de acordo\n"
                                  " com algo mais refinado.\n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 11.0
                                      // Tamanho da fonte J1
                                      )),
                              Text('J1',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              Padding(padding: EdgeInsets.only(bottom: 200.0))
            ]));
  }
}
