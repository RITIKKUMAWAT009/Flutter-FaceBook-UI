import 'package:flutter/material.dart';

class MenuCustomSIzeElevatedButton extends StatelessWidget {
  const MenuCustomSIzeElevatedButton({
    super.key,
    this.text = "",
    this.iconColor = Colors.black,
    required this.onPressed,
    required this.icon,
  });

  final String text;
  final Color iconColor;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width / 2 - 17,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            shadowColor: Colors.grey.shade500,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: onPressed,
        child: Align(alignment: Alignment.centerLeft,widthFactor: 12,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                ),
                Text(text,maxLines: 2,overflow: TextOverflow.ellipsis,)
              ]),
        ),
      ),
    );
  }
}
