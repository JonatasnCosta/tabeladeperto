import 'package:flutter/material.dart';
import 'package:tabeladeperto_app/Home.dart';
import 'package:url_launcher/url_launcher.dart';

class AreaPix extends StatefulWidget {
  const AreaPix({Key key}) : super(key: key);

  @override
  _AreaPixState createState() => _AreaPixState();
}

class _AreaPixState extends State<AreaPix> {
  Future<void> _lounchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('Não foi possivel execultar o link $url');
    }
  }

  void lounchWhatsApp({@required propraganda, @required message}) async {
    String urlWhatsApp = "whatsapp://send?&text=$propraganda, $message";
    await canLaunch(urlWhatsApp) ? launch(urlWhatsApp) : print("erro");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Icones
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    mini: true,
                    elevation: 0.0,
                    child:
                        Icon(Icons.short_text, color: Colors.black, size: 17.0),
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              'Área Pix',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20.00,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.00),
            child: Text(
                'Se você gosta do meu trabalho e quer contribuir, faça um doação.',
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                )),
          ),
          SizedBox(
            height: 15.00,
          ),
          Container(
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pix.jpeg'),
                      fit: BoxFit.contain))),
          SizedBox(
            height: 20.00,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.00),
            child: Text('Chave pix: pixoptical@gmail.com',
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                )),
          ),
          SizedBox(
            height: 20.00,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.00),
            child: Text(
                'Caso não possa contribuir com pix, contribua compartilhando o APP a um amigo(a).',
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                )),
          ),
          TextButton.icon(
            onPressed: () {
              lounchWhatsApp(
                  propraganda:
                      "Olha esse ótimo aplicativo para agilizar sua refração",
                  message:
                      'https://play.google.com/store/apps/details?id=com.jonatasprogramador.tabeladeperto_app&hl=en_US&gl=US');
            },
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            label: Text(
              'Envie para um amigo(a) !',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () => _lounchLink(
                      'https://www.facebook.com/Cria%C3%A7%C3%A3o-de-sites-e-aplicativos-111386821172332'),
                  icon: Icon(
                    Icons.link,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Desenvolvedor',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextButton.icon(
                  onPressed: () =>
                      _lounchLink('https://www.linkedin.com/in/jonatasncosta'),
                  icon: Icon(
                    Icons.link,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Linkedin',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
