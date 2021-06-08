import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/ui/widgets/chats_page_widget.dart';
import 'package:nft_markletplace_ofc/ui/widgets/rounded_image_container_widget.dart';
import 'package:nft_markletplace_ofc/ui/widgets/stories_widget.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 220.0,
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
      ),
    );
  }
}
