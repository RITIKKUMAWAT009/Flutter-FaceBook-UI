import 'package:flutter/material.dart';

class MenuCustomSIzeDropDownButton extends StatelessWidget {
  const MenuCustomSIzeDropDownButton({
    super.key,
    required this.text,
    required this.icon,
    this.borderRadius = BorderRadius.zero,
    required this.children,
  });

  final String text;
  final String icon;
  final BorderRadius borderRadius;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.blueGrey.shade50,
      collapsedBackgroundColor: Colors.grey.shade100,
      iconColor: Colors.grey.shade800,
      expansionAnimationStyle: AnimationStyle(
          reverseCurve: const ElasticInOutCurve(),
          duration: const Duration(milliseconds: 500)),
      title: Text(text),
      leading: Image(
        image: AssetImage(icon),
        height: 30,
        width: 30,
      ),
      children: children,
    );
    // return SizedBox(
    //   width: MediaQuery.of(context).size.width,
    //   child: ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: borderRadius)),
    //     onPressed: () {},
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             Icon(
    //               icon,
    //               color: Colors.grey.shade700,
    //             ),
    //             const SizedBox(
    //               width: 10,
    //             ),
    //             Text(
    //               text,
    //               style: const TextStyle(color: Colors.black),
    //             ),
    //           ],
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.keyboard_arrow_down_sharp,
    //             color: Colors.black,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
