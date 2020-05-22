import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = 'Mobile_id';

class TabelaAdicao  extends StatefulWidget {
  final assetPath, cookiename;
    TabelaAdicao({this.assetPath, this.cookiename});
  @override
 
  _TabelaAdicaoState createState() => _TabelaAdicaoState();
}

class _TabelaAdicaoState extends State<TabelaAdicao> {
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
    return Scaffold(appBar: AppBar( 
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
        ) ,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Tabela de Adição',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xfff17532)
            )
          )
          ),
          SizedBox(height: 90.0,),
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
           child: 
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text(' Idade                       Desconto\n'
                   'Até 40                     0,75/1,00\n'
                   '41-44                          1,25\n'
                   '45-48                      1,50/1,75\n'
                   '49-52                          2,00\n'
                   '53-56                          2,25\n'
                   '57-60                          2,50\n'
                   '61-64                          2,75\n'
                   '   + 64                          3,00\n',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
           )   
         ]
        )
       )
      ]
    )
  );
}
}