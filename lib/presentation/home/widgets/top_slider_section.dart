import 'package:flutter/material.dart';
import 'package:netzary_assignment/presentation/home/widgets/home_carousel.dart';

class TopSliderSection extends StatelessWidget {
  const TopSliderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          HomeCarousel(),
          Container(
            margin: EdgeInsets.only(left: 240),
            child: Row(children: const [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text(
                'kozhikode',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              )
            ]),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'What are you Searching for?',
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 130,
              margin: const EdgeInsets.only(top: 105, left: 35),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Text(
                'FIND PROPERTY',
                style: TextStyle(fontSize: 12),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 130,
              margin: const EdgeInsets.only(top: 105, left: 185),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Text(
                'POST A PROPERTY',
                style: TextStyle(fontSize: 12),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
