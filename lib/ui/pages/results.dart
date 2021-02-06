import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EXAMINATION RESULT'),
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
                'assets/images/result.jpeg',
                height: 280,
                width: 200,
              ),
              Text(
                'Sample Paper',
                style: TextStyle(fontSize: 20.0),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'In order to acquire this document please go to ESMP',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Then My Register -> Examination Result',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Before Printing send to Academic Advisor(PA) or Head of Department',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'After it is Stamped Print 2 copies of this slip',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Include this page when submitting your documents for visa renewal ',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                  ],
                ),
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
                      onPressed: () {
                        launchURL();
                      },
                      child: Text('ESMP',
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

launchURL() async {
  const url =
      'https://smp.upm.edu.my/smp/action/security/loginSmpSetup?TX=2137351145801114';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
