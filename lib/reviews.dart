import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.deepOrange),
        title:  Text("Reviews",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,
                foreground: Paint()..shader = const LinearGradient(
                  colors: <Color>[Colors.deepOrange, Colors.pink],
                ).createShader(const Rect.fromLTWH(0.0, 0.0, 170.0, 90.0))
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
