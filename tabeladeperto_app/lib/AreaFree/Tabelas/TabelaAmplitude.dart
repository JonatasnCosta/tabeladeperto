import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/AreaFree/MenuInformacoes/Menu.dart';

const String testDevice = 'Mobile_id';

class TabelaAmplitude extends StatefulWidget {
  final assetPath, cookiename;
  TabelaAmplitude({this.assetPath, this.cookiename});
  @override
  _TabelaAmplitudeState createState() => _TabelaAmplitudeState();
}

class _TabelaAmplitudeState extends State<TabelaAmplitude> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Hosting', 'Claim'],
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
                  child: Text('Tabela de Amplitude de Acc',
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff17532)))),
              SizedBox(
                height: 90.0,
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            'Idade                    AA\n'
                            '  5                          18\n'
                            '  10                        14\n'
                            '  18                        12\n'
                            '  30                         6\n'
                            '  40                         4\n'
                            '  50                         1\n'
                            '  60                        0,50\n',
                            style: TextStyle(
                                fontFamily: ('Varela'), fontSize: 21.0))
                      ])),
              Padding(padding: EdgeInsets.only(bottom: 200.0))
            ]));
  }
}
