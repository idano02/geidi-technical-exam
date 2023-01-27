
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geidi/global/global_color.dart';
import 'package:geidi/login_screen/login_screen.dart';

import 'package:geidi/model/studentModel.dart';
import 'package:geidi/studentsprofile/Joel.dart';
import 'package:geidi/studentsprofile/Li.dart';
import 'package:geidi/studentsprofile/Lyn.dart';
import 'package:geidi/studentsprofile/Mark.dart';
import 'package:geidi/studentsprofile/Mary.dart';
import 'package:geidi/studentsprofile/Mike.dart';
import 'package:geidi/studentsprofile/Mylah.dart';
import 'package:geidi/studentsprofile/gwen.dart';
import 'package:geidi/studentsprofile/mikey.dart';
import 'package:geidi/studentsprofile/nike.dart';
import 'package:google_fonts/google_fonts.dart';



class homescreens extends StatefulWidget {
  const homescreens({super.key});

  @override
  State<homescreens> createState() => _homescreensState();
}

class _homescreensState extends State<homescreens> {


   
Future<List<Studentsmodel>> allUsers() async {
  var response = await rootBundle.loadString("jsonfile/studentlist.json");

  if (response.isNotEmpty) {
    return studentsmodelFromJson(response);
  } else {
    return [];
  }
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Student Info')),
      // ),
      backgroundColor: ColorSelect.scaffoldColor,
      body: FutureBuilder(
  future: allUsers(),
  builder: (_, AsyncSnapshot<List<Studentsmodel>> s) {
    if (s.connectionState == ConnectionState.waiting) {
      return const CircularProgressIndicator();
    }
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorSelect.white,
               borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    topRight: const Radius.circular(30),
                  )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.builder(
                itemCount: s.data!.length,
                itemBuilder: (_, i) => Card(
                  child: Container(
                    // width: 50,
                    height: 100,
                    color: Colors.transparent,
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: InkWell(
                        onTap: () {
                          if (i == 0){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => gwenProfile()));
                          }else if(i == 1){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => mikeProfile()));
                          }if (i == 2 ){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => joelProfile()));
                          }else if (i == 3 ){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => markProfile()));
                          } if (i == 4){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => liProfile()));
                          } else if (i== 5){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => maryProfile()));
                          }if (i== 6){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => maylahProfile()));
                          } else if (i == 7){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => lynProfile()));
                          }if (i == 8){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => mikeyProfile()));
                          }else if (i == 9){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => nikeProfile()));
                          }
                         
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              
                              radius: 60.0,
                              backgroundImage:
                                  NetworkImage(s.data![i].imageUrl,),
                              backgroundColor: Colors.transparent,
                            ),
                            Expanded(
                              child: Column(
                                
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name: ${s.data![i].name}',style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorSelect.h1
                                  ),),
                                  Text('Age:${s.data![i].age}',style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorSelect.h1
                                  ),),
                                   Text('Couse:${s.data![i].course}',style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorSelect.h1
                                  ),),
                                    Text('Year:${s.data![i].year}',style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorSelect.h1
                                  ),
                                  ),
                                
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ),
              ),
            ),
          ),
        ),
      ),
    );
  },
),
    );
  }
  
}
