import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netzary_assignment/api.dart';

class HomeCarousel extends StatefulWidget {
  HomeCarousel({Key? key}) : super(key: key);

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  List<String> carousel_img = [];
  var res;
  @override
  void initState() {
    super.initState();
    updateUi();
  }

  updateUi() async {
    res = await fetchAlbum();

    for (int i = 0; i < res.backgroundImages.length; i++) {
      carousel_img.insert(i, res.backgroundImages![i].image.toString());
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: CarouselSlider(
        items: carouselItems(),
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          autoPlay: true,
        ),
      ),
    );
  }

  List<Widget> carouselItems() {
    return carousel_img
        .map((e) => Image.network(
              e,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 100,
            ))
        .toList();
  }
}
