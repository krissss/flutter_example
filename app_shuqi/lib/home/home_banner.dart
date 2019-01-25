import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'home_model.dart';

class HomeBanner extends StatelessWidget {
  final List<CarouselInfo> carouselInfos;

  HomeBanner(this.carouselInfos);

  @override
  Widget build(BuildContext context) {
    if (carouselInfos.length == 0) {
      return SizedBox();
    }

    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: CarouselSlider(
        items: carouselInfos.map((info) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: screenWidth,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Image.network(
                  info.imageUrl??'',
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
        aspectRatio: 2,
        interval: Duration(seconds: 5),
        autoPlay: true,
      ),
    );
  }
}