import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netzary_assignment/presentation/home/widgets/carousel_slider.dart';
import 'package:netzary_assignment/presentation/home/widgets/latest_sliding_container.dart';
import 'package:netzary_assignment/presentation/home/widgets/sliding_container.dart';
import 'package:netzary_assignment/presentation/home/widgets/top_slider_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   getHttp();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TopSliderSection(),
        const SizedBox(
          height: 25,
        ),
        CarouselSlider2(),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Picks',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    'SEE ALL ',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.orange,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SlidingContainer(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Latest',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    'SEE ALL ',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.orange,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        LatestSlidingContainer()
      ],
    );
  }
}

// void getHttp() async {
//   try {
//     var response = await Dio().get('https://milkiyat.bangalore2.com/api/home/');
//     jsonData = jsonDecode(response.data);
//     setState(() {});
//     print(jsonData);
//   } catch (e) {
//     print(e);
//   }
// }

// jsonData != null
//             ? jsonData['categories'].length.toString()
//             : 'https://milkiyat.bangalore2.com/media/category-pics/018-apartment-2.png'
