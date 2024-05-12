import 'package:flutter/material.dart';

class CircularStoryIcon extends StatelessWidget {
  const CircularStoryIcon({
    super.key,
    required this.backgroundImage,
  });

  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(50)),
      child: CircleAvatar(
        backgroundImage: AssetImage(
          backgroundImage,
        ),
        radius: 30,
      ),
    );
  }
}
