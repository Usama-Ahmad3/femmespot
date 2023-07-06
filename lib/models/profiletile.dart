import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  ProfileTile({Key? key, required this.iconData, required this.tileText, required this.onpressed}) : super(key: key);
  IconData iconData; String tileText; final GestureTapCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Row(
          children: [
            Icon(iconData,size: 25, ),
            SizedBox(width: 17,),
            Text(tileText, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16,),
          ],
        ),
      ),
    );
  }
}
