import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayAudio extends StatefulWidget {
  const PlayAudio({super.key});

  @override
  State<PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio> {
  @override
  Widget build(BuildContext context) {
    final double screenH = MediaQuery.of(context).size.height;
    final double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 220, 220),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: screenH / 3,
              child: Container(
                color: Colors.blue,
              )),
          Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              top: screenH * 0.2,
              height: screenH * 0.36,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenH * 0.1,
                    ),
                    Text(
                      'Islamic Background',
                      style: TextStyle(fontSize: 22.sp),
                    ),
                    Text(
                      'Author : Hasan',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 30.h,
                    )
                  ],
                ),
              )),
          Positioned(
              top: screenH * 0.12,
              left: (screenW - 150) / 2,
              right: (screenW - 150) / 2,
              height: screenH * 0.16,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2018/05/08/21/38/ramadan-3384043_1280.jpg"),
                        fit: BoxFit.cover)),
              )),
        ],
      ),
    );
  }
}
