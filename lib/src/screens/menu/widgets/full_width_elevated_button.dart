import 'package:flutter/material.dart';
class FullWidthElevatedButton extends StatelessWidget {
  const FullWidthElevatedButton({
    super.key, required this.text,
  });
  final String text;
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
        onPressed: () {},
        child:  Text(text),
      ),
    );
  }
}
