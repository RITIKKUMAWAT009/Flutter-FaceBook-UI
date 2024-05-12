import 'package:flutter/material.dart';

class MenuDropDownItem extends StatelessWidget {
  const MenuDropDownItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed,
      this.iconColor = Colors.black87});

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5,
            foregroundColor: Colors.grey.shade800,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
