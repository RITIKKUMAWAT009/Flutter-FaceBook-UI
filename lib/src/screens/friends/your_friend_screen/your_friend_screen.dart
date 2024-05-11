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
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Your Friends",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
        children: [
          const SearchField(hintText: "Search Friends"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
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
              TextButton(onPressed: () {}, child: const Text("Sort"))
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const CustomListTile(
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
