import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/renewelchecklist.dart';
import 'package:flutter_starter/ui/pages/visapass.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Document extends StatefulWidget {
  @override
  DocumentState createState() => DocumentState();
}

class DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                center: new Text(
                  "70.0%",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: new Text(
                  "Successfully collected Document",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          'Welcome to putra visa where you can track and manage all your visa related documents',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black.withOpacity(1.0),
                              fontWeight: FontWeight.bold)),
                    ]),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.all(24),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      child: Text('UPM MAP',
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
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Document List',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text('Checklist for student renewal application'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RenewalChecklistPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Visa and pass application form'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VisaPass()),
                  );
                },
              ),
              ListTile(
                title: Text('registration Slip'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
