import 'package:facebook_clone/src/common/widgets/like_comment_section_2.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/circluar_story_icon.dart';
import '../../../common/widgets/like_comment_section.dart';

class UserPostSection extends StatelessWidget {
  const UserPostSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),

      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircularStoryIcon(
                      backgroundImage: "assets/images/profile/img.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 160,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ritik kumawat",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Post",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              ".",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              "3h",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              ".",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.music_note,
                              size: 15,
                            ),
                            Text(
                              ".",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              "Arjit Singh",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              ".",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.group,
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.cancel,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child:
            Image(image: AssetImage("assets/images/profile/img.png")),
          ),
          LikeCommentSection(),
          const Divider(
            thickness: 1,
          ),
          LikeCommentSection2(),
          const Divider(
            thickness: 3,color: Colors.grey,
          ),
        ],
      ),
    );
  }
}


