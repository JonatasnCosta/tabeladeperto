import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:tabeladeperto_app/PdfPreviewScreen.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ReceitaExpress extends StatefulWidget {
  @override
  _ReceitaExpressState createState() => _ReceitaExpressState();
}

class _ReceitaExpressState extends State<ReceitaExpress> {
  TextEditingController _controllerNomePaciente = TextEditingController();
  TextEditingController _controllerObsercacoes = TextEditingController();

  var _od = [
    '  0.00',
    '+0.25',
    '-0.25',
    '+0.50',
    '-0.50',
    '+0.75',
    '-0.75',
    '+1.00',
    '-1.00',
    '+1.25',
    '-1.25',
    '+1.50',
    '-1.50',
    '+1.75',
    '-1.75',
    '+2.00',
    '-2.00',
    '+2.25',
    '-2.25',
    '+2.50',
    '-2.50',
    '+2.75',
    '-2.75',
    '+3.00',
    '-3.00',
    '+3.25',
    '-3.25',
    '+3.50',
    '-3.50',
    '+3.75',
    '-3.75',
    '+4.00',
    '-4.00',
    '+4.25',
    '-4.25',
    '+4.50',
    '-4.50',
    '+4.75',
    '-4.75',
    '+5.00',
    '-5.00',
    '+5.25',
    '-5.25',
    '+5.50',
    '-5.50',
    '+5.75',
    '-5.75',
    '+6.00',
    '-6.00',
    '+6.25',
    '-6.25',
    '+6.50',
    '-6.50',
    '+6.75',
    '-6.75',
    '+7.00',
    '-7.00',
    '+7.25',
    '-7.25',
    '+7.50',
    '-7.50',
    '+7.75',
    '-7.75',
    '+8.00',
    '-8.00',
    '+8.25',
    '-8.25',
    '+8.50',
    '-8.50',
    '+8.75',
    '-8.75',
    '+9.00',
    '-9.00',
    '+9.25',
    '-9.25',
    '+9.50',
    '-9.50',
    '+9.75',
    '-9.75',
    '+10.00',
    '-10.00',
    '+10.25',
    '-10.25',
    '+10.50',
    '-10.50',
    '+10.75',
    '-10.75',
    '+11.00',
    '-11.00',
    '+11.25',
    '-11.25',
    '+11.50',
    '-11.50',
    '+11.75',
    '-11.75',
    '+12.00',
    '-12.00',
    '+12.25',
    '-12.25',
    '+12.50',
    '-12.50',
    '+12.75',
    '-12.75',
    '+13.00',
    '-13.00',
    '+13.25',
    '-13.25',
    '+13.50',
    '-13.50',
    '+13.75',
    '-13.75',
    '+14.00',
    '-14.00',
    '+14.25',
    '-14.25',
    '+14.50',
    '-14.50',
    '+14.75',
    '-14.75',
    '+15.00',
    '-15.00',
    '+15.25',
    '-15.25',
    '+15.50',
    '-15.50',
    '+15.75',
    '-15.75',
    '+16.00',
    '-16.00',
    '+16.25',
    '-16.25',
    '+16.50',
    '-16.50',
    '+16.75',
    '-16.75',
    '+17.00',
    '-17.00',
    '+17.25',
    '-17.25',
    '+17.50',
    '-17.50',
    '+17.75',
    '-17.75',
    '+18.00',
    '-18.00',
    '+18.25',
    '-18.25',
    '+18.50',
    '-18.50',
    '+18.75',
    '-18.75',
    '+19.00',
    '-19.00',
    '+19.25',
    '-19.25',
    '+19.50',
    '-19.50',
    '+19.75',
    '-19.75',
    '+20.00',
    '-20.00',
    '+20.25',
    '-20.25',
    '+20.50',
    '-20.50',
    '+20.75',
    '-20.75',
    '+21.00',
    '-21.00',
    '+21.25',
    '-21.25',
    '+21.50',
    '-21.50',
    '+21.75',
    '-21.75',
    '+22.00',
    '-22.00',
    '+22.25',
    '-22.25',
    '+22.50',
    '-22.50',
    '+22.75',
    '-22.75',
    '+23.00',
    '-23.00',
    '+23.25',
    '-23.25',
    '+23.50',
    '-23.50',
    '+23.75',
    '-23.75',
    '+24.00',
    '-24.00',
    '+24.25',
    '-24.25',
    '+24.50',
    '-24.50',
    '+24.75',
    '-24.75',
    '+25.00',
    '-25.00',
  ];

  var _currentItemSelectedOD = '  0.00';

  var _cilod = [
    '  0.00',
    '-0.25',
    '-0.50',
    '-0.75',
    '-1.00',
    '-1.25',
    '-1.50',
    '-1.75',
    '-2.00',
    '-2.25',
    '-2.50',
    '-2.75',
    '-3.00',
    '-3.25',
    '-3.50',
    '-3.75',
    '-4.00',
    '-4.25',
    '-4.50',
    '-4.75',
    '-5.00',
    '-5.25',
    '-5.50',
    '-5.75',
    '-6.00',
    '-6.25',
    '-6.50',
    '-6.75',
    '-7.00',
    '-7.25',
    '-7.50',
    '-7.75',
    '-8.00',
    '-8.25',
    '-8.50',
    '-8.75',
    '-9.00',
    '-10.25',
    '-10.50',
    '-10.75',
    '-11.00',
    '-11.25',
    '-11.50',
    '-11.75',
    '-12.00',
    '-12.25',
    '-12.50',
    '-12.75',
    '-13.00',
    '-13.25',
    '-13.50',
    '-13.75',
    '-14.00',
    '-14.25',
    '-14.50',
    '-14.75',
    '-15.00',
    '-15.25',
    '-15.50',
    '-15.75',
    '-16.00',
    '-17.25',
    '-17.50',
    '-17.75',
    '-18.00',
    '-18.25',
    '-18.50',
    '-18.75',
    '-19.00',
    '-19.25',
    '-19.50',
    '-19.75',
    '-20.00',
  ];
  var _currentItemSelectedCILOD = '  0.00';

  var _eixood = [
    '  0',
    '5',
    '10',
    '15',
    '20',
    '25',
    '30',
    '35',
    '40',
    '45',
    '50',
    '55',
    '60',
    '65',
    '70',
    '75',
    '80',
    '85',
    '90',
    '95',
    '100',
    '105',
    '110',
    '115',
    '120',
    '125',
    '130',
    '135',
    '140',
    '145',
    '150',
    '155',
    '160',
    '165',
    '170',
    '175',
    '180'
  ];
  var _currentItemSelectedEIXOOD = '  0';

  var _oe = [
    '  0.00',
    '+0.25',
    '-0.25',
    '+0.50',
    '-0.50',
    '+0.75',
    '-0.75',
    '+1.00',
    '-1.00',
    '+1.25',
    '-1.25',
    '+1.50',
    '-1.50',
    '+1.75',
    '-1.75',
    '+2.00',
    '-2.00',
    '+2.25',
    '-2.25',
    '+2.50',
    '-2.50',
    '+2.75',
    '-2.75',
    '+3.00',
    '-3.00',
    '+3.25',
    '-3.25',
    '+3.50',
    '-3.50',
    '+3.75',
    '-3.75',
    '+4.00',
    '-4.00',
    '+4.25',
    '-4.25',
    '+4.50',
    '-4.50',
    '+4.75',
    '-4.75',
    '+5.00',
    '-5.00',
    '+5.25',
    '-5.25',
    '+5.50',
    '-5.50',
    '+5.75',
    '-5.75',
    '+6.00',
    '-6.00',
    '+6.25',
    '-6.25',
    '+6.50',
    '-6.50',
    '+6.75',
    '-6.75',
    '+7.00',
    '-7.00',
    '+7.25',
    '-7.25',
    '+7.50',
    '-7.50',
    '+7.75',
    '-7.75',
    '+8.00',
    '-8.00',
    '+8.25',
    '-8.25',
    '+8.50',
    '-8.50',
    '+8.75',
    '-8.75',
    '+9.00',
    '-9.00',
    '+9.25',
    '-9.25',
    '+9.50',
    '-9.50',
    '+9.75',
    '-9.75',
    '+10.00',
    '-10.00',
    '+10.25',
    '-10.25',
    '+10.50',
    '-10.50',
    '+10.75',
    '-10.75',
    '+11.00',
    '-11.00',
    '+11.25',
    '-11.25',
    '+11.50',
    '-11.50',
    '+11.75',
    '-11.75',
    '+12.00',
    '-12.00',
    '+12.25',
    '-12.25',
    '+12.50',
    '-12.50',
    '+12.75',
    '-12.75',
    '+13.00',
    '-13.00',
    '+13.25',
    '-13.25',
    '+13.50',
    '-13.50',
    '+13.75',
    '-13.75',
    '+14.00',
    '-14.00',
    '+14.25',
    '-14.25',
    '+14.50',
    '-14.50',
    '+14.75',
    '-14.75',
    '+15.00',
    '-15.00',
    '+15.25',
    '-15.25',
    '+15.50',
    '-15.50',
    '+15.75',
    '-15.75',
    '+16.00',
    '-16.00',
    '+16.25',
    '-16.25',
    '+16.50',
    '-16.50',
    '+16.75',
    '-16.75',
    '+17.00',
    '-17.00',
    '+17.25',
    '-17.25',
    '+17.50',
    '-17.50',
    '+17.75',
    '-17.75',
    '+18.00',
    '-18.00',
    '+18.25',
    '-18.25',
    '+18.50',
    '-18.50',
    '+18.75',
    '-18.75',
    '+19.00',
    '-19.00',
    '+19.25',
    '-19.25',
    '+19.50',
    '-19.50',
    '+19.75',
    '-19.75',
    '+20.00',
    '-20.00',
    '+20.25',
    '-20.25',
    '+20.50',
    '-20.50',
    '+20.75',
    '-20.75',
    '+21.00',
    '-21.00',
    '+21.25',
    '-21.25',
    '+21.50',
    '-21.50',
    '+21.75',
    '-21.75',
    '+22.00',
    '-22.00',
    '+22.25',
    '-22.25',
    '+22.50',
    '-22.50',
    '+22.75',
    '-22.75',
    '+23.00',
    '-23.00',
    '+23.25',
    '-23.25',
    '+23.50',
    '-23.50',
    '+23.75',
    '-23.75',
    '+24.00',
    '-24.00',
    '+24.25',
    '-24.25',
    '+24.50',
    '-24.50',
    '+24.75',
    '-24.75',
    '+25.00',
    '-25.00',
  ];

  var _currentItemSelectedOE = '  0.00';
  var _ciloe = [
    '  0.00',
    '-0.25',
    '-0.50',
    '-0.75',
    '-1.00',
    '-1.25',
    '-1.50',
    '-1.75',
    '-2.00',
    '-2.25',
    '-2.50',
    '-2.75',
    '-3.00',
    '-3.25',
    '-3.50',
    '-3.75',
    '-4.00',
    '-4.25',
    '-4.50',
    '-4.75',
    '-5.00',
    '-5.25',
    '-5.50',
    '-5.75',
    '-6.00',
    '-6.25',
    '-6.50',
    '-6.75',
    '-7.00',
    '-7.25',
    '-7.50',
    '-7.75',
    '-8.00',
    '-8.25',
    '-8.50',
    '-8.75',
    '-9.00',
    '-10.25',
    '-10.50',
    '-10.75',
    '-11.00',
    '-11.25',
    '-11.50',
    '-11.75',
    '-12.00',
    '-12.25',
    '-12.50',
    '-12.75',
    '-13.00',
    '-13.25',
    '-13.50',
    '-13.75',
    '-14.00',
    '-14.25',
    '-14.50',
    '-14.75',
    '-15.00',
    '-15.25',
    '-15.50',
    '-15.75',
    '-16.00',
    '-17.25',
    '-17.50',
    '-17.75',
    '-18.00',
    '-18.25',
    '-18.50',
    '-18.75',
    '-19.00',
    '-19.25',
    '-19.50',
    '-19.75',
    '-20.00',
  ];
  var _currentItemSelectedCILOE = '  0.00';

  var _eixooe = [
    '  0',
    '5',
    '10',
    '15',
    '20',
    '25',
    '30',
    '35',
    '40',
    '45',
    '50',
    '55',
    '60',
    '65',
    '70',
    '75',
    '80',
    '85',
    '90',
    '95',
    '100',
    '105',
    '110',
    '115',
    '120',
    '125',
    '130',
    '135',
    '140',
    '145',
    '150',
    '155',
    '160',
    '165',
    '170',
    '175',
    '180'
  ];
  var _currentItemSelectedEIXOOE = '  0';
  var _add = [
    '  0.00',
    '0.75',
    '1.00',
    '1.25',
    '1.50',
    '1.75',
    '2.00',
    '2.25',
    '2.50',
    '2.75',
    '3.00',
    '3.25',
    '3.50'
  ];
  var _currentItemSelectedADD = '  0.00';

  bool _isButtonDisabled = true;
  final pdf = pw.Document();
  writeOnPdf() {
    pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a3,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return <pw.Widget>[
          pw.Header(
            level: 0,
            child: pw.Text("Receita",
                style: pw.TextStyle(
                  fontSize: 40.0,
                )),
          ),
          pw.Row(children: [
            pw.Paragraph(
                text: "Nome do paciente: ",
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
            pw.Paragraph(
                text: _controllerNomePaciente.text,
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "OD: $_currentItemSelectedOD ",
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
            pw.Paragraph(
                text: '  Cil:  $_currentItemSelectedCILOD',
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
            pw.Paragraph(
                text: '  Eixo:  $_currentItemSelectedEIXOOD',
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "OE: $_currentItemSelectedOE",
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
            pw.Paragraph(
                text: '  Cil:  $_currentItemSelectedCILOE',
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
            pw.Paragraph(
                text: '  Eixo:  $_currentItemSelectedEIXOOE',
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "Adição:  $_currentItemSelectedADD",
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: "Observações:",
                style: pw.TextStyle(
                  fontSize: 30.0,
                )),
          ]),
          pw.Row(children: [
            pw.Paragraph(
                text: _controllerObsercacoes.text,
                style: pw.TextStyle(
                  fontSize: 30.0,
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
                                items: _od.map((String dropDownStringItem) {
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
                                items: _cilod.map((String dropDownStringItem) {
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
                                items: _eixood.map((String dropDownStringItem) {
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
                                items: _oe.map((String dropDownStringItem) {
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
                                items: _ciloe.map((String dropDownStringItem) {
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
                                items: _eixooe.map((String dropDownStringItem) {
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
                              items: _add.map((String dropDownStringItem) {
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
                                    controller: _controllerObsercacoes),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 40.0),
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
                              top: 5.0, left: 10.0, right: 40.0, bottom: 200.0),
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
                        SizedBox(height: 20.0)
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
