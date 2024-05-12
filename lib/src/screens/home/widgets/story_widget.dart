import 'package:flutter/material.dart';

import '../../../common/widgets/circluar_story_icon.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.name,
  });

  final String image;
  final String backgroundImage;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
        color: Colors.grey.shade700,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.transparent,
        ),
      ),
      child: Stack(
        children: [
          CircularStoryIcon(backgroundImage: backgroundImage),
          Positioned(
              bottom: 7,
              left: 5,
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
