import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/ui/widgets/rounded_image_container_widget.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100.0),
        ),
      ),
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) => RoundedImageContainerWidget(
          username: "user_$index",
          imageUrl:
              "https://cdn-img.health.com/sites/default/files/styles/400x400/public/migration/images/slides/man-face-tired-400x400.jpg",
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
      ),
    );
  }
}
