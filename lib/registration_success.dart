import 'package:doc_app/home_landing_patient.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class regSuccess extends StatefulWidget {
  const regSuccess({Key? key}) : super(key: key);

  @override
  _regSuccessState createState() => _regSuccessState();
}

class _regSuccessState extends State<regSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        SizedBox(height: 155,),
        Image.asset('assets/images/reg2.png'),
        SizedBox(height: 65,),

        Row(
          children: [
            Expanded(
              child : Text(
                'Registration\nSuccess',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400, fontSize: 29.0,),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 31,
        ),
        MaterialButton(minWidth: 166,height: 55,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeLandingPatient();
            }));
          },
          child: Text(
            'Proceed',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,color: Colors.white
            ),
          ),
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(18.0),
          ),
        ),
        Container(),
      ],
    ));
  }
}
