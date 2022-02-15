import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:netzary_assignment/api.dart';
import 'package:dio/dio.dart';

class SlidingContainer extends StatefulWidget {
  const SlidingContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SlidingContainer> createState() => _SlidingContainerState();
}

class _SlidingContainerState extends State<SlidingContainer> {
  var topPicContent;
  @override
  void initState() {
    super.initState();
    updateUi();
  }

  updateUi() async {
    try {
      var response =
          await Dio().get('https://milkiyat.bangalore2.com/api/home/');
      topPicContent = jsonDecode(response.data) as Map<String, dynamic>;

      setState(() {});
    } catch (e) {
      print(e);
    }

    setState(() {});
  }

//  topPicContent.categories[index].name.toString()
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 210,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.network(
                          topPicContent != null
                              ? topPicContent['data'][1]['items'][index]
                                      ['thumbnail']
                                  .toString()
                              : "https://milkiyat.bangalore2.com/media/pics/compress_6134.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          topPicContent != null
                              ? topPicContent['data'][1]['items'][index]
                                      ['price']
                                  .toString()
                              : "2",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      topPicContent != null
                          ? topPicContent['data'][1]['items'][index]['title']
                              .toString()
                          : "2",
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                                color: Colors.black,
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][1]['items'][index]
                                              ['attributes'][0]['value']
                                          .toString()
                                      : '2',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                            const SizedBox(
                              width: 3,
                            ),
                            Container(
                                color: Colors.black,
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][1]['items'][index]
                                              ['attributes'][0]['unit']
                                          .toString()
                                      : ' ',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                color: Colors.black,
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][1]['items'][index]
                                              ['attributes'][0]['value']
                                          .toString()
                                      : ' ',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                            const SizedBox(
                              width: 3,
                            ),
                            Container(
                                color: Colors.black,
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][1]['items'][index]
                                              ['attributes'][0]['unit']
                                          .toString()
                                      : ' ',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          topPicContent != null
                              ? topPicContent['data'][1]['items'][index]
                                      ['locality']
                                  .toString()
                              : "2",
                          style: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.grey,
                      thickness: .4,
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: topPicContent != null
              ? topPicContent['data'][1]['items'].length
              : 3),
    );
  }
}
