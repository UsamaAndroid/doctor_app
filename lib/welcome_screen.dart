import 'package:doc_app/signup_pd.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomes extends StatefulWidget {
  const Welcomes({Key? key}) : super(key: key);

  @override
  _WelcomesState createState() => _WelcomesState();
}

class _WelcomesState extends State<Welcomes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/images/stetho1.png').image)),
      child: Column(
        children: [
          SizedBox(
            height: 82,
          ),
          Text(
            'Welcome',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 40.0,
            ),
          ), SizedBox(
            height: 400,
          ),
          MaterialButton(minWidth: 258,height: 49,
            onPressed: () {
             // dismisses only the dialog and returns false
            },
            child: Text(
              'Sign In',
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
                return SigupPd();
              }));
            },
            child: Text(
              'Sign Up',
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

        ],
      ),
    ));
  }
}
