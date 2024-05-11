import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(isThreeLine: true,
                    onTap: () {},
                    tileColor: Colors.blue.shade50,
                    leading: const Stack(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("assets/images/profile/img.png"),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 1,
                            child: CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                radius: 12,
                                child: Icon(
                                  Icons.group_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                    title: const Text(
                      "Your last story had 21 viewers. Share  new story with friends ",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    subtitle: const Text("3h"),
                  ),
                  const SizedBox(height: 5,)
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
