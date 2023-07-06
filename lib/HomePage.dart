import 'package:carousel_slider/carousel_slider.dart';
import 'package:femmespot/SinglePost.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:femmespot/notify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Gradient.dart';
import 'Mybookmark.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();

  int activeIndex = 0;

  List images = [
    'https://static.vecteezy.com/system/resources/thumbnails/010/486/958/small/gradient-background-pink-and-soft-orange-abstract-simple-cheerful-and-clean-style-suitable-for-copy-space-wallpaper-background-banner-flyer-or-decor-free-vector.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/010/486/958/small/gradient-background-pink-and-soft-orange-abstract-simple-cheerful-and-clean-style-suitable-for-copy-space-wallpaper-background-banner-flyer-or-decor-free-vector.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/010/486/958/small/gradient-background-pink-and-soft-orange-abstract-simple-cheerful-and-clean-style-suitable-for-copy-space-wallpaper-background-banner-flyer-or-decor-free-vector.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/010/486/958/small/gradient-background-pink-and-soft-orange-abstract-simple-cheerful-and-clean-style-suitable-for-copy-space-wallpaper-background-banner-flyer-or-decor-free-vector.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/010/486/958/small/gradient-background-pink-and-soft-orange-abstract-simple-cheerful-and-clean-style-suitable-for-copy-space-wallpaper-background-banner-flyer-or-decor-free-vector.jpg',
  ];

  List stories = [];

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.jpeg',
                    scale: 48,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Femmespot",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: <Color>[
                                Colors.orange,
                                Colors.pink
                                //.shade400,
                                // Colors.red,
                                //add more color here.
                              ],
                            ).createShader(
                                const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
                  const SizedBox(
                    width: 70,
                  ),
                  RadiantGradientMask(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Notifications()));
                      },
                      child: const Icon(
                        Icons.notifications_none,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //Icon(Icons.notifications_none, color: Colors.orange,),
                  const SizedBox(
                    width: 10,
                  ),
                  RadiantGradientMask(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyBookmark(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.bookmark_border,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text(
                    'Morning, Daniel',
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                      'https://icons.iconarchive.com/icons/google/noto-emoji-people-bodyparts/512/12050-waving-hand-icon.png',
                      scale: 13)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                  )),
                  prefixIcon: RadiantGradientMask(
                    child: const Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  hintText: "Search", hintStyle: const TextStyle(fontSize: 14),
                  suffixIcon: RadiantGradientMask(
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Stack(
                      children: [
                        Container(
                          height: 160,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black.withOpacity(0.3),
                            image: DecorationImage(
                                image: NetworkImage(
                                  images[itemIndex],
                                  scale: 10,
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, top: 17),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '30% OFF',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Today's Special",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 90,
                                    ),
                                    const Text(
                                      '30%',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const Text(
                                  'Get a discount for every service order!',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  'Only valid for today!',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      height: 175,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: images.length,
                      effect: const ScrollingDotsEffect(
                        dotHeight: 5,
                        dotWidth: 5,
                        activeDotColor: Colors.deepOrange,
                        dotColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://png.pngtree.com/png-vector/20190328/ourlarge/pngtree-vector-scissors-icon-png-image_872050.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'HairCuts',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://www.pngall.com/wp-content/uploads/4/Lipstick-PNG-HD-Image.png',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Makeup',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://static.thenounproject.com/png/2734215-200.png',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Manicure',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/spa-concept-illustration_114360-7010.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Massage',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  const Text(
                    'Nearby Your Location',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyBookmark()));
                    },
                    child: Text("See All",
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Colors.orange,
                                  Colors.pink
                                  //.shade400,
                                  // Colors.red,
                                  //add more color here.
                                ],
                              ).createShader(const Rect.fromLTWH(
                                  0.0, 0.0, 200.0, 100.0)))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RoundedButtonWidget(
                        buttonText: 'All',
                        onpressed: () {},
                        width: MediaQuery.of(context).size.width / 6),
                    const SizedBox(
                      width: 7,
                    ),
                    RoundedButtonWidget(
                        buttonText: 'Haircuts',
                        onpressed: () {},
                        width: MediaQuery.of(context).size.width / 3),
                    const SizedBox(
                      width: 7,
                    ),
                    RoundedButtonWidget(
                        buttonText: 'Makeup',
                        onpressed: () {},
                        width: MediaQuery.of(context).size.width / 3),
                    const SizedBox(
                      width: 7,
                    ),
                    RoundedButtonWidget(
                        buttonText: 'Massage',
                        onpressed: () {},
                        width: MediaQuery.of(context).size.width / 3),
                    const SizedBox(
                      width: 7,
                    ),
                    RoundedButtonWidget(
                        buttonText: 'Facial',
                        onpressed: () {},
                        width: MediaQuery.of(context).size.width / 3),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SinglePostScreen()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                    const SizedBox(width: 23),
                    Column(
                      children: [
                        const Text(
                          'Belle Curls',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text('348 ISB, Pakistan'),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('12Km'),
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
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
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
                            const Text('4.8')
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 65,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyBookmark()));
                        },
                        child: const Icon(
                          Icons.bookmark_border,
                          color: Colors.deepOrange,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
