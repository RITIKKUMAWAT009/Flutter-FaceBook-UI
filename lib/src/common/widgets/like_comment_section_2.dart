import 'package:flutter/material.dart';

import 'horizontal_text_icon_button.dart';

class LikeCommentSection2 extends StatelessWidget {
  const LikeCommentSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HorizontalIconTextButton(
          text: "Like",
          icon: Icons.thumb_up,
        ),
        HorizontalIconTextButton(text: "Comment", icon: Icons.comment),
        HorizontalIconTextButton(
          text: "Share",
          icon: Icons.share,
        ),
        HorizontalIconTextButton(
          icon: Icons.send,
          text: "Send",
        ),
      ],
    );
  }
}
