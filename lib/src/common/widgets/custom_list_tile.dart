

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.title, required this.subTitle, required this.imageUrl,
  });
final String title;
final String subTitle;
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(subTitle),
      leading: CircleAvatar(
        backgroundImage:
        AssetImage(imageUrl),
      ),
    );
  }
}
