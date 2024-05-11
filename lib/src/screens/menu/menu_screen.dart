import 'package:facebook_clone/src/common/widgets/menu_custom_elevated_button.dart';
import 'package:facebook_clone/src/screens/dashboard/your_friend_screen/your_friend_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/menu_custom_size_drop_down_button.dart';
import 'widgets/menu_custom_size_elevated_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.settings)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        )),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const MenuCustomElevatedButton(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  isShowArrowDownButton: true,
                  isShowAddIcon: false,
                  title: "Mandeep Kaur",
                  textColor: Colors.black,
                ),
                const SizedBox(
                  height: 2,
                ),
                MenuCustomElevatedButton(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  isShowArrowDownButton: false,
                  isShowAddIcon: true,
                  title: "Create new profile or Page",
                  textColor: Colors.grey.shade600,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const YourFriendScreen(),
                              ));
                        },
                        icon: Icons.people,
                        iconColor: Colors.blueAccent,
                        text: "Friend",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.view_timeline,
                        iconColor: Colors.blueAccent,
                        text: "Feeds",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.groups,
                        iconColor: Colors.blueAccent,
                        text: "Groups",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.shopping_bag_rounded,
                        iconColor: Colors.blueAccent,
                        text: "Marketplace",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.ondemand_video,
                        iconColor: Colors.lightBlue.shade700,
                        text: "Video",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.share_arrival_time_rounded,
                        iconColor: Colors.lightBlue.shade700,
                        text: "Memories",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.bookmark,
                        iconColor: Colors.pink.shade700,
                        text: "Saved",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.dashboard,
                        iconColor: Colors.pink.shade700,
                        text: "Dashboard",
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.account_circle_outlined,
                        iconColor: Colors.blueAccent,
                        text: "Support",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.speaker_rounded,
                        iconColor: Colors.blueAccent,
                        text: "Add Center",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.flag,
                        iconColor: Colors.deepOrangeAccent,
                        text: "Pages",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.video_collection,
                        iconColor: Colors.deepOrangeAccent,
                        text: "Reels",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.event,
                        iconColor: Colors.red,
                        text: "Events",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.videogame_asset,
                        iconColor: Colors.blue,
                        text: "Gaming",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.emoji_people,
                        iconColor: Colors.blue.shade700,
                        text: "Avatars",
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MenuCustomSIzeElevatedButton(
                        onPressed: () {},
                        icon: Icons.find_in_page,
                        iconColor: Colors.red,
                        text: "Finds",
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  MenuCustomSIzeElevatedButton(
                    onPressed: () {},
                    icon: Icons.message,
                    iconColor: Colors.blue,
                    text: "Messenger",
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  SizedBox(
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
                      child: const Text("See More"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const MenuCustomSIzeDropDownButton(text: "Help & support",icon: Icons.help,),
            const SizedBox(height: 1,),
            const MenuCustomSIzeDropDownButton(text: "Setting & privacy",icon: Icons.settings,),
            const SizedBox(height: 1,),
            const MenuCustomSIzeDropDownButton(text: "Also From Meta",icon: Icons.apps,),
          ],
        ),
      ),
    );
  }
}

