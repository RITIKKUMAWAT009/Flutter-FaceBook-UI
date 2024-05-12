import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
    required this.firstIcon,
    required this.secondIcon,
    required this.heading,
    required this.firstIconOnPressed,
    required this.secondIconOnPressed,
  });

  final IconData firstIcon, secondIcon;
  final String heading;
  final VoidCallback firstIconOnPressed;
  final VoidCallback secondIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Row(
          children: [
            IconButton(onPressed: firstIconOnPressed, icon: Icon(firstIcon)),
            IconButton(
                onPressed: secondIconOnPressed,
                icon: Icon(
                  secondIcon,
                  size: 30,
                  color: Colors.black,
                )),
          ],
        ),
      ],
    );
  }
}
