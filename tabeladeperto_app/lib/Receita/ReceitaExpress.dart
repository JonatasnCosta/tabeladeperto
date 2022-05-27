import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:tabeladeperto_app/HomePageFree/HomePagerFree.dart';
import 'package:tabeladeperto_app/PdfView/PdfPreviewScreen.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:tabeladeperto_app/Receita/Checkbox/ArCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/AstigmatismoCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/BifocalCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/FotossensivelCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/IncolorCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/MiopiaCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/MultifocalCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/PresbiopiaCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/AdicaoController.dart';
import 'package:tabeladeperto_app/Receita/Checkbox/HipermetropiaCheckBoxController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/CilOlhoEsquerdoController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/CilOlhodireitoController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/EixoOlhoDireitoController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/EixoOlhoEsquerdoController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/OlhoDireitoController.dart';
import 'package:tabeladeperto_app/Receita/SelecaoDeGrauController/OlhoEsquerdoController.dart';

class ReceitaExpress extends StatefulWidget {
  @override
  _ReceitaExpressState createState() => _ReceitaExpressState();
}

class _ReceitaExpressState extends State<ReceitaExpress> {
  TextEditingController _controllerNomePaciente = TextEditingController();
  TextEditingController _controllerObservacoes = TextEditingController();
  TextEditingController _controllerNomeProfissional = TextEditingController();
  TextEditingController _controllerData = TextEditingController();

  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});

  final controllerOD = OlhoDireitoController();
  get od => controllerOD.od;

  final controllerCilOD = CilOlhoDireitoController();
  get cilod => controllerCilOD.cilod;

  final controllerEixoOD = EixoOlhoDireitoController();
  get eixood => controllerEixoOD.eixood;

  final controllerOE = OlhoEsquerdoController();
  get oe => controllerOE.oe;

  final controllerCilOE = CilOlhoEsquerdoController();
  get ciloe => controllerCilOE.ciloe;

  final controllerEixoOE = EixoOlhoEsquerdoController();
  get eixooe => controllerEixoOE.eixooe;

  final controllerADD = AdicaoController();
  get add => controllerADD.add;

  final controllerHipermetropia = HipermetropiaCheckBoxController();
  get estaselecionado => controllerHipermetropia.estaselecionado;
  get naoHipermetropia => controllerHipermetropia.naoHipermetropia;
  get funcaoHipermetropia =>
      controllerHipermetropia.funcionHipermetropiaCheckbox();

  final controllerMiopia = MiopiaCheckBoxController();
  get estaselecionadoMiopia => controllerMiopia.estaselecionadoMiopia;
  get naoMiopia => controllerMiopia.naoMiopia;
  get funcaoMiopia => controllerMiopia.funcionMiopiaCheckbox();

  final controllerAstigmatismo = AstigmatismoCheckBoxController();
  get estaselecionadoAstigmatismo =>
      controllerAstigmatismo.estaselecionadoAstigmatismo;
  get naoAstigmatismo => controllerAstigmatismo.naoAstigmatismo;
  get funcaoAstigmatismo =>
      controllerAstigmatismo.funcionAstigmatismoCheckbox();

  final controllerPresbiopia = PresbiopiaCheckBoxController();
  get estaselecionadoPresbiopia => controllerMiopia.estaselecionadoMiopia;
  get naoPresbiopia => controllerPresbiopia.naoPesbiopia;
  get funcaoPresbiopia => controllerPresbiopia.funcionPresbiopiaCheckbox();

  final controllerMultifocal = MultifocalCheckBoxController();
  get estaselecionadoMultifocal =>
      controllerMultifocal.estaselecionadoMultifocal;
  get naoMultifocal => controllerMultifocal.naoMultifocal;
  get funcaoMultifocal => controllerMultifocal.funcionMultifocalCheckbox();

  final controllerBifocal = BifocalCheckBoxController();
  get estaselecionadoBifocal => controllerBifocal.estaselecionadoBifocal;
  get naoBifocal => controllerBifocal.naoBifocal;
  get funcaoBifocal => controllerBifocal.funcionBifocalCheckbox();

  final controllerIncolor = IncolorCheckBoxController();
  get estaselecionadoIncolor => controllerIncolor.estaselecionadoIncolor;
  get naoIncolor => controllerIncolor.naoIncolor;
  get funcaoIncolor => controllerIncolor.funcionIncolorCheckbox();

  final controllerAR = ArCheckBoxController();
  get estaselecionadoAR => controllerAR.estaselecionadoAr;
  get naoAR => controllerAR.naoAR;
  get funcaoAR => controllerAR.funcionARCheckbox();

  final controllerFoto = FotossensivelCheckBoxController();
  get estaselecionadoFoto => controllerFoto.estaselecionadoFoto;
  get naoFoto => controllerFoto.naoFoto;
  get funcaoFoto => controllerFoto.funcionFotoCheckbox();

  var _currentItemSelectedOD = '  0.00';
  var _currentItemSelectedCILOD = '  0.00';
  var _currentItemSelectedEIXOOD = '  0';
  var _currentItemSelectedOE = '  0.00';
  var _currentItemSelectedCILOE = '  0.00';
  var _currentItemSelectedEIXOOE = '  0';
  var _currentItemSelectedADD = '  0.00';

  bool _isButtonDisabled = true;
  final pdf = pw.Document();
  writeOnPdf() {
    pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a3,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return <pw.Widget>[
          pw.Center(
            child: pw.Text("Receita",
                style: pw.TextStyle(
                  fontSize: 40.0,
                )),
          ),
          pw.Header(
            child: pw.Text("",
                style: pw.TextStyle(
                  fontSize: 10.0,
                )),
          ),
          pw.Row(children: [
            pw.Paragraph(
                text: "Data: ",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: _controllerData.text,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "Nome do profissional: ",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: _controllerNomeProfissional.text,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "Nome do paciente: ",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: _controllerNomePaciente.text,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "OD: $_currentItemSelectedOD ",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: '  Cil:  $_currentItemSelectedCILOD',
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: '  Eixo:  $_currentItemSelectedEIXOOD',
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "OE: $_currentItemSelectedOE",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: '  Cil:  $_currentItemSelectedCILOE',
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text: '  Eixo:  $_currentItemSelectedEIXOOE',
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "Adição:  $_currentItemSelectedADD",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.SizedBox(height: 20.0),
          pw.Row(children: [
            pw.Paragraph(
              text: 'Miopia: ' + controllerMiopia.naoMiopia,
              style: pw.TextStyle(
                fontSize: 25.0,
              ),
            ),
            pw.SizedBox(width: 20.00),
            pw.Paragraph(
                text: 'Hipermetropia: ' +
                    controllerHipermetropia.naoHipermetropia,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.SizedBox(width: 20.00),
            pw.Paragraph(
                text: 'Astigmatismo: ' + controllerAstigmatismo.naoAstigmatismo,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.SizedBox(
            height: 20.0,
          ),
          pw.Row(children: [
            pw.Paragraph(
                text: 'Presbiopia: ' + controllerPresbiopia.naoPesbiopia,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.SizedBox(width: 20.00),
            pw.Paragraph(
                text: 'Multifocal: ' + controllerMultifocal.naoMultifocal,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.SizedBox(width: 20.00),
            pw.Paragraph(
                text: 'Bifocal: ' + controllerBifocal.naoBifocal,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.SizedBox(height: 20.0),
          pw.Row(children: [
            pw.Paragraph(
                text: "Incolor: " + controllerIncolor.naoIncolor,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.SizedBox(width: 20.00),
            pw.Paragraph(
                text: 'Anti-Reflexo: ' + controllerAR.naoAR,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.SizedBox(width: 20.00),
            pw.Paragraph(
                text: 'Fotossensível: ' + controllerFoto.naoFoto,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.SizedBox(height: 40),
          pw.Row(children: [
            pw.Paragraph(
                text: "Observações:",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: _controllerObservacoes.text,
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
          pw.Column(children: [
            pw.SizedBox(
              height: 20.0,
            ),
            pw.Paragraph(
                text:
                    "1- É normal nos primeiros dias sentir tonteira, cefaléia, náuseas, ver desníveis no chão ou em escadas.",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text:
                    "2- Para Multifocal ou Bifocal a adaptação poderá velar de 7 a 15 dias, podendo ter os mesmos sintomas acima.",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
            pw.Paragraph(
                text:
                    "3- Um exame de vista é sempre oportuno antes de seu filho começar a estudar.",
                style: pw.TextStyle(
                  fontSize: 25.0,
                )),
          ]),
        ];
      },
    ));
  }

  Future savePdf() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
    File file = File("$documentPath/Receita.pdf");
    file.writeAsBytesSync(pdf.save());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFd7ccc8),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 20.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0)),
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25.0,
                  left: 15.0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'Receita Exprees',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Feito pra você',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFC6C4C4)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        Text(
                          'Que precisa de agilidade.',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 90.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 40.0),
                            child: Container(
                              padding: EdgeInsets.only(left: 45.0),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFd7ccc8)),
                              child: Center(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [maskFormatter],
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Data',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 15.0,
                                        color: Colors.black),
                                  ),
                                  controller: _controllerData,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 90.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 40.0),
                            child: Container(
                              padding: EdgeInsets.only(left: 45.0),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFd7ccc8)),
                              child: Center(
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Nome do profissional',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 15.0,
                                        color: Colors.black),
                                  ),
                                  controller: _controllerNomeProfissional,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 90.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 40.0),
                            child: Container(
                              padding: EdgeInsets.only(left: 45.0),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFd7ccc8)),
                              child: Center(
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Nome do paciente',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 15.0,
                                        color: Colors.black),
                                  ),
                                  controller: _controllerNomePaciente,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 15.0, left: 20.0, right: 40.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              Text(
                                'OD:',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              DropdownButton<String>(
                                items: controllerOD.od
                                    .map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelectedod) {
                                  setState(() {
                                    this._currentItemSelectedOD =
                                        newValueSelectedod;
                                  });
                                },
                                value: _currentItemSelectedOD,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              Text(
                                'Cil:',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              DropdownButton<String>(
                                items: controllerCilOD.cilod
                                    .map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelectedcilod) {
                                  setState(() {
                                    this._currentItemSelectedCILOD =
                                        newValueSelectedcilod;
                                  });
                                },
                                value: _currentItemSelectedCILOD,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              Text(
                                'Eixo:',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              DropdownButton<String>(
                                items: controllerEixoOD.eixood
                                    .map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelectedeixood) {
                                  setState(() {
                                    this._currentItemSelectedEIXOOD =
                                        newValueSelectedeixood;
                                  });
                                },
                                value: _currentItemSelectedEIXOOD,
                              ),
                            ]),
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 20.0, right: 40.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 10.0)),
                              Text(
                                'OE:',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              DropdownButton<String>(
                                items: controllerOE.oe
                                    .map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelectedoe) {
                                  setState(() {
                                    this._currentItemSelectedOE =
                                        newValueSelectedoe;
                                  });
                                },
                                value: _currentItemSelectedOE,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              Text(
                                'Cil:',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              DropdownButton<String>(
                                items: controllerCilOE.ciloe
                                    .map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelectedciloe) {
                                  setState(() {
                                    this._currentItemSelectedCILOE =
                                        newValueSelectedciloe;
                                  });
                                },
                                value: _currentItemSelectedCILOE,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              Text(
                                'Eixo:',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.0, left: 10.0)),
                              DropdownButton<String>(
                                items: controllerEixoOE.eixooe
                                    .map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelectedeixooe) {
                                  setState(() {
                                    this._currentItemSelectedEIXOOE =
                                        newValueSelectedeixooe;
                                  });
                                },
                                value: _currentItemSelectedEIXOOE,
                              ),
                            ]),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 20.0, right: 40.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Adição:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 15.0, left: 10.0)),
                            DropdownButton<String>(
                              items: controllerADD.add
                                  .map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValueSelectedadd) {
                                setState(() {
                                  this._currentItemSelectedADD =
                                      newValueSelectedadd;
                                });
                              },
                              value: _currentItemSelectedADD,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Ametropias & Tipos de lentes:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Miopia:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerMiopia.estaselecionadoMiopia,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerMiopia.funcionMiopiaCheckbox();
                                    controllerMiopia.estaselecionadoMiopia =
                                        valor;
                                  });
                                }),
                            Padding(
                                padding: EdgeInsets.only(top: 10.0, left: 5.0)),
                            Text(
                              'Hipermetropia:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerHipermetropia.estaselecionado,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerHipermetropia
                                        .funcionHipermetropiaCheckbox();
                                    controllerHipermetropia.estaselecionado =
                                        valor;
                                  });
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Astigmatismo:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerAstigmatismo
                                    .estaselecionadoAstigmatismo,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerAstigmatismo
                                        .funcionAstigmatismoCheckbox();
                                    controllerAstigmatismo
                                        .estaselecionadoAstigmatismo = valor;
                                  });
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 10.0, left: 8.0)),
                            Text(
                              'Presbiopia:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerPresbiopia
                                    .estaselecionadoPresbiopia,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerPresbiopia
                                        .funcionPresbiopiaCheckbox();
                                    controllerPresbiopia
                                        .estaselecionadoPresbiopia = valor;
                                  });
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Multifocal:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerMultifocal
                                    .estaselecionadoMultifocal,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerMultifocal
                                        .funcionMultifocalCheckbox();
                                    controllerMultifocal
                                        .estaselecionadoMultifocal = valor;
                                  });
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Bifocal:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerBifocal.estaselecionadoBifocal,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerBifocal.funcionBifocalCheckbox();
                                    controllerBifocal.estaselecionadoBifocal =
                                        valor;
                                  });
                                }),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Incolor:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerIncolor.estaselecionadoIncolor,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerIncolor.funcionIncolorCheckbox();
                                    controllerIncolor.estaselecionadoIncolor =
                                        valor;
                                  });
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 32.0)),
                            Text(
                              'A.R:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerAR.estaselecionadoAr,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerAR.funcionARCheckbox();
                                    controllerAR.estaselecionadoAr = valor;
                                  });
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, left: 10.0)),
                            Text(
                              'Fotossensível:',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Checkbox(
                                activeColor: Colors.black,
                                value: controllerFoto.estaselecionadoFoto,
                                onChanged: (bool valor) {
                                  setState(() {
                                    controllerFoto.funcionFotoCheckbox();
                                    controllerFoto.estaselecionadoFoto = valor;
                                  });
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 90.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 40.0),
                            child: Container(
                              padding: EdgeInsets.only(left: 45.0),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFd7ccc8)),
                              child: Center(
                                child: TextField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Observações',
                                      labelStyle: TextStyle(
                                          fontFamily: 'Varela',
                                          fontSize: 15.0,
                                          color: Colors.black),
                                    ),
                                    controller: _controllerObservacoes),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 40.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xFFd7ccc8),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(15.0),
                              child: Text(_isButtonDisabled
                                  ? 'Gerar Receita'
                                  : 'Receita gerada'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)),
                              onPressed: _alternaButton),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, left: 10.0, right: 40.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xFFd7ccc8),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(15.0),
                              child: Text('Compartilhar Receita'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)),
                              onPressed: _isButtonDisabled
                                  ? null
                                  : () async {
                                      await Printing.sharePdf(
                                          bytes: pdf.save(),
                                          filename: 'Receita.pdf');
                                      writeOnPdf();
                                    }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, left: 10.0, right: 40.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xFFd7ccc8),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(15.0),
                              child: Text('Nova Receita'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)),
                              onPressed: _isButtonDisabled
                                  ? null
                                  : () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ReceitaExpress()));
                                    }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, left: 10.0, right: 40.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xFFd7ccc8),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(15.0),
                              child: Text('Voltar'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, left: 10.0, right: 40.0, bottom: 200.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xFFd7ccc8),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(15.0),
                              child: Text('Início'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Home()));
                              }),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 10,
                  left: 75.0,
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/olho-humano.png'),
                          fit: BoxFit.cover),
                    ),
                  )),
              Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                    height: 300.0,
                    width: 250.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 150.0,
                              child: Text(
                                'Receita Express',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Tenha acesso rápido a dioptria do paciente e compartilhe em um click.',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 13.0,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xff473d3a)),
                              child: Center(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '+1.50',
                                        style: TextStyle(
                                            fontFamily: 'Varela',
                                            fontSize: 13.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xff473d3a)),
                              child: Center(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '-2.00',
                                        style: TextStyle(
                                            fontFamily: 'Varela',
                                            fontSize: 13.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  _alternaButton() {
    setState(() => _isButtonDisabled = !_isButtonDisabled);
    setState(() async {
      writeOnPdf();
      await savePdf();
      Directory documentDirectory = await getApplicationDocumentsDirectory();
      String documentPath = documentDirectory.path;
      String fullPath = "$documentPath/Receita.pdf";
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PdfPreviewScreen(
                    path: fullPath,
                  )));
    });
  }
}
