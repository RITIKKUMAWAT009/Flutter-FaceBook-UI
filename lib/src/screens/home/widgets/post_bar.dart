import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile/img.png"),
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: const TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Write something here",
                hintStyle: TextStyle(height: 1.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          const Icon(
            Icons.image,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
