import 'package:crediometer/ui/auth_pages/sign_in_page.dart';
import 'package:crediometer/ui/auth_pages/widgets/sign_up_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../homepage/home_page.dart';
import 'image_picker.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  pickImage getImage = pickImage();
  var profileImage;
  String? _firstname;
  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Fill In Your Details ",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.blue[900]),
                ),
                SizedBox(height: 30.0.h),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 60.0.r,
                    child: Center(
                      child: profileImage ??
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt),
                              Text(
                                "Add Image",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0.h),
                Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    buidFIrstNameFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buidLastNameFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildPhoneNumberFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buidPhoneNumberFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildBvnFormFeild(),
                  ]),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                InkWell(
                    onTap: onPressed,
                    onDoubleTap: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (ctx) {
                      //   return const BottomNavigationWidget();
                      // }));
                    },
                    child: Container(
                      height: 50.0.h,
                      // width: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(04.0.r)),
                      child: const Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: "GoogleSans",
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(width: 10.0,),
                    const Center(
                      child: Text(
                        "Already have an account",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5.0.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignInScreen()));
                      },
                      child: Text(
                        "Sign In ?",
                        style: TextStyle(
                            fontFamily: "GoogleSans",
                            color: Colors.indigo[800]),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      //var _firstname;

      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    }
  }
}
