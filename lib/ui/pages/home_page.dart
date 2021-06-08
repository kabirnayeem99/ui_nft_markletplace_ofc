import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/ui/widgets/chat_header_section_widget.dart';
import 'package:nft_markletplace_ofc/ui/widgets/chat_lists_widget.dart';
import 'package:nft_markletplace_ofc/ui/widgets/chats_page_widget.dart';
import 'package:nft_markletplace_ofc/ui/widgets/stories_widget.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ChatHeaderSection(),
          ChatListsWidget(),
        ],
      ),
    );
  }
}
