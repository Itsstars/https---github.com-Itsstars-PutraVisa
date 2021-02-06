import 'package:flutter/material.dart';
import 'package:flutter_starter/maps/map_permission.dart';
import 'package:flutter_starter/ui/pages/Photo_passport.dart';
import 'package:flutter_starter/ui/pages/attendance.dart';
import 'package:flutter_starter/ui/pages/health.dart';
import 'package:flutter_starter/ui/pages/papers_done.dart';
import 'package:flutter_starter/ui/pages/reciept.dart';
import 'package:flutter_starter/ui/pages/registration.dart';
import 'package:flutter_starter/ui/pages/renewelchecklist.dart';
import 'package:flutter_starter/ui/pages/results.dart';
import 'package:flutter_starter/ui/pages/visapass.dart';

import '../localizations.dart';

class Document extends StatefulWidget {
  @override
  DocumentState createState() => DocumentState();
}

class DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(labels.dashboard.title),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(labels.dashboard.welcome,
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
                          side: BorderSide(color: Colors.red[900])),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp2()),
                        );
                      },
                      child: Text(labels.dashboard.map,
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
                          side: BorderSide(color: Colors.red[900])),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Text('Track your progress',
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
                title: Text('Checklist for student Renewal Application'),
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
                title: Text('Course Registration Slip'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registration()),
                  );
                },
              ),
              ListTile(
                title: Text('Examination Result'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },
              ),
              ListTile(
                title: Text('Attendance Report'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Attendance()),
                  );
                },
              ),
              ListTile(
                title: Text('Insurance Cover Note'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Health()),
                  );
                },
              ),
              ListTile(
                title: Text('Photo and Passport Guidelines'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Photo()),
                  );
                },
              ),
              ListTile(
                title: Text('Reciept'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Reciept()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
