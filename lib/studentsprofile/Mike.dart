import 'package:flutter/material.dart';
import 'package:geidi/global/global_color.dart';
import 'package:geidi/homescreen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class mikeProfile extends StatefulWidget {
  const mikeProfile({super.key});

  @override
  State<mikeProfile> createState() => _mikeProfileState();
}

class _mikeProfileState extends State<mikeProfile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                        'https://assets-wp.boundless.com/uploads/2018/07/male-man-asian-student-college-smiling-solo-1.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Mike tyson',
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
                                      'Name: Mike tyson',
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
                                      'Age: 22"',
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
                                      'Course: Engineering',
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
                                      'Year: 4th year',
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
                                      'Autocad',
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
                                      'Thermodynamics',
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
