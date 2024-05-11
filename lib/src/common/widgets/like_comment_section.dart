import 'package:flutter/material.dart';

class LikeCommentSection extends StatelessWidget {
  const LikeCommentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.thumb_up,
                color: Colors.blue,
              ),
              Text("13")
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("1.7k comments"), SizedBox(width: 10,),
              Text("1.4k shares"),SizedBox(width: 5,),
            ],
          ),
        ],
      ),
    );
  }
}
