import 'package:achit/landing/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:achit/utils/constant.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(kIntroUrl)
      ..addListener(() {
        setState(() {});
      })
      ..setVolume(0.0)
      ..setPlaybackSpeed(kPlaySpeed)
      ..initialize()
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isPlaying ? player(context) : nextBtn(context),
      ),
    );
  }

  IconButton nextBtn(BuildContext context) {
    return IconButton(
      iconSize: 100,
      color: kMyColor,
      onPressed: () {
        Navigator.of(context).pushReplacement(
          CustomPageRouting(
            child: const LandingPage(),
          ),
        );
      },
      icon: const Icon(
        Icons.arrow_forward_rounded,
      ),
    );
  }

  Widget player(BuildContext context) {
    if (_controller.value.isInitialized) {
      return VideoPlayer(_controller);
    } else {
      return const CircularProgressIndicator.adaptive();
    }
  }
}

class VideoFrame extends StatelessWidget {
  final VideoPlayerController videoController;
  const VideoFrame({
    Key? key,
    required this.videoController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: videoController.value.aspectRatio,
        child: VideoPlayer(
          videoController,
        ),
      ),
    );
  }
}
