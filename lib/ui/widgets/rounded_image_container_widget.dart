import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class RoundedImageContainerWidget extends StatefulWidget {
  final String username;
  final String imageUrl;

  const RoundedImageContainerWidget(
      {Key? key, required this.username, required this.imageUrl})
      : super(key: key);

  @override
  _RoundedImageContainerWidgetState createState() =>
      _RoundedImageContainerWidgetState();
}

class _RoundedImageContainerWidgetState
    extends State<RoundedImageContainerWidget>
    with SingleTickerProviderStateMixin {
  late Animation gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 6.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 4.0,
          ),
          child: RotationTransition(
            turns: base,
            child: DashedCircle(
              gapSize: gap.value,
              color: Colors.deepOrange,
              child: RotationTransition(
                turns: reverse,
                child: Container(
                  margin: EdgeInsets.all(1.4),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        widget.imageUrl,
                      ),
                    ),
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          widget.username,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        )
      ],
    );
  }
}
