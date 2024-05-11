import 'package:flutter/material.dart';
class MenuCustomSIzeDropDownButton extends StatelessWidget {
  const MenuCustomSIzeDropDownButton({
    super.key,
    required this.text,
    required this.icon,
     this.borderRadius=BorderRadius.zero,
  });

  final String text;
  final IconData icon;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.grey.shade700,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
