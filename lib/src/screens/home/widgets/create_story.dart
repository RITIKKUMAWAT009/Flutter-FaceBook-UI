import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory(
      {super.key,
      required this.gradientColors,
      required this.text,
      required this.icon});

  final List<Color> gradientColors;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: gradientColors),
      ),
      child: Stack(
        children: [
          Center(
            heightFactor: 1.5,
            child: Icon(
              icon,
              color: Colors.white,
              size: 50,
            ),
          ),
          Positioned(
              bottom: 25,
              right: 40,
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              )),
        ],
      ),
    );
  }
}
