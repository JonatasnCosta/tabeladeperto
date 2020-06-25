import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:tabeladeperto_app/Menu.dart';

const String testDevice = 'Mobile_id';

class Ishihara extends StatefulWidget {
  final assetPath, cookiename;
    Ishihara({this.assetPath, this.cookiename});
  @override
 
  _IshiharaState createState() => _IshiharaState();
}

class _IshiharaState extends State<Ishihara> {
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
         ) 
        ]
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
        children: <Widget>[
           SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Teste de Ishihara',
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Figura 1',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
           Image.asset('assets/figura1.png'),
            Padding(padding: EdgeInsets.only(bottom: 20.0))    
         ]
        )
       ),
       Padding(padding: EdgeInsets.only(bottom: 20.0)),
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Figura 2',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
           Image.asset('assets/figura2.png'),
            Padding(padding: EdgeInsets.only(bottom: 20.0))    
         ]
        )
       ),
        Padding(padding: EdgeInsets.only(bottom: 20.0)),
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Figura 3',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
           Image.asset('assets/figura3.png'),
            Padding(padding: EdgeInsets.only(bottom: 20.0))    
         ]
        )
       ),
        Padding(padding: EdgeInsets.only(bottom: 20.0)),
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Figura 4',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
           Image.asset('assets/figura4.png'),
            Padding(padding: EdgeInsets.only(bottom: 20.0))    
         ]
        )
       ),
        Padding(padding: EdgeInsets.only(bottom: 20.0)),
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Figura 5',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
           Image.asset('assets/figura5.png'),
            Padding(padding: EdgeInsets.only(bottom: 20.0))    
         ]
        )
       ),
        Padding(padding: EdgeInsets.only(bottom: 20.0)),
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Figura 6',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 21.0
              )
            ),
           Image.asset('assets/figura6.png'),
            Padding(padding: EdgeInsets.only(bottom: 20.0))    
         ]
        )
       ),
       Padding(padding: EdgeInsets.only(bottom: 20.0)),
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
               Text('Resultado:\n'
                   'Figura 1: 16. Todos devem ser\n'
                   'capazes de identificar esse número,\n'
                   'inclusive os portadores de daltonismo.\n'
                   'Figura 2: 42\n'
                   'Figura 3: 2\n'
                   'Figura 4: 5\n'
                   'Figura 5: 10\n'
                   'Figura 6: 29\n',
              style: TextStyle(fontFamily: ('Varela'),
              fontSize: 15.0
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