import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class vide extends StatefulWidget {
  const vide({super.key});

  @override
  State<vide> createState() => _videState();
}

class _videState extends State<vide> {
  final FlickManager flickManager = FlickManager(videoPlayerController:VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Video player"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16/9,
          child: FlickVideoPlayer(flickManager: flickManager,),
        ),
      ),

    );
  }
}
