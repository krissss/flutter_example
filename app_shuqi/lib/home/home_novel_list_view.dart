import 'package:flutter/material.dart';

import 'home_model.dart';
import 'home_novel_item_view.dart';
import 'home_section.dart';
import '../model/novel.dart';
import '../util.dart';

class NovelFourGridView extends StatelessWidget {
  final HomeModule cardInfo;

  NovelFourGridView(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var novels = cardInfo.books;

    if (novels.length < 8) {
      return Container();
    }

    var children = novels.map((novel) => NovelCoverView(novel)).toList();

    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            HomeSection(cardInfo.name),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Wrap(spacing: 15, runSpacing: 20, children: children),
            ),
            Container(
              height: 10,
              color: Color(0xfff5f5f5),
            )
          ],
        ));
  }
}

class NovelSecondHybirdCard extends StatelessWidget {
  final HomeModule cardInfo;

  NovelSecondHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var novels = cardInfo.books;
    if (novels.length < 5) {
      return Container();
    }

    var topNovels = novels.sublist(0, 4);
    List<Widget> children = [];
    topNovels.forEach((novel) {
      children.add(NovelCoverView(novel));
    });

    var bottomNovels = novels.sublist(4);
    bottomNovels.forEach((novel) {
      children.add(NovelGridView(novel));
    });

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HomeSection(cardInfo.name),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: children,
            ),
          ),
          Container(
            height: 10,
            color: Color(0xfff5f5f5),
          ),
        ],
      ),
    );
  }
}

class NovelFirstHybirdCard extends StatelessWidget {
  final HomeModule cardInfo;

  NovelFirstHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var novels = cardInfo.books;
    if (novels.length < 3) {
      return Container();
    }

    List<Widget> children = [];
   var bottomNovels = novels.sublist(1);
    bottomNovels.forEach((novel) {
      children.add(NovelGridView(novel));
    });
    
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HomeSection(cardInfo.name),
          NovelCell(novels[0]),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Wrap(spacing: 15, runSpacing: 15, children: children),
          ),
          Container(
            height: 10,
            color: Color(0xfff5f5f5),
          ),
        ],
      ),
    );
  }
}

class NovelNormalCard extends StatelessWidget {
  final HomeModule cardInfo;

  NovelNormalCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var novels = cardInfo.books;
    if (novels.length < 3) {
      return null;
    }

    List<Widget> children = [
      HomeSection(cardInfo.name),
    ];
    for (var i = 0; i < novels.length; i++) {
      var novel = novels[i];
      children.add(NovelCell(novel));
      children.add(Divider(height: 1));
    }
    children.add(Container(height: 10, color: Color(0xfff5f5f5)));

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class NovelCell extends StatelessWidget {
  final Novel novel;

  NovelCell(this.novel);

  Widget buildRight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          novel.name,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          novel.introduction,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            color: AppColor.gray,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Text(
              novel.author,
              style: TextStyle(fontSize: 14, color: AppColor.gray),
            ),
            Expanded(child: Container()),
            buildTag(novel.status, novel.statusColor()),
            SizedBox(width: 5),
            buildTag(novel.type, AppColor.gray),
          ],
        )
      ],
    );
  }

  Widget buildTag(String title, Color color) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(99, color.red, color.green, color.blue), width: 0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('NovelCell');
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(novel.imgUrl, width: 70, height: 93),
            SizedBox(width: 15),
            Expanded(
              child: buildRight(),
            ),
          ],
        ),
      ),
    );
  }
}
