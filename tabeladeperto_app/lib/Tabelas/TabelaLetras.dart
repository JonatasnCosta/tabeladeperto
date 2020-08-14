import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = '9A88AAC62836EFF2EF922D024CB9D9BE';

class TabelaLetras extends StatefulWidget {
  final assetPath, cookiename;
  TabelaLetras({this.assetPath, this.cookiename});
  @override
  _TabelaLetrasState createState() => _TabelaLetrasState();
}

class _TabelaLetrasState extends State<TabelaLetras> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Donate', 'Degree'],
  );

  BannerAd _bannerAd;
  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-7677202089790115/3393606173',
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
          title: Text(
            "Optical tabelas",
            style: TextStyle(
                fontFamily: 'Varela', fontSize: 20.0, color: Color(0xff545d68)),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert, color: Color(0xff545d68)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu()));
              },
            ),
          ],
        ),
        body: ListView(
            padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Tabela de Letras',
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
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Container(
                          width: 250.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                    "C  O  H  Z  V  L  G\n"
                                    "S  Z  N  D  C  J  X \n",
                                    style: TextStyle(
                                        fontFamily: ('Varela'), fontSize: 22.0
                                        //Tamanho fonte J6
                                        )),
                                Text(
                                  'J6',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0),
                                )
                              ])),
                    )
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
                                  "  K  C  N  R  D  B  S \n"
                                  "  V  O  Y  W  S  J  L  \n",
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
                                "     M  N  Q  O  W  M\n"
                                "     L  D  S  A  N  Z  X \n",
                                style: TextStyle(
                                    fontFamily: ('Varela'), fontSize: 14.0
                                    //Tamanho fonte J4
                                    ),
                              ),
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
                                  "       B  M  N  Q  O  W  \n"
                                  "       F  C  L  D  S  A  N \n",
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
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
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
                                  "        S  C  O  A  Q  V  P\n"
                                  "        Z  X  L  D  G  H  C\n",
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
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
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
                                  "           X  V  T  D  A  P  S  \n"
                                  "           L  R  S  F  Q  L  E  \n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 11.0
                                      //Tamanho fonte J1
                                      )),
                              Text(
                                'J1',
                                style: TextStyle(
                                    fontFamily: ('Varela'), fontSize: 21.0),
                              )
                            ]))
                  ]),
              Padding(padding: EdgeInsets.only(bottom: 200.0))
            ]));
  }
}
