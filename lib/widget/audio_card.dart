import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AudioCard extends StatelessWidget {
  AudioCard({super.key, this.subtitles, this.titles});
  String? titles;
  String? subtitles;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.music_note,
        size: 30.h,
      ),
      title: Text(
        "$titles",
        style: TextStyle(fontSize: 20.sp, letterSpacing: 2),
      ),
      subtitle: Text(
        '$subtitles',
        style:
            TextStyle(fontSize: 16.sp, color: Colors.black54, letterSpacing: 1),
      ),
      trailing: Icon(Icons.more_horiz),
    );
    ;
  }
}
