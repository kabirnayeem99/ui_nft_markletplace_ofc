import 'package:flutter/material.dart';

import 'chat_list_tile_widget.dart';

class ChatListsWidget extends StatelessWidget {
  const ChatListsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ChatListTile(
            leadingImageUrl:
                "https://cdn-img.health.com/sites/default/files/styles/400x400/public/migration/images/slides/man-face-tired-400x400.jpg",
            titleUsername: "username_$index",
            trailingTime: "09:14 PM",
            trailingUnreadCount: 2,
          );
        },
        itemCount: 30,
      ),
    );
  }
}
