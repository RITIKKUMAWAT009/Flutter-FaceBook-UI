import 'package:flutter/material.dart';

import 'create_story.dart';

class CreateStoryAndReel extends StatelessWidget {
  const CreateStoryAndReel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CreateStory(
            text: "Create story",
            icon: Icons.menu_book_sharp,
            gradientColors: [
              Colors.red.shade900,
              Colors.red.shade300,
              Colors.red.shade900,
            ],
          ),
          CreateStory(
            text: "Create reel",
            icon: Icons.slow_motion_video_sharp,
            gradientColors: [
              Colors.blue.shade900,
              Colors.blue.shade300,
              Colors.blue.shade900,
            ],
          ),
        ],
      ),
    );
  }
}
