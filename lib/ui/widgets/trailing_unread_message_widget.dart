import 'package:flutter/material.dart';

class TrailingUnreadMessageWidget extends StatelessWidget {
  const TrailingUnreadMessageWidget({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      height: 23,
      width: 23,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(
          100.0,
        ),
      ),
      child: Center(
        child: Text(
          count.toString(),
        ),
      ),
    );
  }
}
