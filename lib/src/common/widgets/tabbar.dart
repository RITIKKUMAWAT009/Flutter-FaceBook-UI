import 'package:facebook_clone/src/screens/dashboard/friend_screen.dart';
import 'package:facebook_clone/src/screens/marketplace/market_place_screen.dart';
import 'package:facebook_clone/src/screens/menu/menu_screen.dart';
import 'package:facebook_clone/src/screens/notification/notification_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/home/home_screen.dart';
import '../../screens/message/message_screen.dart';
import '../../screens/video/video_screen.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TabController? _tabController;

  final List<Tab> topTabs = [
    const Tab(
      icon: Icon(Icons.home_filled),
    ),
    const Tab(
      icon: Icon(Icons.ondemand_video_sharp),
    ),
    const Tab(
      icon: Icon(Icons.storefront),
    ),
    const Tab(
      icon: Icon(Icons.people_alt_outlined),
    ),
    const Tab(
      icon: Icon(Icons.notifications),
    ),
    const Tab(
      icon: Icon(Icons.menu),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: 6,
      vsync: this,
      initialIndex: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      IconButton(
        icon: const Icon(Icons.add_circle),
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("add")));
        },
      ),
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {},
      ),
      SizedBox(
        width: 50,
        height: 50,
        child: IconButton(
          iconSize: 50,
          icon: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/icon/img.png"),
          ),
          onPressed: () {
            // Navigator.pushNamed(context, MessageScreen());
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const MessageScreen()));
            _scaffoldKey.currentState!.openEndDrawer();
          },
        ),
      ),
    ];
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 25),
        ),
        actions: list,
        bottom: TabBar(
          physics: const BouncingScrollPhysics(),
          controller: _tabController,
          labelColor: Colors.blue.shade900,
          indicatorColor: Colors.blue.shade900,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeScreen(),
          VideoScreen(),
          MarketPlaceScreen(),
          DashboardScreen(),
          NotificationScreen(),
          MenuScreen(),
        ],
      ),
      endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          child: MessageScreen()),
    );
  }
}
