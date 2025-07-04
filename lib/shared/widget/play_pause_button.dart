import 'package:flutter/material.dart';
import 'package:endoscopy_ai/pages/file_video/file_video_model.dart';

class PlayPauseButton extends StatelessWidget {
  // создает кнопку паузы
  final FileVideoPlayerPageStateModel model;

  PlayPauseButton({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 167, 38, 29),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          model.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
          size: 40,
        ),
        onPressed: model.togglePlayPause,
      ),
    );
  }
}
