import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/MenuInformacoes/Menu.dart';

const String testDevice = 'Mobile_id';

class TabelaIngles extends StatefulWidget {
  final assetPath, cookiename;
  TabelaIngles({this.assetPath, this.cookiename});
  @override
  _TabelaInglesState createState() => _TabelaInglesState();
}

class _TabelaInglesState extends State<TabelaIngles> {
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
              child: Text('Tabela de frases em inglês',
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
              Text(
                '1,25m',
                style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
              ),
              Container(
                width: 230.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Your lenses  \n"
                      "have correction, \n"
                      "take care of them.\n",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 22.0),
                    ),
                    Text(
                      'J6',
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '1,00m',
                style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
              ),
              Container(
                width: 230.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "They offer sharp vision\n"
                      "and smooth transitions.\n",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 18.0),
                    ),
                    Text(
                      'J5',
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '0,75m',
                style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
              ),
              Container(
                width: 230.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Consult the conditions\n"
                      "and warranty coverage\n"
                      "of your lenses.\n",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 14.0),
                    ),
                    Text(
                      'J4',
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '0,62m',
                style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
              ),
              Container(
                width: 230.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      " The revolutionary lenses\n"
                      " reinvent near-sight \n"
                      " for people over 40.\n",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 13.0),
                    ),
                    Text(
                      'J3',
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '0,50m',
                style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
              ),
              Container(
                width: 230.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "People are always between \n"
                      "computer, tablet and smartphone.\n",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 12.0),
                    ),
                    Text(
                      'J2',
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '0,37m',
                style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
              ),
              Container(
                width: 230.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "  These lenses are for you, in \n"
                      "  addition to complying with \n"
                      "  something more refined.\n",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 11.0),
                    ),
                    Text(
                      'J1',
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 21.0),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 200.0))
        ],
      ),
    );
  }
}
