import 'package:flutter/material.dart';

import 'your_friend_screen/your_friend_screen.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Friends",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.black),
              child: const Text("Friend Request"),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const YourFriendScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.black),
              child: const Text("Your Friend "),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 8),
          child: Text(
            "People you may know",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        AssetImage("assets/images/profile/img.png"),
                  ),
                  title: const Text(
                    "Mandeep",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: const Text("Add Friend")),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: const Text("Remove")),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
