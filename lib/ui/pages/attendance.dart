import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ATTENDANCE REPORT'),
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
                'assets/images/attendance.jpeg',
                height: 280,
                width: 200,
              ),
              Text(
                'Sample Paper',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: '• ',
                              style: TextStyle(
                                  color: Colors.blue[700], fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'In order to acquire this Please email',
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
                              style: TextStyle(
                                  color: Colors.blue[700], fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Academic Advisor(PA) or Head of Department',
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
                              style: TextStyle(
                                  color: Colors.blue[700], fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Please ensure it is Stamped and print 2 copies',
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
                              style: TextStyle(
                                  color: Colors.blue[700], fontSize: 14),
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
                      onPressed: () {},
                      child: Text('Faculty Information',
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
