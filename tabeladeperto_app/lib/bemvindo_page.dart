import 'package:flutter/material.dart';

class BemvindoPage extends StatefulWidget {
  const BemvindoPage({Key key}) : super(key: key);

  @override
  _BemvindoPageState createState() => _BemvindoPageState();
}

class _BemvindoPageState extends State<BemvindoPage> {
  List images = ["bemvindo1.jpg", "bemvindo2.jpg", "bemvindo3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/" + images[index],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ambiente',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'De ferramentas grátis',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 20.00),
                      Container(
                        width: 250,
                        child: Text(
                          'Tanha na palma das suas mãos tabelas, testes para agilizar o seu dia a dia de refração.',
                          style: TextStyle(
                            color: Color(0xff878593),
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
