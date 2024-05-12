import 'package:flutter/material.dart';

import 'widgets/create_story_and_reel.dart';
import 'widgets/post_bar.dart';
import 'widgets/story_widget.dart';
import 'widgets/user_post_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PostBar(),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CreateStoryAndReel(),
                  StoryWidget(
                    image: "assets/images/profile/img.png",
                    backgroundImage: "assets/images/profile/img.png",
                    name: "My Name",
                  ),
                  StoryWidget(
                    image: "assets/images/profile/img.png",
                    backgroundImage: "assets/images/profile/img.png",
                    name: "My Name",
                  ),
                  StoryWidget(
                    image: "assets/images/profile/img.png",
                    backgroundImage: "assets/images/profile/img.png",
                    name: "My Name",
                  ),
                  StoryWidget(
                    image: "assets/images/profile/img.png",
                    backgroundImage: "assets/images/profile/img.png",
                    name: "My Name",
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.grey,
          ),
          UserPostSection(),
          UserPostSection(),
          UserPostSection(),
        ],
      ),
    );
  }
}
