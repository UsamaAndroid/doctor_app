import 'package:doc_app/registration_success.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SininScreen extends StatefulWidget {
  const SininScreen({Key? key}) : super(key: key);

  @override
  _SininScreenState createState() => _SininScreenState();
}

class _SininScreenState extends State<SininScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Stack(
      children: [
        Container(height: 400,width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/doctor_shirt.png',fit: BoxFit.fill,)),
        Container(height: 400,width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(height: 400,width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/rec3.png',fit: BoxFit.fill,)),
                  Align(alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: TextFormField(
                      decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'E-Mail',
                      filled: true,
                      contentPadding: EdgeInsets.all(15.25),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13.0),
                          topRight: Radius.circular(13.0),
                        ),
                        borderSide: BorderSide(color: Color(0xFF929292)),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13.0),
                          topRight: Radius.circular(13.0),
                        ),
                        borderSide: BorderSide(color: Color(0xFF929292)),
                      ),
                ),),
                    ),
                  ),
              ],
            )),
        Column(
          children: [
            SizedBox(
            height: 92,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w900,
                      fontSize: 53.0,color: Colors.white
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 24,left: 24,top: 400),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: 'Password',
                  filled: true,
                  contentPadding: EdgeInsets.all(15.25),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13.0),
                      bottomRight: Radius.circular(13.0),
                    ),
                    borderSide: BorderSide(color: Color(0xFF929292)),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13.0),
                      bottomRight: Radius.circular(13.0),
                    ),
                    borderSide: BorderSide(color: Color(0xFF929292)),
                  ),
                ),),
              SizedBox(
                height: 192,
              ),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return regSuccess();
                }));
              },
                child: Container(height: 61,width: 61,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFFF33125)),
                    child:   Image.asset('assets/images/arrow1.png')),
              ),
            ],
          ),
        ),

      ],
    )));
  }
}
