import 'package:doc_app/sigin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigupPd extends StatefulWidget {
  const SigupPd({Key? key}) : super(key: key);

  @override
  _SigupPdState createState() => _SigupPdState();
}

class _SigupPdState extends State<SigupPd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFC7C7C7),
        body: Column(
      children: [
        SizedBox(
          height: 90,
        ),
        Image.asset('assets/images/stetho2.png',height: 262,width: 390,),
        SizedBox(
          height: 58,
        ),
        Row(
          children: [   SizedBox(
            width: 42,
          ),
            Text(
              'Sign Up as:',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w900,
                  fontSize: 29.0,color: Colors.white
              ),
            ),
          ],
        ),
        SizedBox(
          height: 31,
        ),
        MaterialButton(minWidth: 258,height: 49,
          onPressed: () {
             // dismisses only the dialog and returns false
          },
          child: Text(
            'Patient',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,color: Colors.white
            ),
          ),
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        MaterialButton(minWidth: 258,height: 49,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SininScreen();
            }));
          },
          child: Text(
            'Doctor',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,color: Colors.white
            ),
          ),
          color: Color(0xFFA31B13),
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 81,
        ),

        Text(
          'Sign Up with',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w900,
              fontSize: 15.0,color: Colors.white
          ),
        ),        SizedBox(
          height: 8,
        ),

        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/google1.png',height: 29,width: 29,),
            SizedBox(
              width: 30,
            ),
            Image.asset('assets/images/facebook1.png',height: 29,width: 29,),

          ],
        ),
        Container(),
      ],
    ));
  }
}
