import 'package:facebook_clone/src/screens/menu/widgets/heading_section.dart';
import 'package:flutter/material.dart';

class MarketPlaceScreen extends StatelessWidget {
  const MarketPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeadingSection(
                firstIconOnPressed: () {},
                secondIconOnPressed: () {},
                firstIcon: Icons.person,
                secondIcon: Icons.search,
                heading: "MarketPlace"),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.sell_outlined),
                            Text("Sell"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.category_outlined),
                            Text("Categories"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 200,
                            width: 200,
                            margin: const EdgeInsets.all(6),
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2016/09/24/11/53/pixabay-1691568_640.jpg",
                              fit: BoxFit.cover,
                              height: 200,
                              width: 200,
                            )),
                        const Text("Poco x4 Pro 5G")
                      ],
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
