import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:netzary_assignment/api.dart';

class CarouselSlider2 extends StatefulWidget {
  int pageIndex = 0;

  CarouselSlider2({Key? key}) : super(key: key);

  @override
  State<CarouselSlider2> createState() => _CarouselSlider2State();
}

class _CarouselSlider2State extends State<CarouselSlider2> {
  int pageIndex = 0;
  var res;
  List<String> carousel_img = [];
  @override
  void initState() {
    super.initState();
    updateUi();
  }

  updateUi() async {
    res = await fetchAlbum();
    // carousel_img = res.data[0].items;
    // List<String> result = [];
    // print(res.data[0].items[0].image.toString());
    for (int i = 0; i < res.data[0].items.length; i++) {
      carousel_img.insert(i, res.data[0].items[i].image.toString());
    }
    // print(result[0]);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 180,
          width: double.infinity,
          child: CarouselSlider(
            items: carouselItems(),
            options: CarouselOptions(
              aspectRatio: 18 / 10,
              autoPlay: false,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }

  List<Widget> carouselItems() {
    return carousel_img
        .map((e) => Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    e,
                    fit: BoxFit.cover,
                    width: 250,
                    height: 160,
                  ),
                ),
              ],
            ))
        .toList();
  }
}
