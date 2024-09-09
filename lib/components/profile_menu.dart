import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;

  const ProfileMenu({
    super.key,
    required this.title,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              icons,
              size: 15,
              color: iconPrimaryColor,
            ),
          ),
          Text(
            title,
            style: textMenu,
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: iconSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}