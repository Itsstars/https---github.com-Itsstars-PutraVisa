import 'package:flutter/material.dart';

class VisaPass extends StatefulWidget {
  @override
  VisaPassState createState() => VisaPassState();
}

class VisaPassState extends State<VisaPass> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CHECKLIST FOR VISA RENEWAL'),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.only(top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/Visapass.png',
                height: 280,
                width: 200,
              ),
              Text(
                'Sample Paper',
                style: TextStyle(fontSize: 20.0),
              ),
              Container(
                margin: EdgeInsets.all(24),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: CheckboxListTile(
                  title: Text(
                    "Document Acquired",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'Tick here if you collected this document',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),
                  activeColor: Colors.black,
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
              ),
              Text(
                'Please use the buttons below to store your copy of this document',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      child: Text('Upload',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          )),
                      color: Colors.red[900],
                      elevation: 5,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      child: Text('Delete',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          )),
                      color: Colors.red[900],
                      elevation: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
