import 'package:facebook_clone/src/common/widgets/search_filed.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_list_tile.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          const SearchField(hintText: "Search",),
          Expanded(
            child:
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const CustomListTile(title: "Mandeep",subTitle: "992499239",imageUrl: "assets/images/profile/img.png",),
                    Divider(thickness: 1,color:Colors.grey.shade200,)
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


