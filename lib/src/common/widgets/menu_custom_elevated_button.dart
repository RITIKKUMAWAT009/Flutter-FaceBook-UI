import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCustomElevatedButton extends StatelessWidget {
  const MenuCustomElevatedButton({
    super.key,
    required this.isShowArrowDownButton,
    required this.isShowAddIcon,
    required this.title,
    required this.textColor,  required this.borderRadius,
  });

  final bool isShowArrowDownButton;
  final bool isShowAddIcon;
  final String title;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width - 20,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black38,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  isShowAddIcon
                      ? Icon(
                          Icons.add_circle_rounded,
                          size: 35,
                          color: Colors.grey.shade600,
                        )
                      : CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profile/img.png"),
                        ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: textColor, fontSize: 18),
                  ),
                ],
              ),
              isShowArrowDownButton
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down),
                    )
                  : SizedBox(),
            ],
          )),
    );
  }
}
