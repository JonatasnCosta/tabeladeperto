import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
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
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Padding(
              padding: EdgeInsets.only(left: 90.0),
              child: Text('Versão 1.0.0+1',
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
                Text('Informações sobre o aplicativo:',
                    style: TextStyle(fontFamily: ('Varela'), fontSize: 20.0)),
              ]),
          SizedBox(
            height: 10.0,
          ),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("O aplicativo é composto pelas funções.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de leitura de letras.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de leitura númerica.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de leitura de frases em português.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de leitura de frases em inglês.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela dinamica 40 cm.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de adição.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de amplitude ACC.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de acomodação.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de distância-vértice positiva.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de distância-vértice negativa.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tabela de conversão de dioptrias.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Modelo do globo ocular.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Teste de Ishihara.\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      "Copyright & copy; JonatasProgrammer. Todos os direitos reservados.",
                      style: TextStyle(fontFamily: ('Varela'), fontSize: 10.0
                          //Url portifólio
                          ))
                ]),
            onTap: () => launch('http://jonatascosta.com'),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
              width: 230.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("\n",
                        style: TextStyle(fontFamily: ('Varela'), fontSize: 15.0
                            //Frases em português
                            ))
                  ])),
          Padding(padding: EdgeInsets.only(bottom: 200.0))
        ],
      ),
    );
  }
}
