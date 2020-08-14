import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = '9A88AAC62836EFF2EF922D024CB9D9BE';

class TabelaNumerica extends StatefulWidget {
  final assetPath, cookiename;
  TabelaNumerica({this.assetPath, this.cookiename});
  @override
  _TabelaNumericaState createState() => _TabelaNumericaState();
}

class _TabelaNumericaState extends State<TabelaNumerica> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Mortgage', 'Attorney'],
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
                  child: Text('Tabela Numérica',
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
                                  "    8  4  6  2\n"
                                  "    2  3  5  9   \n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 22.0
                                      //Tamanho fonte J6
                                      )),
                              Text('J6',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              // fonte J6
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
                                "      6  8  3  2 \n"
                                "      5  2  7  9  \n",
                                style: TextStyle(
                                    fontFamily: ('Varela'), fontSize: 18.0
                                    //Tamanho fonte J5
                                    )),
                            Text('J5',
                                style: TextStyle(
                                    fontFamily: ('Varela'), fontSize: 21.0))
                          ],
                        ))
                  ]),
              // fonte J5
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
                                "          8  5  4  9\n"
                                "          6  2  8  3\n",
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
              // fonte J4
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
                                  "         2  8  3  4  6  \n"
                                  "         6  9  2  5  2 \n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 13.0
                                      //Tamanho fonte J3
                                      )),
                              Text('J3',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              // fonte J3
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
                                  "          4  2  8  3  9\n"
                                  "          9  5  3  8  2 \n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 12.0
                                      //Tamanho fonte J2
                                      )),
                              Text('J2',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                            ]))
                  ]),
              // fonte J2
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
                                  "          6  2  3  9  6  4\n"
                                  "          9  3  4  7  5  8 \n",
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 11.0
                                      // Tamanho da fonte J1
                                      )),
                              Text('J1',
                                  style: TextStyle(
                                      fontFamily: ('Varela'), fontSize: 21.0))
                              // fonte J1
                            ]))
                  ]),
              Padding(padding: EdgeInsets.only(bottom: 200.0))
            ]));
  }
}
