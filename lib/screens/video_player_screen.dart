import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_video_player.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String videoUrl;
  final String? thumbnailUrl;

  const VideoPlayerScreen({
    Key? key,
    required this.videoUrl,
    this.thumbnailUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Video Player
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CustomVideoPlayer(
                videoUrl: videoUrl,
                thumbnailUrl: thumbnailUrl,
                autoPlay: true,
                showControls: true,
              ),
            ),
            
            // Video Information
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Video Title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Video Description',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 