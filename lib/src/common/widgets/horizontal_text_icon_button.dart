import 'package:flutter/material.dart';

class HorizontalIconTextButton extends StatelessWidget {
  const HorizontalIconTextButton({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            color: Colors.black87,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black87, fontSize: 13),
          )
        ],
      ),
    );
  }
}
