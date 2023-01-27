import 'package:flutter/material.dart';
import 'package:geidi/global/global_color.dart';
import 'package:geidi/homescreen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class markProfile extends StatefulWidget {
  const markProfile({super.key});

  @override
  State<markProfile> createState() => _markProfileState();
}

class _markProfileState extends State<markProfile> {
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
                        'https://img.freepik.com/premium-photo/joyful-young-male-student-wearing-headphones-around-neck-holding-folder-note-book-looking-camera-showing-thumb-up-isolated-purple-background_141793-136033.jpg?w=996'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Mark job',
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
                                      'Name: Mark job',
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
                                      'Age: 24',
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
                                      'Course: Agriculture',
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
