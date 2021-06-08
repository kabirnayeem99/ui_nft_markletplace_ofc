import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/ui/widgets/trailing_unread_message_widget.dart';

class ChatListTile extends StatelessWidget {
  final String leadingImageUrl;
  final String titleUsername;
  final int trailingUnreadCount;
  final String trailingTime;

  const ChatListTile({
    Key? key,
    required this.leadingImageUrl,
    required this.titleUsername,
    required this.trailingUnreadCount,
    required this.trailingTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0.60,
        child: ListTile(
          leading: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              image: DecorationImage(
                image: NetworkImage(leadingImageUrl),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              titleUsername,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Text("This is an unread message"),
          ),
          trailing: Column(
            children: [
              Text(
                trailingTime.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TrailingUnreadMessageWidget(count: trailingUnreadCount),
            ],
          ),
        ),
      ),
    );
  }
}
