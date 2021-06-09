import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/ui/widgets/stories_widget.dart';

import 'chats_page_widget.dart';

class ChatHeaderSection extends StatelessWidget {
  const ChatHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 42, 12, 12),
        child: Column(
          children: [
            ChatsPageHeader(),
            StoriesWidget(),
          ],
        ),
      ),
    );
  }
}
