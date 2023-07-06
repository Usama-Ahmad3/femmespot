import 'package:femmespot/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Gradient.dart';
import 'HomePage.dart';

class Services extends StatefulWidget {
  Services({Key? key, required this.serviceName}) : super(key: key);
  String serviceName;
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  String? search;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.serviceName,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,
                foreground: Paint()..shader = const LinearGradient(
                  colors: <Color>[Colors.deepOrange, Colors.pink],
                ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
            )
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: RadiantGradientMask(
          child: GestureDetector(onTap: (){Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomePage()));},
            child: const Icon(Icons.arrow_back, size: 25, color: Colors.white,),
          ),
        ),
        //title: Text(widget.serviceName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined, color: search != null ? Colors.pink : Colors.grey, size: 19,),
                  hintText: "Search",hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.pink),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.pink)
                  )
                  //fillColor: Colors.green
                ),
              ),
            ),
            ListView.separated(physics: NeverScrollableScrollPhysics(),
              itemCount: 10, shrinkWrap: true,
              itemBuilder: (context, index){
                return Material(
                  //elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11,right: 11, top: 11, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        //color: Colors.blue
                      ),
                      //color: Colors.blue,
                      height: 100, width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14.5),
                            child: Container(
                              height: 80,width: 90,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: const NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Belle Curls', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 12),),
                                const SizedBox(height: 7,),
                                const Text('348 ISB, Pakistan',style: TextStyle(fontSize: 11),),
                                const SizedBox(height: 7,),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined),
                                    const SizedBox(width: 5,),
                                    const Text('12Km',style: TextStyle(fontSize: 11),),
                                    const SizedBox(width: 10,),
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
                                    const Text('4.8',style: TextStyle(fontSize: 11),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 45,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                    onTap: (){
                                      showModalBottomSheet(context: context,
                                          isScrollControlled: true,
                                          useRootNavigator: true,
                                          backgroundColor: Colors.transparent,
                                          builder: (context)=>Container(
                                            height: 250, width: MediaQuery.of(context).size.width,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft:Radius.circular(20)),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 27.0),
                                                  child: Column(
                                                    children: [
                                                      Text('Remove from Bookmark', style: TextStyle(color: Colors.red.shade700,fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w900),),
                                                      SizedBox(height: 20,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 25,right: 25),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Container(
                                                                  height: 80,width: 90,
                                                                  decoration: BoxDecoration(
                                                                      image: const DecorationImage(
                                                                        image: const NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                                                                        fit: BoxFit.cover,
                                                                      ),
                                                                      borderRadius: BorderRadius.circular(15),
                                                                      color: Colors.green
                                                                  ),
                                                                ),
                                                                const SizedBox(width: 10),
                                                                Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    const Text('Belle Curls', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 12),),
                                                                    const SizedBox(height: 7,),
                                                                    const Text('348 ISB, Pakistan', style: TextStyle(fontSize: 11),),
                                                                    const SizedBox(height: 7,),
                                                                    Row(
                                                                      children: [
                                                                        const Icon(Icons.location_on_outlined),
                                                                        const SizedBox(width: 5,),
                                                                        const Text('12Km',style: TextStyle(fontSize: 11),),
                                                                        const SizedBox(width: 10,),
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
                                                                        const Text('4.8',style: TextStyle(fontSize: 11),)
                                                                      ],
                                                                    )
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.only(left: 53,bottom: 50),
                                                                  child: const Icon(Icons.bookmark_border),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(height: 20,),
                                                            Row(
                                                              children: [
                                                                ElevatedButton(onPressed: (){},
                                                                    style: ElevatedButton.styleFrom(
                                                                        elevation: 0,
                                                                        padding: EdgeInsets.only(left: 50,right: 50,),
                                                                        primary: Colors.grey.shade50,
                                                                        //primary: Colors.pinkAccent,
                                                                        onPrimary: Colors.pink,
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(color: Colors.grey.shade50),
                                                                            borderRadius: BorderRadius.circular(20))
                                                                    ),
                                                                    child: Text('Cancel',style: TextStyle(color: Colors.pink,fontSize: 11.5),)),
                                                                SizedBox(width: 20,),
                                                                ElevatedButton(onPressed: (){
                                                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>CancelBooking()));
                                                                },
                                                                    style: ElevatedButton.styleFrom(
                                                                        padding: EdgeInsets.only(left: 35,right: 35,),
                                                                        elevation: 0,
                                                                        primary: Colors.pinkAccent,
                                                                        onPrimary: Colors.pink,
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(color: Colors.grey.shade50),
                                                                            borderRadius: BorderRadius.circular(20))
                                                                    ),
                                                                    child: Text('Yes, Remove',style: TextStyle(color: Colors.white, fontSize: 11.5),))
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
                                    }, child: const Icon(Icons.bookmark_border, color: Colors.deepOrange,))),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) { return Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 5),); },),
          ],
        ),
      ),
    );
  }
}
