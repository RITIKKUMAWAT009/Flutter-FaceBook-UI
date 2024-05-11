import 'package:flutter/material.dart';

import 'your_friend_screen/your_friend_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friends",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Friend Request"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.black),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => YourFriendScreen(),));
              },
              child: Text("Your Friend "),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.black),
            ),
          ],
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4),
          child: Text(
            "People you may know",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount:15,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: CircleAvatar(radius: 35,
                    backgroundImage: AssetImage("assets/images/profile/img.png"),
                  ),
                  title: Text(
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
                          child: Text("Add Friend")),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: Text("Remove")),
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
