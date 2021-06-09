import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/other/app_theme.dart';
import 'package:nft_markletplace_ofc/ui/widgets/trailing_unread_message_widget.dart';

class ChatListTile extends StatelessWidget {
  final String leadingImageUrl;
  final String titleUsername;
  final int? trailingUnreadCount;
  final String trailingTime;
  final String subtitleLastMessage;

  const ChatListTile({
    Key? key,
    required this.leadingImageUrl,
    required this.titleUsername,
    this.trailingUnreadCount,
    required this.trailingTime,
    required this.subtitleLastMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0.05,
        child: ClipPath(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  color: Colors.black12,
                  style: BorderStyle.solid,
                  width: 0.50,
                )),
            child: Container(
              margin: EdgeInsets.all(6.0),
              child: ListTile(
                leading: Container(
                  height: 52,
                  width: 52,
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
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Text(
                    subtitleLastMessage,
                    style: TextStyle(
                      color: AppTheme.BLACK_COLOR,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                trailing: Column(
                  children: [
                    TrailingTimeWidget(time: trailingTime),
                    SizedBox(height: 8.0),
                    (trailingUnreadCount != null)
                        ? TrailingUnreadMessageWidget(
                            count: trailingUnreadCount!)
                        : Container(
                            padding: EdgeInsets.all(0.0),
                            height: 0,
                            width: 0,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TrailingTimeWidget extends StatelessWidget {
  final String time;

  const TrailingTimeWidget({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      time.toString(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppTheme.BLACK_COLOR,
      ),
    );
  }
}
