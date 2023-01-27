import 'package:flutter/material.dart';
import 'package:geidi/global/global_color.dart';
import 'package:geidi/homescreen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class liProfile extends StatefulWidget {
  const liProfile({super.key});

  @override
  State<liProfile> createState() => _liProfileState();
}

class _liProfileState extends State<liProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSelect.scaffoldColor02,
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_ios_new_outlined),
      // ),
      body: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
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
                        'https://img.freepik.com/free-photo/front-view-male-student-wearing-black-backpack-holding-copybooks-files-blue-wall_140725-42636.jpg?w=996&t=st=1674802629~exp=1674803229~hmac=cf84d3429f3dbc1b2e896325755abfffa9abebd731d6c7b1f330936933b7a0e3'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Li lee',
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
                                      'Name: Li lee',
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
                                      'Age: 25',
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
                                      'Course: nautical',
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
                                      'Year: 1st year',
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
