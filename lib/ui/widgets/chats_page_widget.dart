import 'package:flutter/material.dart';

class ChatsPageHeader extends StatelessWidget {
  const ChatsPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 48),
      child: Row(
        children: [
          Icon(
            Icons.view_headline_outlined,
            color: Colors.white,
          ),
          Expanded(
              child: Text(
            "Chats",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
            textAlign: TextAlign.center,
          )),
          Icon(
            Icons.supervised_user_circle_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
