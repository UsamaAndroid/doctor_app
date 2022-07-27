import 'dart:math';

import 'package:doc_app/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LangugaScreen extends StatefulWidget {
  const LangugaScreen({Key? key}) : super(key: key);

  @override
  _LangugaScreenState createState() => _LangugaScreenState();
}

class _LangugaScreenState extends State<LangugaScreen> {
  bool a = true;
  bool c = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFABABAB),
        body: Center(
            child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(31.0),
      ),
      child: Container(
          height: 243,
          width: 274,
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(right: 56,left: 56, top: 26),
                child: Row(
                  children: [
                    Expanded(
                      child : Text(
                        'Select language',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400, fontSize: 27.0,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 3,
                    child : Text(
                      'Francais',
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, fontSize: 24.0,),
                    ),
                  ),
                  Expanded(flex: 2,
                    child: Radio(value: a,groupValue: c,onChanged: (q){
                      c = true;setState(() {});
                      },),
                  ),

                ],
              ), Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 3,
                    child: Text(
                      'English',
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, fontSize: 24.0,),
                    ),
                  ),     Expanded(flex: 2,
                    child: Radio(value: !a,groupValue: c,onChanged: (q) async {
                      c = false;setState(() {});
                      await Future.delayed(const Duration(milliseconds: 700), (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Welcomes();
                        }));
                      });
                    },),
                  ),
                ],
              ),

            ],
          )),
    )));
  }
}
