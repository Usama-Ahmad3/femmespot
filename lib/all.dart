import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'constants.dart';

class AllServices extends StatefulWidget {
  AllServices({Key? key, this.serviceName}) : super(key: key);
  String? serviceName;

  @override
  State<AllServices> createState() => _AllServicesState();
}

class _AllServicesState extends State<AllServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Material(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 11, right: 11, top: 11, bottom: 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.5),
                        child: Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green),
                        ),
                      ),
                      const SizedBox(width: 23),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Belle Curls',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: headingSize,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              '348 ISB, Pakistan',
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '12Km',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '4.8',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      useRootNavigator: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) => Container(
                                            height: 250,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  topLeft: Radius.circular(20)),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 27.0),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'Remove from Bookmark',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .red.shade700,
                                                            fontSize: 16,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900),
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 25,
                                                                right: 25),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  height: 80,
                                                                  width: 90,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          image:
                                                                              const DecorationImage(
                                                                            image:
                                                                                NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                          borderRadius: BorderRadius.circular(
                                                                              15),
                                                                          color:
                                                                              Colors.green),
                                                                ),
                                                                const SizedBox(
                                                                    width: 10),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    const Text(
                                                                      'Belle Curls',
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              headingSize),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 7,
                                                                    ),
                                                                    const Text(
                                                                      '348 ISB, Pakistan',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 7,
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Icon(
                                                                            Icons.location_on_outlined),
                                                                        const SizedBox(
                                                                          width:
                                                                              5,
                                                                        ),
                                                                        const Text(
                                                                          '12Km',
                                                                          style:
                                                                              TextStyle(fontSize: 12),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        RatingBar
                                                                            .builder(
                                                                          itemSize:
                                                                              20,
                                                                          initialRating:
                                                                              4,
                                                                          minRating:
                                                                              1,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          allowHalfRating:
                                                                              true,
                                                                          itemCount:
                                                                              1,
                                                                          itemPadding:
                                                                              const EdgeInsets.symmetric(horizontal: 4.0),
                                                                          itemBuilder: (context, _) =>
                                                                              const Icon(
                                                                            Icons.star,
                                                                            color:
                                                                                Colors.amber,
                                                                          ),
                                                                          onRatingUpdate:
                                                                              (rating) {
                                                                            print(rating);
                                                                          },
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              5,
                                                                        ),
                                                                        const Text(
                                                                          '4.8',
                                                                          style:
                                                                              TextStyle(fontSize: 12),
                                                                        )
                                                                      ],
                                                                    )
                                                                  ],
                                                                ),
                                                                const Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              53,
                                                                          bottom:
                                                                              50),
                                                                  child: Icon(Icons
                                                                      .bookmark_border),
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton.styleFrom(
                                                                        elevation: 0,
                                                                        padding: const EdgeInsets.only(
                                                                          left:
                                                                              50,
                                                                          right:
                                                                              50,
                                                                        ),
                                                                        primary: Colors.grey.shade50,
                                                                        //primary: Colors.pinkAccent,
                                                                        onPrimary: Colors.pink,
                                                                        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey.shade50), borderRadius: BorderRadius.circular(20))),
                                                                    child: const Text(
                                                                      'Cancel',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .pink,
                                                                          fontSize:
                                                                              12),
                                                                    )),
                                                                const SizedBox(
                                                                  width: 20,
                                                                ),
                                                                ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton.styleFrom(
                                                                        padding: const EdgeInsets.only(
                                                                          left:
                                                                              35,
                                                                          right:
                                                                              35,
                                                                        ),
                                                                        elevation: 0,
                                                                        primary: Colors.pinkAccent,
                                                                        onPrimary: Colors.pink,
                                                                        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey.shade50), borderRadius: BorderRadius.circular(20))),
                                                                    child: const Text(
                                                                      'Yes, Remove',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12),
                                                                    ))
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ));
                                },
                                child: const Icon(
                                  Icons.bookmark_border,
                                  color: Colors.deepOrange,
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            );
          },
        ),
      ),
    );
  }
}
