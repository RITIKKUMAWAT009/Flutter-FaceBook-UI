import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key, required this.hintText,
  });
final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 60,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(Icons.search),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
