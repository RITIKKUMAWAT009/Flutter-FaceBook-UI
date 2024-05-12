import 'package:flutter/material.dart';

class FullWidthElevatedButton extends StatelessWidget {
  const FullWidthElevatedButton(
      {super.key, required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 3),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
