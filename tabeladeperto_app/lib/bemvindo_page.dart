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
                    fit: BoxFit.cover)),
          );
        },
      ),
    );
  }
}
