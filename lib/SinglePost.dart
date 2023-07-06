import 'package:carousel_slider/carousel_slider.dart';
import 'package:femmespot/gallery.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:femmespot/package.dart';
import 'package:femmespot/reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'our_services.dart';

class SinglePostScreen extends StatefulWidget {
  const SinglePostScreen({Key? key}) : super(key: key);

  @override
  State<SinglePostScreen> createState() => _SinglePostScreenState();
}

class _SinglePostScreenState extends State<SinglePostScreen> {
  CarouselController buttonCarouselController = CarouselController();

  int activeIndex = 0;
  List<String> img = [
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
    'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1',
  ];
  List images = [
   'https://images.unsplash.com/photo-1562322140-8baeececf3df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
   'https://images.unsplash.com/photo-1562322140-8baeececf3df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
   'https://images.unsplash.com/photo-1562322140-8baeececf3df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
   'https://images.unsplash.com/photo-1562322140-8baeececf3df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
   'https://images.unsplash.com/photo-1562322140-8baeececf3df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
  ];
  static const _initialCameraPosition = CameraPosition(
      zoom: 11.5,
      target: LatLng( 30.181459,  71.492157));
  int tabIndex = 0;

  buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: images.length,
  );
  GoogleMapController? _googleMapController;
  Marker? origin;
  Marker? destination;
  @override
  void dispose(){
    _googleMapController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Stack(
                        children: [
                          Container(
                            height: 500,
                            width:MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              image: DecorationImage(
                                  image: NetworkImage(images[itemIndex],scale: 10,),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 25,top: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14,right: 15),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                              onTap:(){
                                                Navigator.pop(context);
                                              },
                                              child: Icon(Icons.arrow_back)),
                                          Spacer(),
                                          Icon(Icons.bookmark_border)
                                        ],
                                      ),
                                    )
                                  ],
                                )
                            ),
                          )
                        ],
                      );
                    },
                    options: CarouselOptions(
                        enableInfiniteScroll: false,
                        height: 230,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210),
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
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Barbella Inova', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
                        const Spacer(),
                        RoundedButtonWidget(buttonText: 'Open', onpressed: (){}, width: MediaQuery.of(context).size.width/5),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        const SizedBox(width: 10,),
                        Text('124 ISB, Punjab, Pakistan',style: TextStyle(color: Colors.grey.shade600),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 20,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(width: 5,),
                        Text('4.8, (3.87 reviews)', style: TextStyle(color: Colors.grey.shade600),)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade200.withOpacity(0.3),
                          child: const Icon(Icons.explore_outlined,color: Colors.pink,),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Website', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),)
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade200.withOpacity(0.3),
                          child: const Icon(Icons.message_outlined,color: Colors.pink,),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Message',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade200.withOpacity(0.3),
                          child: const Icon(Icons.call_outlined,color: Colors.pink,),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Call',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade200.withOpacity(0.3),
                          child: const Icon(Icons.location_on_outlined,color: Colors.pink,),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Direction',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade200.withOpacity(0.3),
                          child: const Icon(Icons.share,color: Colors.pink,),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Share',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Row(
                  children: [
                    const Text('Our Specialists', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),),
                    const Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w900,
                        foreground: Paint()..shader = const LinearGradient(
                          colors: <Color>[
                            Colors.deepOrange,
                            Colors.pink],
                        ).createShader(const Rect.fromLTWH(150, 500, 250,100),),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: 650,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Jenne Willium', style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.w900),),
                            const Text('Sr. Barbor', style: TextStyle(fontSize: 11),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Jenne Willium', style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.w900),),
                            const Text('Sr. Barbor', style: TextStyle(fontSize: 11),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Jenne Willium', style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.w900),),
                            const Text('Sr. Barbor', style: TextStyle(fontSize: 11),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Jenne Willium', style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.w900),),
                            const Text('Sr. Barbor', style: TextStyle(fontSize: 11),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Jenne Willium', style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.w900),),
                            const Text('Sr. Barbor', style: TextStyle(fontSize: 11),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Jenne Willium', style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.w900),),
                            const Text('Sr. Barbor', style: TextStyle(fontSize: 11),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    tabIndex == 0
                        ? RoundedButtonWidget(buttonText: 'About Us',onpressed: (){
                      setState(() {
                        tabIndex = 0;
                      });
                    }, width: 95.0,)
                        : RoundedBorderButtonWidget(buttonText: 'About Us',onpressed: (){
                      setState(() {
                        tabIndex = 0;
                      });
                    }, width: 95.0,),
                    const SizedBox(width:10),
                    tabIndex == 1
                        ? RoundedButtonWidget(buttonText: 'Services',onpressed: (){
                          setState(() {
                            tabIndex = 1;
                          });
                    }, width: 90.0,)
                        : RoundedBorderButtonWidget(buttonText: 'Services',onpressed: (){
                      setState(() {
                        tabIndex = 1;
                      });
                    }, width: 90.0,),
                    const SizedBox(width: 10,),
                    tabIndex == 2
                        ? RoundedButtonWidget(buttonText: 'Package',onpressed: (){
                      setState(() {
                        tabIndex = 2;
                      });
                    }, width: 90.0,)
                        : RoundedBorderButtonWidget(buttonText: 'Package',onpressed: (){
                      setState(() {
                        tabIndex = 2;
                      });
                    }, width: 90.0,),
                    const SizedBox(width: 10,),
                    tabIndex == 3
                        ? RoundedButtonWidget(buttonText: 'Gallery',onpressed: (){
                      setState(() {
                        tabIndex = 3;
                      });
                    }, width: 85.0,)
                        : RoundedBorderButtonWidget(buttonText: 'Gallery',onpressed: (){
                      setState(() {
                        tabIndex = 3;
                      });
                    }, width: 85.0,),
                    const SizedBox(width: 10,),
                    tabIndex == 4
                        ? RoundedButtonWidget(buttonText: 'Review',onpressed: (){
                      setState(() {
                        tabIndex = 4;
                      });
                    }, width: 85.0,)
                        : RoundedBorderButtonWidget(buttonText: 'Review',onpressed: (){
                      setState(() {
                        tabIndex = 4;
                      });
                    }, width: 85.0,),
                    const SizedBox(width: 10,),

                  ],
                ),
              ),
              tabIndex == 0
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                width: MediaQuery.of(context).size.width,

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReadMoreText(
                        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                        trimLines: 2,textAlign: TextAlign.justify,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10,),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text('Working Hours', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),)),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text('Monday - Friday        :', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                          SizedBox(width: 10,),
                          Text('08:00 AM - 21:00 PM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text('Saturday - Sunday    :', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                          SizedBox(width: 10,),
                          Text('10:00 AM - 20:00 PM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text('Contact Us', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),),
                      const SizedBox(height: 10,),
                      GestureDetector(
                          onTap: (){},
                          child: const Text('0300-1234567', style: TextStyle(fontSize: 14, color: Colors.pink),)),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text('Our Address', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),),
                          Spacer(),
                          Text('See on Maps', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Colors.pink),),

                        ],
                      ),
                     const SizedBox(height: 10,),
                      // AIzaSyCShRA0nQB2eX1yEuy4Wo7iO0OLjcvQEvM
                      Stack(
                        children: [
                          const SizedBox(
                            width: double.infinity, height: 300,
                            child: GoogleMap(
                              myLocationButtonEnabled: false,
                              zoomControlsEnabled: true,
                              initialCameraPosition: _initialCameraPosition,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: FloatingActionButton(
                              backgroundColor: Colors.transparent,elevation: 0,
                              foregroundColor: Colors.black,
                              onPressed: (){
                                // map move ho raha hai? ni
                                _googleMapController?.animateCamera(CameraUpdate.newCameraPosition(_initialCameraPosition));
                              },
                              child: const Icon(Icons.center_focus_strong_outlined),
                            ),
                          ),
                        ],
                      ) ,
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RoundedButtonWidget(buttonText: 'Book Now', onpressed: (){}, width: MediaQuery.of(context).size.width/1),
                      ),
                      const SizedBox(height: 20,),
                    ],
                ),
              ),
                  )
                  : tabIndex == 1
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                        child: Row(
                          children: [
                            Text('Our Services', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),),
                            Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OurServices()));
                                },
                                child: Text('See All',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16, color: Colors.pink),)),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 15, shrinkWrap: true,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8, ),
                            child: ListTile(
                              tileColor: Colors.white, shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 2, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                                title: const Text('Hair Cut', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),),
                                trailing: SizedBox(
                                  width:80,
                                  child: Row(
                                    children: [
                                      Text('44 types',style: TextStyle(fontSize: 12, color: Colors.grey.shade700),),
                                      const Icon(Icons.arrow_right)
                                    ],
                                  ),
                                )
                            ),
                          );
                        }, ),
                        //separatorBuilder: (BuildContext context, int index) { return const Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 5),); },),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RoundedButtonWidget(buttonText: 'Book Now', onpressed: (){}, width: MediaQuery.of(context).size.width/1),
                      ),
                      SizedBox(height: 20,),
                    ],
                ),
              ),
                  )
                  : tabIndex == 2
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                        child: Row(
                          children: [
                            Text('Our Package', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),),
                            Spacer(),
                            GestureDetector(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Package()));},
                                child: Text('See All',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16, color: Colors.pink),)),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5, shrinkWrap: true,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8, ),
                            child:Container(
                              height: 130, width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 80,width: 90,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.green
                                      ),
                                    ),
                                    const SizedBox(width: 14,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Haircuts & HairStyle', style: TextStyle(fontWeight: FontWeight.w900),),
                                        const Text('Special offers package valid until \n May 3, 2023', style: TextStyle(fontSize: 12, color: Colors.grey),),
                                        Row(
                                          children: [
                                            const Text('\$125', style: TextStyle(fontSize: 12, color: Colors.pink),),
                                            const SizedBox(width:90),
                                            ElevatedButton(onPressed: (){},
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.pink,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(30.0),
                                                  ),
                                                  minimumSize: const Size(20, 30)
                                                ),
                                                child: const Text('Book Now', style: TextStyle(fontSize: 12),))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          );
                        },
                        //separatorBuilder: (BuildContext context, int index) { return const Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 5),); },
                      ),
                     const SizedBox(height: 20,),
                    ],
                ),
              ),
                  )
                  :  tabIndex == 3
                  ?Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                        child: Row(
                          children: [
                            const Text('Our Gallery', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),),
                            const Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
                                },
                                child: const Text('See All',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16, color: Colors.pink),)),
                          ],
                        ),
                      ),

                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: img.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(img[index],),
                                  fit: BoxFit.cover
                                )
                              ),);
                        },
                      ),
                    ],
                ),
              ),
                  )
                  : tabIndex == 4
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 1,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const SizedBox(width: 5,),
                                    const Text('4.8 (3.87 reviews)', style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'Poppins', fontWeight: FontWeight.w900),)
                                  ],
                                ),
                                const Spacer(),
                                GestureDetector(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Reviews()));
                                    },
                                    child: const Text('See All',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16, color: Colors.pink),)),
                              ],
                            ),),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5, shrinkWrap: true,
                            itemBuilder: (context, index){
                              return Padding(
                                  padding: const EdgeInsets.only(left: 8, right: 8, ),
                                  child:Container(
                                    height: 160, width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                backgroundImage: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                              maxRadius: 25,
                                              ),
                                              const SizedBox(width: 20,),
                                              const Text('Barbella Inova', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontFamily: 'Poppins'),),
                                              const SizedBox(width: 30,),
                                              Container(
                                                height: 25, width: 60,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.pink, width: 1.5),
                                                  borderRadius: BorderRadius.circular(30),
                                                ),
                                                child: Row(
                                                  children: [
                                                    RatingBar.builder(
                                                      itemSize: 20,
                                                      initialRating: 4,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 1,
                                                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                      itemBuilder: (context, _) => const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    ),
                                                    const Text('4.8', style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'Poppins',),)
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(width: 10,),
                                             const CircleAvatar(
                                                backgroundColor: Colors.pink,
                                                radius: 13.5, child: CircleAvatar(
                                                radius: 12,backgroundColor: Colors.white,
                                                child: Icon(Icons.more_horiz_rounded, color: Colors.black,),
                                              ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          const Text('The People who work here are very friendly\n and professional. I really like it!', style: TextStyle(fontFamily:"Poppins", fontSize: 12),),
                                         const SizedBox(height: 5,),
                                          Row(
                                            children: [
                                              Container(
                                                  height:30, width: 30,
                                                  child: Image.network('https://cdn-0.emojis.wiki/emoji-pics/google/pink-heart-google.png', scale: 12,)),
                                             const Text('892', style: TextStyle(fontFamily: "Poppins", fontSize: 12,fontWeight: FontWeight.w900),),
                                             const SizedBox(width: 25,),
                                              Text('1 Month Ago',style: TextStyle(fontFamily: "Poppins", fontSize: 12,color: Colors.grey.shade600),),
                                            ],
                                          )
                                        ],
                                      )
                                    ),
                                  )
                              );
                            },
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ) : Container()
            ],
          ),
        ),
      ),
    );
  }
}
