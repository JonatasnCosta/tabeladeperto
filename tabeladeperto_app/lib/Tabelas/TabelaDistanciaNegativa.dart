import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = 'Mobile_id';

class TabelaDistanciaNegativa extends StatefulWidget {
  final assetPath, cookiename;
   TabelaDistanciaNegativa({this.assetPath, this.cookiename});
  @override
 
  _TabelaDistanciaNegativaState createState() => _TabelaDistanciaNegativaState();
}

class _TabelaDistanciaNegativaState extends State<TabelaDistanciaNegativa> {
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
        title: Text("Tabelas App",
        style: TextStyle(
          fontFamily: 'Varela',
          fontSize: 20.0,
          color: Color(0xff545d68)
        )
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
         ) 
        ]
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Distância-Vértice Lente Negativa',
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
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('  Rx            Lente de Contato \n'
                   '- 5.00                    - 4.75\n'
                   '- 5.25                    - 4.75\n'
                   '- 5.50                    - 5.25\n'
                   '- 5.75                    - 5.25\n'
                   '- 6.00                    - 5.50\n'
                   '- 6.25                    - 5.75\n'
                   '- 6.50                    - 6.00\n'
                   '- 6.75                    - 6.25\n'
                   '- 7.00                    - 6.50\n'
                   '- 7.25                    - 6.50\n'
                   '- 7.50                    - 6.75\n'
                   '- 7.75                    - 7.00\n'
                   '- 8.00                    - 7.25\n' 
                   '- 8.25                    - 7.50\n'
                   '- 8.50                    - 7.75\n'
                   '- 8.75                    - 8.00\n'
                   '- 9.00                    - 8.25\n'
                   '- 9.25                    - 8.25\n'
                   '- 9.50                    - 8.50\n'
                   '- 9.75                    - 8.75\n'
                   '-10.00                    - 9.00\n'
                   '-10.25                    - 9.00\n'
                   '-10.50                    - 9.25\n'
                   '-10.75                    - 9.25\n'
                   '-11.00                    - 9.50\n'
                   '-11.25                    - 9.75\n'
                   '-11.50                    -10.00\n'
                   '-11.75                    -10.25\n'
                   '-12.00                    -10.25\n'
                   '-12.50                    -10.75\n'
                   '-12.75                    -11.00\n'
                   '-13.00                    -11.25\n'
                   '-13.50                    -11.50\n'
                   '-13.75                    -11.75\n'
                   '-14.00                    -12.00\n'
                   '-14.25                    -12.25\n'
                   '-14.50                    -12.25\n'
                   '-14.75                    -12.50\n'
                   '-15.00                    -12.75\n'
                   '-15.50                    -13.00\n'
                   '-15.75                    -13.25\n'
                   '-16.25                    -13.50\n'
                   '-16.75                    -13.75\n'
                   '-17.00                    -14.00\n'
                   '-17.25                    -14.25\n'
                   '-17.50                    -14.50\n'
                   '-18.00                    -14.75\n'
                   '-18.50                    -15.00\n'
                   '-19.00                    -15.50\n'
                   '-19.50                    -15.75\n'
                   '-20.00                    -16.00\n'
                   '-21.00                    -16.75\n'
                   '-22.00                    -17.50\n'
                   '-23.00                    -18.00\n'
                   '-24.00                    -18.50\n'
                   '-25.00                    -19.25\n'
                   '-26.50                    -20.00\n'
                   '-27.00                    -20.50\n',
               style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
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

