import 'package:facebook_clone/src/common/widgets/search_filed.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_list_tile.dart';

class YourFriendScreen extends StatelessWidget {
  const YourFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Your Friends",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          SearchField(hintText: "Search Friends"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "200",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    " Friends",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              TextButton(onPressed: () {}, child: Text("Sort"))
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CustomListTile(
                      title: "Mandeep",
                      subTitle: "992499239",
                      imageUrl: "assets/images/profile/img.png",
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade200,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
