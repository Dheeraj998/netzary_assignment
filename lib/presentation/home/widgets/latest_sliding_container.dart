import 'package:flutter/material.dart';
import 'package:netzary_assignment/api.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class LatestSlidingContainer extends StatefulWidget {
  const LatestSlidingContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<LatestSlidingContainer> createState() => _LatestSlidingContainerState();
}

class _LatestSlidingContainerState extends State<LatestSlidingContainer> {
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
                        child: Image.network(
                          topPicContent != null
                              ? topPicContent['data'][2]['items'][index]
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
                              ? topPicContent['data'][2]['items'][index]
                                      ['price']
                                  .toString()
                              : '',
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
                          ? topPicContent['data'][2]['items'][index]['title']
                              .toString()
                          : '',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                                color: Colors.black,
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][2]['items'][index]
                                              ['attributes'][0]['value']
                                          .toString()
                                      : '',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                            const SizedBox(width: 3),
                            Container(
                                color: Colors.black,
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][2]['items'][index]
                                              ['attributes'][0]['unit']
                                          .toString()
                                      : '',
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
                                color: Color.fromARGB(255, 27, 3, 3),
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][2]['items'][index]
                                              ['attributes'][1]['value']
                                          .toString()
                                      : '',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                            const SizedBox(
                              width: 3,
                            ),
                            Container(
                                color: Color.fromARGB(255, 27, 3, 3),
                                child: Text(
                                  topPicContent != null
                                      ? topPicContent['data'][2]['items'][index]
                                              ['attributes'][1]['unit']
                                          .toString()
                                      : '',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          topPicContent != null
                              ? topPicContent['data'][2]['items'][index]
                                      ['locality']
                                  .toString()
                              : '',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: Colors.grey,
                      thickness: .4,
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: topPicContent != null
              ? topPicContent['data'][2]['items'].length
              : 3),
    );
  }
}
