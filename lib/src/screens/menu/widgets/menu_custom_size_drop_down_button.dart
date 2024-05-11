import 'package:flutter/material.dart';
class MenuCustomSIzeDropDownButton extends StatelessWidget {
  const MenuCustomSIzeDropDownButton({
    super.key, required this.text, required this.icon,
  });
final String text;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) )),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Row(
              children: [
                Icon(icon,color: Colors.grey,),
                SizedBox(width: 10,),
                Text(text,style: TextStyle(color: Colors.black),),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}
