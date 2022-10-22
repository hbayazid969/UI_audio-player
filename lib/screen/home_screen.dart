import 'package:audio_player/screen/play_screen.dart';
import 'package:audio_player/widget/appbar.dart';
import 'package:audio_player/widget/audio_card.dart';
import 'package:audio_player/widget/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pagecontroller = PageController();
  final texts = ['New', 'Popular', 'Trendings', 'Old'];
  final colors = [
    Color.fromARGB(255, 131, 7, 255),
    Colors.red,
    Colors.blue,
    Colors.teal
  ];

  int sIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.h), child: homeAppBar()),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              child: Text(
                'Recenty View',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            pageSlider(),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Container(
                height: 60.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10.w),
                      height: 60.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: MaterialButton(
                          height: 60.h,
                          minWidth: 100.w,
                          color: colors[index],
                          onPressed: () {
                            setState(() {
                              sIndex = index;
                              _pagecontroller.jumpToPage(index);
                            });
                          },
                          child: Text(
                            "${texts[index]}",
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pagecontroller,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      //width: 200,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PlayAudio()));
                                },
                                child: AudioCard(
                                  titles: 'Islamic Background',
                                  subtitles: 'Author : Hasan',
                                ),
                              ),
                              AudioCard(
                                titles: 'Copyright Free ',
                                subtitles: 'Author : Habib',
                              ),
                              AudioCard(
                                titles: 'Islamic History',
                                subtitles: 'Author : Kalam',
                              ),
                              AudioCard(
                                titles: 'Gojol Islamic',
                                subtitles: 'Author : Rio',
                              ),
                              AudioCard(
                                titles: 'Islamic Audio',
                                subtitles: 'Author : Sia',
                              ),
                              AudioCard(
                                titles: 'Gojol Cover',
                                subtitles: 'Author : Hunt',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      //width: 200,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            AudioCard(
                              titles: 'Background Cover',
                              subtitles: 'Author : Sheikh',
                            ),
                            AudioCard(
                              titles: 'New Gojol',
                              subtitles: 'Author : Halim',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      //width: 200,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            AudioCard(
                              titles: 'Most Background',
                              subtitles: 'Author : Hasan',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      //width: 200,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            AudioCard(
                              titles: 'Old Cover',
                              subtitles: 'Author : Rio',
                            ),
                            AudioCard(
                              titles: 'Background Straight',
                              subtitles: 'Author : Saju',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
