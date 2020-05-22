import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = 'Mobile_id';

class TabelaConversaoDiopitrias extends StatefulWidget {
  final assetPath, cookiename;
    TabelaConversaoDiopitrias({this.assetPath, this.cookiename});
  @override
 
  _TabelaConversaoDiopitriasState createState() => _TabelaConversaoDiopitriasState();
}

class _TabelaConversaoDiopitriasState extends State<TabelaConversaoDiopitrias> {
  static const  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Hosting', 'Claim'],
  );
 
   BannerAd _bannerAd;
   BannerAd createBannerAd(){
    return BannerAd(
    adUnitId: 'ca-app-pub-7677202089790115/3393606173', 
    size: AdSize.smartBanner,
     targetingInfo: targetingInfo,
     listener: (MobileAdEvent event) {
    print("BannerAd $event");
     });
 }
 @override
 void initState(){
 FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-7677202089790115~4215733257' );
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
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff545d68)),
            onPressed: (){ 
              Navigator.of(context).pop();
              },
        ) ,
        title: Text("Optical tabelas",
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
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(
            builder: (context) => Menu()));
            },
        ) ,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Tabela de Conversão\n'
                        'Dioptrias - mm\n',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xfff17532)
            )
          )
          ),
          SizedBox(height: 30.0,),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
              width: 1.0
             ),
             borderRadius: BorderRadius.all(
               Radius.circular(10.0
               )
             )
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Diopti = mm      Diopti = mm \n'
                   '35.00 = 9.64      35.25 = 9.57 \n'
                   '35.50 = 9.51      35.75 = 9.44 \n'
                   '36.00 = 9.38      36.25 = 9.31 \n'
                   '36.50 = 9.25      36.75 = 9.18 \n'
                   '37.00 = 9.12      37.25 = 9.06 \n'
                   '37.50 = 9.00      37.75 = 8.94 \n'
                   '38.00 = 8.88      38.25 = 8.82 \n'
                   '38.50 = 8.77      38.75 = 8.71 \n'
                   '39.00 = 8.65      39.25 = 8.60 \n'
                   '39.50 = 8.54      39.75 = 8.49 \n'
                   '40.00 = 8.44      40.25 = 8.39 \n'
                   '40.50 = 8.33      40.75 = 8.08 \n'
                   '41.00 = 8.23      41.25 = 8.18 \n'
                   '41.50 = 8.13      41.75 = 8.08 \n'
                   '42.00 = 8.04      42.25 = 7.99 \n'
                   '42.50 = 7.94      42.75 = 7.90 \n'
                   '43.00 = 7.85      43.25 = 7.80 \n'
                   '43.50 = 7.76      43.75 = 7.71 \n'
                   '44.00 = 7.67      44.25 = 7.63 \n'
                   '44.50 = 7.58      44.75 = 7.54 \n'
                   '45.00 = 7.50      45.25 = 7.46 \n'
                   '45.50 = 7.42      45.75 = 7.38 \n'
                   '46.00 = 7.34      46.25 = 7.30 \n'
                   '46.50 = 7.26      46.75 = 7.22 \n'
                   '47.00 = 7.18      47.25 = 7.14 \n'
                   '47.50 = 7.11      47.75 = 7.07 \n'
                   '48.00 = 7.03      48.25 = 7.00 \n'
                   '48.50 = 6.96      48.75 = 6.92 \n'
                   '49.00 = 6.89      49.25 = 6.85 \n'
                   '49.50 = 6.82      49.75 = 6.78 \n'
                   '50.00 = 6.75      50.25 = 6.72 \n'
                   '50.50 = 6.68      50.75 = 6.65 \n'
                   '51.00 = 6.62      51.25 = 6.59 \n'
                   '51.50 = 6.55      51.75 = 6.52 \n'
                   '52.00 = 6.49      52.25 = 6.46 \n'
                   '52.50 = 6.43      52.75 = 6.40 \n'
                   '53.00 = 6.37      53.25 = 6.33 \n'
                   '53.50 = 6.30      53.75 = 6.27 \n' 
                   '54.00 = 6.24      54.25 = 6.22 \n'
                   '54.50 = 6.19      54.75 = 6.16 \n'
                   '55.00 = 6.14      55.25 = 6.11 \n'
                   '55.50 = 6.08      55.75 = 6.05 \n'
                   '56.00 = 6.03      56.50 = 5.97 \n'
                   '57.00 = 5.92      57.50 = 5.87 \n'
                   '58.00 = 5.82      58.50 = 5.76 \n'
                   '59.00 = 5.72      59.50 = 5.67 \n'
                   '60.00 = 5.62      61.00 = 5.53 \n'
                   '62.00 = 5.44      63.00 = 5.36 \n',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              ),
            )
           ]
          ) 
        ),
         Padding(padding: EdgeInsets.only(bottom: 100.0))
      ]
    )
  );
}
}

