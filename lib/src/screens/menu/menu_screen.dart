import 'package:facebook_clone/src/common/widgets/menu_custom_elevated_button.dart';
import 'package:facebook_clone/src/screens/friends/your_friend_screen/your_friend_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'widgets/full_width_elevated_button.dart';
import 'widgets/heading_section.dart';
import 'widgets/menu_custom_size_drop_down_button.dart';
import 'widgets/menu_custom_size_elevated_button.dart';
import 'widgets/menu_drop_down_item.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HeadingSection(
              firstIconOnPressed: () {},
              secondIconOnPressed: () {},
              heading: "Menu",
              firstIcon: Icons.settings,
              secondIcon: Icons.search,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 8.0),
                _isExpanded ? const ExpandedButtons() : const LimitedButtons(),
                const SizedBox(height: 8.0),
                FullWidthElevatedButton(
                  text: _isExpanded ? "See Less" : "See More",
                  onPressed: () {
                    _toggleExpanded();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            MenuCustomSIzeDropDownButton(
              text: "Help & support",
              icon: "assets/images/icon/help_support_icon.png",
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              children: [
                MenuDropDownItem(
                    title: "Help center",
                    icon: Icons.center_focus_strong,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Creator support",
                    icon: Icons.support_agent,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Support inbox",
                    icon: Icons.inbox_outlined,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Report a problem",
                    icon: Icons.report_problem,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Terms & Policies",
                    icon: Icons.book_rounded,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            MenuCustomSIzeDropDownButton(
              text: "Setting & privacy",
              icon: "assets/images/icon/setting_icon.png",
              children: [
                MenuDropDownItem(
                    title: "Setting",
                    icon: Icons.settings_outlined,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Privacy shortcuts",
                    icon: Icons.lock,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Your Time on Facebook",
                    icon: Icons.watch_later_rounded,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Device requests",
                    icon: Icons.mobile_friendly,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Recent ad activity",
                    icon: Icons.ads_click,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Facebook Pay",
                    icon: Icons.credit_card,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Link history", icon: Icons.link, onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Dark mode",
                    icon: Icons.dark_mode,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Language", icon: Icons.language, onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Cellular Data Usage",
                    icon: Icons.data_usage,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            MenuCustomSIzeDropDownButton(
              text: "Professional dashboard",
              icon: "assets/images/icon/dashboar_icon.png",
              borderRadius: BorderRadius.zero,
              children: [
                MenuDropDownItem(
                    title: "Help & support",
                    icon: Icons.center_focus_strong,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            MenuCustomSIzeDropDownButton(
              text: "Also from Meta",
              icon: "assets/images/icon/dashboar_icon.png",
              borderRadius: BorderRadius.zero,
              children: [
                MenuDropDownItem(
                    title: "Threads",
                    icon: Bootstrap.threads,
                    iconColor: Colors.black,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    title: "Messenger",
                    icon: Bootstrap.messenger,
                    iconColor: Colors.pinkAccent,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                    iconColor: Colors.green,
                    title: "WhatsApp",
                    icon: Bootstrap.whatsapp,
                    onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            FullWidthElevatedButton(
              text: "Log Out",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedButtons extends StatelessWidget {
  const ExpandedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

class LimitedButtons extends StatelessWidget {
  const LimitedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
      ],
    );
  }
}
