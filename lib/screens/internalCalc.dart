import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SVCECalc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SVCECalc();
  }
}

double marks = 0;

class _SVCECalc extends State<SVCECalc> {
  var _minimumPadding = 1.5;
  TextEditingController internal1 = TextEditingController();
  TextEditingController internal2 = TextEditingController();
  TextEditingController internal3 = TextEditingController();
  TextEditingController cat1 = TextEditingController();
  TextEditingController cat2 = TextEditingController();
  TextEditingController cat3 = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var displayResult = '';
  var _autovalidate = false;
  @override
  Widget build(BuildContext context) {
    //TextStyle textStyle = Theme.of(context).textTheme.title;
    TextStyle textStyle = TextStyle(
        fontFamily: 'Poppins-Regular',
        fontSize: 18,
        color: Colors.blue,
        fontWeight: FontWeight.bold);
    TextStyle textStyle2 = TextStyle(
      fontFamily: 'Poppins-Regular',
      color: Colors.blue,
    );
    TextStyle textStyle3 = TextStyle(
      fontFamily: 'Poppins-Regular',
      color: Colors.red,
    );
    return Scaffold(
        body: Form(
      key: _formKey,
      autovalidate: _autovalidate,
      child: Padding(
        padding: EdgeInsets.all(_minimumPadding * 7.0),
        child: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  bottom: _minimumPadding * 7.0, top: _minimumPadding * 7.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Text(
                    'CAT Subject Marks',
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.20,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: _minimumPadding * 3, right: _minimumPadding * 3),
                ),
                Expanded(
                    child: Text('CAT Assignment Marks',
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.20,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)))
              ])),
          Container(height: _minimumPadding * 4.0),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter valid value';
                        }
                        if (int.parse(value) > 50 || int.parse(value) < 0) {
                          return 'Enter correct mark';
                        }
                      },
                      controller: cat1,
                      decoration: InputDecoration(
                        errorStyle: textStyle3,
                        labelText: 'CAT 1 Marks',
                        labelStyle: textStyle,
                        hintText: 'Enter CAT 1 Marks',
                        hintStyle: textStyle2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ))),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: _minimumPadding * 3, right: _minimumPadding * 3),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter valid value';
                        }
                        if (int.parse(value) > 50 || int.parse(value) < 0) {
                          return 'Enter correct mark';
                        }
                      },
                      controller: internal1,
                      decoration: InputDecoration(
                        errorStyle: textStyle3,
                        labelText: 'CAT 1 Assignment',
                        labelStyle: textStyle,
                        hintStyle: textStyle2,
                        hintText: 'Enter Assignment 1 Marks',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ))),
            )
          ]),
          Container(height: _minimumPadding * 3.0),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter valid value';
                        }
                        if (int.parse(value) > 50 || int.parse(value) < 0) {
                          return 'Enter correct mark';
                        }
                      },
                      controller: cat2,
                      decoration: InputDecoration(
                        errorStyle: textStyle3,
                        labelText: 'CAT 2 Marks',
                        labelStyle: textStyle,
                        hintStyle: textStyle2,
                        hintText: 'Enter CAT 2 Marks',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ))),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: _minimumPadding * 3, right: _minimumPadding * 3),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter valid value';
                        }
                        if (int.parse(value) > 50 || int.parse(value) < 0) {
                          return 'Enter correct mark';
                        }
                      },
                      controller: internal2,
                      decoration: InputDecoration(
                        errorStyle: textStyle3,
                        labelText: 'CAT 2 Assignment',
                        labelStyle: textStyle,
                        hintStyle: textStyle2,
                        hintText: 'Enter Assignment 2 Marks',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ))),
            )
          ]),
          Container(height: _minimumPadding * 3.0),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter valid value';
                        }
                        if (int.parse(value) > 50 || int.parse(value) < 0) {
                          return 'Enter correct mark';
                        }
                      },
                      controller: cat3,
                      decoration: InputDecoration(
                        errorStyle: textStyle3,
                        labelText: 'CAT 3 Marks',
                        labelStyle: textStyle,
                        hintStyle: textStyle2,
                        hintText: 'Enter CAT 3 Marks',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ))),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: _minimumPadding * 3, right: _minimumPadding * 3),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter valid value';
                        }
                        if (int.parse(value) > 50 || int.parse(value) < 0) {
                          return 'Enter correct mark';
                        }
                      },
                      controller: internal3,
                      decoration: InputDecoration(
                        errorStyle: textStyle3,
                        labelText: 'CAT 3 Assignment',
                        labelStyle: textStyle,
                        hintStyle: textStyle2,
                        hintText: 'Enter Assignment 3 Marks',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ))),
            ),
          ]),
          Container(height: _minimumPadding * 3.0),
          Padding(
            padding:
                EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 45.0,
                  child: RaisedButton(
                    child: Text(
                      'Calculate',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState.validate()) {
                          this.displayResult = _calculateTotalReturns();
                        }
                      });
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                )),
                Container(
                  width: _minimumPadding * 4,
                ),
                Expanded(
                    child: Container(
                  height: 45.0,
                  child: RaisedButton(
                    child: Text(
                      'Reset',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {
                        _reset();
                      });
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ))
              ],
            ),
          ),
          Container(height: _minimumPadding * 3.0),
          Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding * 10,
                  left: _minimumPadding * 10,
                  bottom: _minimumPadding * 10),
              child: Text(
                this.displayResult,
                style: textStyle,
                textScaleFactor: 1.2,
              )),
        ]),
      ),
    ));
  }

  void _reset() {
    internal1.text = '';
    internal2.text = '';
    internal3.text = '';
    cat1.text = '';
    cat2.text = '';
    cat3.text = '';
    displayResult = '';
    _autovalidate = false;
  }

  String _calculateTotalReturns() {
    double c1, i1, c2, i2, c3, i3;
    c1 = double.parse(cat1.text);
    c2 = double.parse(cat2.text);
    c3 = double.parse(cat3.text);
    i1 = double.parse(internal1.text);
    i2 = double.parse(internal2.text);
    i3 = double.parse(internal3.text);
    double internal, cat;
    cat = c1 + c2 + c3;
    internal = i1 + i2 + i3;
    cat = cat * 0.7;
    internal = internal * 0.3;
    marks = cat + internal;
    marks = marks / 3.0;
    marks = num.parse(marks.toStringAsFixed(2));
    String result = 'Your internal marks: $marks';
    return result;
  }
}

///Starting of GRADE CALCULATION
class GradeCalc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GradeCalc();
  }
}

List<String> displayResult = ['', '', '', '', '', ''];

enum SingingCharacter { y2016, y2018 }

class _GradeCalc extends State<GradeCalc> {
  var _formKey = GlobalKey<FormState>();
  SingingCharacter _character = SingingCharacter.y2018;
  var _autovalidate = false;
  var _minimumPadding = 1.5;
  TextEditingController internal = TextEditingController(text: '');
  int creator = 0;

  TextStyle textStyle = TextStyle(
    fontFamily: 'Poppins-Regular',
    fontSize: 18,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
  TextStyle textStyle2 = TextStyle(
    fontFamily: 'Poppins-Regular',
    color: Colors.blue,
  );
  TextStyle textStyle3 = TextStyle(
    fontFamily: 'Poppins-Regular',
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            autovalidate: _autovalidate,
            child: ListView(children: <Widget>[
              ListTile(
                title: const Text('Regulation 2016'),
                leading: Radio(
                  value: SingingCharacter.y2016,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                      //displayResult = _calculateGrade2016();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Regulation 2018'),
                leading: Radio(
                  value: SingingCharacter.y2018,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                      //displayResult = _calculateGrade2018();
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _minimumPadding * 5),
                child: Row(children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: _minimumPadding * 60)),
                  Expanded(
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (String value) {
                            if (value.isEmpty) {
                              displayResult = emptyResult();
                              return 'Enter valid value';
                            }
                            if (int.parse(value) == 1337) {
                              creator = 1;
                              //_showDialog();
                              debugPrint('1337 was called');

                              //  html.window.open('https://in.linkedin.com/in/swaran-iyappan','LinkedIn');
                            }
                            if ((int.parse(value) > 50 ||
                                    int.parse(value) < 0) &&
                                int.parse(value) != 1337) {
                              displayResult = emptyResult();
                              return 'Enter correct mark';
                            }
                          },
                          controller: internal,
                          decoration: InputDecoration(
                            errorStyle: textStyle3,
                            labelText: 'Internal Marks',
                            labelStyle: textStyle,
                            hintText: 'Enter Internal Marks',
                            hintStyle: textStyle2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ))),
                  Padding(padding: EdgeInsets.only(left: _minimumPadding * 60)),
                ]),
              ),
              Container(height: _minimumPadding * 10),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: _minimumPadding * 60)),
                  Expanded(
                    child: Container(
                      height: 45.0,
                      child: RaisedButton(
                        child: Text(
                          'Calculate',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState.validate() &&
                                creator == 1) {
                              displayResult = _showCreator();
                              SystemChannels.textInput
                                  .invokeMethod('TextInput.hide');
                            }
                            if (_formKey.currentState.validate() &&
                                _character == SingingCharacter.y2016 &&
                                creator == 0) {
                              displayResult = _calculateGrade2016();
                              SystemChannels.textInput
                                  .invokeMethod('TextInput.hide');
                            }

                            if (_formKey.currentState.validate() &&
                                _character == SingingCharacter.y2018 &&
                                creator == 0) {
                              displayResult = _calculateGrade2018();
                              SystemChannels.textInput
                                  .invokeMethod('TextInput.hide');
                            }
                            creator = 0;
                          });
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: _minimumPadding * 60)),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 10,
                      left: _minimumPadding * 10,
                      bottom: _minimumPadding * 10),
                  child: Text(
                    displayResult[0],
                    //grade.toString(),
                    style: textStyle,
                    textScaleFactor: 1.2,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 10,
                      left: _minimumPadding * 10,
                      bottom: _minimumPadding * 10),
                  child: Text(
                    displayResult[1],
                    style: textStyle,
                    textScaleFactor: 1.2,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 10,
                      left: _minimumPadding * 10,
                      bottom: _minimumPadding * 10),
                  child: Text(
                    displayResult[2],
                    style: textStyle,
                    textScaleFactor: 1.2,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 10,
                      left: _minimumPadding * 10,
                      bottom: _minimumPadding * 10),
                  child: Text(
                    displayResult[3],
                    style: textStyle,
                    textScaleFactor: 1.2,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 10,
                      left: _minimumPadding * 10,
                      bottom: _minimumPadding * 10),
                  child: Text(
                    displayResult[4],
                    style: textStyle,
                    textScaleFactor: 1.2,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 10,
                      left: _minimumPadding * 10,
                      bottom: _minimumPadding * 10),
                  child: Text(
                    displayResult[5],
                    style: textStyle,
                    textScaleFactor: 1.2,
                  )),
            ])));
  }

  List<String> emptyResult() {
    List<String> ret;
    ret = ['', '', '', '', '', ''];
    return ret;
  }

  List<String> _showCreator() {
    List<String> ret = [
      'Swaran I.',
      'CSE',
      'Batch of 21\'',
      'Created this app.',
      '',
      ''
    ];
    return ret;
  }

  List<String> _calculateGrade2016() {
    String s, a, b, c, d, e;
    double inter = 0;
    List<String> ret = [];
    inter = double.parse(internal.text) + 50;
    if (inter <= 90)
      s = 'S Grade : Not possible';
    else
      s = ('S Grade : ') + ((-(inter - 91) + 50) * 2).toString();
    ret.add(s);
    if (inter <= 80)
      a = 'A Grade : Not possible';
    else {
      if ((-(inter - 81) + 50) * 2 >= 46)
        a = ('A Grade : ') + ((-(inter - 81) + 50) * 2).toString();
      else
        a = 46.0.toString();
    }
    ret.add(a);
    if (inter <= 70)
      b = 'B Grade : Not possible';
    else {
      if (((-(inter - 71) + 50) * 2) >= 46)
        b = ('B Grade : ') + ((-(inter - 71) + 50) * 2).toString();
      else
        b = ('B Grade : ') + 46.0.toString();
    }
    ret.add(b);
    if (inter <= 60)
      c = 'C Grade : Not possible';
    else {
      if (((-(inter - 61) + 50) * 2) >= 46)
        c = ('C Grade : ') + ((-(inter - 61) + 50) * 2).toString();
      else
        c = ('C Grade : ') + 46.0.toString();
    }
    ret.add(c);
    if (inter <= 55)
      d = 'D Grade : Not possible';
    else {
      if (((-(inter - 56) + 50) * 2) >= 46)
        d = ('D Grade : ') + ((-(inter - 56) + 50) * 2).toString();
      else
        d = ('D Grade : ') + 46.0.toString();
    }
    ret.add(d);
    if (inter <= 50)
      e = 'E Grade : Not possible';
    else {
      if (((-(inter - 51) + 50) * 2) >= 46)
        e = ('E Grade : ') + ((-(inter - 51) + 50) * 2).toString();
      else
        e = ('E Grade : ') + 46.0.toString();
    }
    ret.add(e);
    return ret;
  }

  List<String> _calculateGrade2018() {
    String s, a, b, c, d;
    double inter;
    List<String> ret = [];
    inter = double.parse(internal.text) + 50;
    if (inter <= 90)
      s = 'O Grade   : Not possible';
    else
      s = ('O Grade   : ') + ((-(inter - 91) + 50) * 2).toString();
    ret.add(s);
    if (inter <= 80)
      a = 'A+ Grade : Not possible';
    else {
      if ((-(inter - 81) + 50) * 2 >= 46)
        a = ('A+ Grade : ') + ((-(inter - 81) + 50) * 2).toString();
      else
        a = ('A+ Grade : ') + 46.0.toString();
    }
    ret.add(a);
    if (inter <= 70)
      b = ('A Grade   : ') + 'Not possible';
    else {
      if (((-(inter - 71) + 50) * 2) >= 46)
        b = ('A Grade   : ') + ((-(inter - 71) + 50) * 2).toString();
      else
        b = ('A Grade   : ') + 46.0.toString();
    }
    ret.add(b);
    if (inter <= 60)
      c = ('B+ Grade : ') + 'Not possible';
    else {
      if (((-(inter - 61) + 50) * 2) >= 46)
        c = ('B+ Grade : ') + ((-(inter - 61) + 50) * 2).toString();
      else
        c = ('B+ Grade : ') + 46.0.toString();
    }
    ret.add(c);
    if (inter <= 50)
      d = ('B Grade   : ') + 'Not possible';
    else {
      if (((-(inter - 51) + 50) * 2) >= 46)
        d = ('B Grade   : ') + ((-(inter - 51) + 50) * 2).toString();
      else
        d = ('B Grade   : ') + 46.0.toString();
    }
    ret.add(d);
    ret.add('');
    return ret;
  }
}
