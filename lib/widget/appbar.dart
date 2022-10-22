import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget homeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Icon(
      Icons.window,
      color: Colors.black,
      size: 30.h,
    ),
    actions: [
      Icon(
        Icons.search,
        color: Colors.black,
        size: 30.h,
      ),
      SizedBox(
        width: 10.w,
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.w),
        child: Icon(
          Icons.notifications_outlined,
          color: Colors.black,
          size: 30.h,
        ),
      )
    ],
  );
}
