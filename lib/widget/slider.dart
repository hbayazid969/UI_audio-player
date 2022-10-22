import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var images = [
  "https://cdn.pixabay.com/photo/2018/05/08/21/38/ramadan-3384043_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/06/27/22/18/moscow-cathedral-mosque-1483524_1280.jpg",
  "https://cdn.pixabay.com/photo/2020/07/15/13/56/birds-5407779_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/10/05/17/26/morocco-1717196_1280.jpg"
];

var texts = ["Feb 20, 2022", "Jan 12, 2022", "Dec 24, 2021", "Aug 17, 2021"];

Widget pageSlider() {
  return Stack(
    children: [
      Container(
        height: 190.h,
        child: Positioned(
          top: 0,
          left: -20,
          right: 0,
          child: Container(
              height: 190.h,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.9),
                itemCount: 4,
                itemBuilder: ((context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 190.h,
                        margin: EdgeInsets.only(right: 10.w),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage("${images[index]}"),
                                fit: BoxFit.fitWidth)),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.only(right: 10.w),
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 10.w),
                            child: Text(
                              "${texts[index]}",
                              style: TextStyle(
                                fontSize: 20.sp,
                                letterSpacing: 1,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              )),
        ),
      ),
    ],
  );
}
