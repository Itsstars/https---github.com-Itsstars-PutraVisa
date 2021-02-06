import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Photo extends StatefulWidget {
  @override
  PhotoState createState() => PhotoState();
}

class PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'PHOTO AND PASSPORT GUIDELINES',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 290,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/images/passport.jpeg',
                    height: 280,
                    width: 170,
                  ),
                  Image.asset(
                    'assets/images/photo.jpeg',
                    height: 280,
                    width: 170,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Sample Paper',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: TextStyle(color: Colors.blue[700], fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Please follow the guidelines',
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
                            text: 'Regarding the Photo and Passport',
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
                            text: 'Print the required amount',
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
          ],
        ),
      ),
    );
  }
}
