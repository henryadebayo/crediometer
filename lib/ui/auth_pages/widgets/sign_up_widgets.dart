import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String? lastName;
String? emailAddress;
String? phoneNumber;
String? address;

Widget buidFIrstNameFormFeild() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: BorderSide(
          color: Color(0xFF0E3E3E3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0.r),
        //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintText: "First Name",
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
    onSaved: (firstName) {},
    validator: (String? firstName) {
      String errorMessage;
      if (firstName!.isEmpty) {
        return errorMessage = "please fill in your first name";
      }
    },
  );
}

Widget buidLastNameFormFeild() {
  return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: BorderSide(
            color: Color(0xFF0E3E3E3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0.r),
          //borderSide: BorderSide(color: Colors.black),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintText: "last name",
        hintStyle: TextStyle(fontSize: 14.sp),
      ),
      onSaved: (String? lastNamee) {
        lastNamee = lastName;
      },
      // ignore: missing_return
      validator: (String? lastName) {
        if (lastName!.isEmpty) {
          String errorMessage;
          errorMessage = "please fill in your last name";
          return errorMessage;
        }
      });
}

Widget buildPhoneNumberFormFeild() {
  return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: const BorderSide(
            color: Color(0xFF0E3E3E3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0.r),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintText: "User Name",
        hintStyle: TextStyle(fontSize: 14.sp),
      ),
      onSaved: (String? email) {
        email = emailAddress;
      },
      validator: (String? email) {
        String errorMessage;
        if (!email!.contains("@") && email.isEmpty) {
          errorMessage = "User Name is required";
          return errorMessage;
        }
      });
}

Widget buidPhoneNumberFormFeild() {
  return TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(13)],
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: const BorderSide(
            color: Color(0xFF0E3E3E3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0.r),
          //borderSide: BorderSide(color: Colors.black),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintText: "+234",
        hintStyle: TextStyle(fontSize: 14.sp),
      ),
      onSaved: (String? phoneNumber) {
        phoneNumber = phoneNumber;
      },
      validator: (String? phoneNumber) {
        if (phoneNumber!.isEmpty) {
          return "phone number iss required";
        }
      });
}

Widget buildBvnFormFeild() {
  return TextFormField(
    inputFormatters: [LengthLimitingTextInputFormatter(11)],
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: BorderSide(
          color: Color(0xff0e3e3e3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0.r),
        //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintText: "BVN number",
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
    onSaved: (String? Bvn) {
      Bvn = address;
    },
    validator: (String? address) {
      if (address!.isEmpty) {
        return "Bvn is required";
      }
    },
  );
}
