import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geidi/global/global_color.dart';
import 'package:geidi/homescreen/home_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String uname = "abc123";
  String pass = "qwerty";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSelect.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jr. Flutter Dev Technical Exam',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: ColorSelect.h1,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          hintText: 'abc123'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'qwerty'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          onPressed: () async {
                            if (uname == nameController.text &&
                                pass == passwordController.text) {
                              SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              pref.setString("email", "useremail@gmail.com");
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (_) {
                                return homescreens();
                              }));
                            } else {
                              Fluttertoast.showToast(
                                  msg:
                                      "Incorrect login credentials. Please try again",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.TOP,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              nameController.text = "";
                              passwordController.text = "";
                            }
                          },
                          child: Text(
                            'login',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: ColorSelect.white,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
