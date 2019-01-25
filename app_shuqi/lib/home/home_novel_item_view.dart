import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../model/novel.dart';
import '../util.dart';

class NovelCoverView extends StatelessWidget {
  final Novel novel;

  NovelCoverView(this.novel);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width(context) - 15 * 2 - 15 * 3) / 4;

    return GestureDetector(
      onTap: () {
        print('NovelCoverView');
      },
      child: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(novel.imgUrl, width: width),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 3),
              child: Text(
                novel.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            Text(
              novel.author,
              style: TextStyle(fontSize: 12, color: AppColor.gray),
            )
          ],
        ),
      ),
    );
  }
}

class NovelGridView extends StatelessWidget {
  final Novel novel;

  NovelGridView(this.novel);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width(context) - 15 * 2 - 15) / 2;

    return GestureDetector(
      onTap: () {
        print('NovelGridView');
      },
      child: Container(
        width: width,
        child: Row(
          children: <Widget>[
            NovelCoverImage(novel.imgUrl, width: 50, height: 66),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    novel.name,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    novel.recommendCountStr(),
                    style: TextStyle(fontSize: 12, color: AppColor.gray),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NovelCoverImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  NovelCoverImage(this.imageUrl, {this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: CachedNetworkImageProvider(imageUrl),
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
      decoration: BoxDecoration(border: Border.all(color: AppColor.paper)),
    );
  }
}
