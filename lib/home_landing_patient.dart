import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLandingPatient extends StatefulWidget {
  const HomeLandingPatient({Key? key}) : super(key: key);

  @override
  _HomeLandingPatientState createState() => _HomeLandingPatientState();
}

class _HomeLandingPatientState extends State<HomeLandingPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Image.asset('assets/images/birmingham.png').image)),
    child: Stack(
      children: [
        Positioned(right: 18,top: 46,child: Image.asset('assets/images/plusminus.png')),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/you.png',),SizedBox(height: 5,),
              Image.asset('assets/images/locpointer.png',height: 31,width: 31,),
            ],
          )),
        Positioned(bottom: -13,child: Container(
            width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/images/navbarrmade.png'))),

        // Positioned(bottom: 34,
        //      child: Padding(
        //        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //        child: Container(
        //   width: MediaQuery.of(context).size.width-32,
        //   decoration: BoxDecoration(
        //   color: Color(0xFF0B0712),
        //         borderRadius: BorderRadius.all(Radius.circular(16))
        // ),
        //         padding: EdgeInsets.all(18.0),
        //   child: Row(
        //     children: [
        //         Expanded(
        //           child: Column(
        //             children: [
        //               Image.asset('assets/images/homei.png',),SizedBox(height: 6,),
        //               Text('Home',style: GoogleFonts.courierPrime(
        //     fontWeight: FontWeight.w700, fontSize: 13.0,color: Color(0xFFFBFCFC)),),
        //             ],
        //           ),
        //         ),
        //         Expanded(
        //           child: Column(
        //             children: [
        //               Image.asset('assets/images/loci.png',),SizedBox(height: 6,),
        //               Text('Search',style: GoogleFonts.courierPrime(
        //     fontWeight: FontWeight.bold, fontSize: 12.8,color: Color.fromRGBO(212, 221, 224, 0.6)),),
        //             ],
        //           ),
        //         ),
        //         Expanded(
        //           child: Column(
        //             children: [
        //               Image.asset('assets/images/emaili.png',),SizedBox(height: 6,),
        //               Text('Inbox',style: GoogleFonts.courierPrime(
        //     fontWeight: FontWeight.bold, fontSize: 12.8,color: Color.fromRGBO(212, 221, 224, 0.6)),),
        //             ],
        //           ),
        //         ),
        //         Expanded(
        //           child: Column(
        //             children: [
        //               Image.asset('assets/images/favi.png',),SizedBox(height: 6,),
        //               Text('Favorite',style: GoogleFonts.courierPrime(
        //     fontWeight: FontWeight.bold, fontSize: 12.8,color: Color.fromRGBO(212, 221, 224, 0.6)),),
        //             ],
        //           ),
        //         ),
        //         Expanded(
        //           child: Column(
        //             children: [
        //               Image.asset('assets/images/profilei.png',),SizedBox(height: 6,),
        //               Text('Profile',style: GoogleFonts.courierPrime(
        //     fontWeight: FontWeight.bold, fontSize: 12.8,color: Color.fromRGBO(212, 221, 224, 0.6)),),
        //             ],
        //           ),
        //         ),
        //     ],
        //   ),
        // ),
        //      )),
      ],
    ),));
  }
}
