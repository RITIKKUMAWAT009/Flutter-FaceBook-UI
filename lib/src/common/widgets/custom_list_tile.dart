import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.onTap,
  });

  final String title;
  final String subTitle;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}
