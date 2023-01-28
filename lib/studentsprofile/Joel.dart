import 'package:flutter/material.dart';
import 'package:geidi/global/global_color.dart';
import 'package:geidi/homescreen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class joelProfile extends StatefulWidget {
  const joelProfile({super.key});

  @override
  State<joelProfile> createState() => _joelProfileState();
}

class _joelProfileState extends State<joelProfile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorSelect.scaffoldColor02,
        // appBar: AppBar(
        //   leading: Icon(Icons.arrow_back_ios_new_outlined),
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorSelect.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => homescreens()));
                        },
                        child: Icon(Icons.arrow_back_ios_new_outlined)),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/university-study-abroad-lifestyle-concept-happy-rejoicing-asian-male-student-with-braces-triumphing-pass-exams-finish-final-semester-fist-pump-shouting-yes-with-satisfaction-hold-laptop_1258-55876.jpg?w=996&t=st=1674802479~exp=1674803079~hmac=1b1fd64565b9dd4e837b50b78cef4089f9fa0dae539eba2615df9d2680e0b46a'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Joel ki',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: ColorSelect.h1),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          
                          width: 200,
                          height: 300,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 10,
                              color: ColorSelect.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Student Info',style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      color: ColorSelect.h1,
                                      fontSize: 12,
                                    ),),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Name: Joel ki',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorSelect.dividicolor,
                                    ),
                                    Text(
                                      'Age: 23',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorSelect.dividicolor,
                                    ),
                                    Text(
                                      'Course: crim',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorSelect.dividicolor,
                                    ),
                                    Text(
                                      'Year: 2nd year',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          
                          width: 200,
                          height: 300,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 10,
                              color: ColorSelect.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Subjects list',style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      color: ColorSelect.h1,
                                      fontSize: 12,
                                    ),),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'English',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorSelect.dividicolor,
                                    ),
                                    Text(
                                      'PE',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorSelect.dividicolor,
                                    ),
                                    Text(
                                      'Philosophy',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorSelect.dividicolor,
                                    ),
                                    Text(
                                      'GEN. math',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorSelect.h1,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
