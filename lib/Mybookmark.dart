import 'package:femmespot/HomePage.dart';
import 'package:femmespot/Services.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:flutter/material.dart';
import 'Gradient.dart';
import 'all.dart';


class MyBookmark extends StatefulWidget {
  const MyBookmark({Key? key}) : super(key: key);

  @override
  State<MyBookmark> createState() => _MyBookmarkState();
}

class _MyBookmarkState extends State<MyBookmark> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
          child: Scaffold(
            appBar: AppBar(
              leading: RadiantGradientMask(
                child: GestureDetector(onTap: (){Navigator.pop(context,MaterialPageRoute(builder: (context)=>const HomePage()));},
                  child: const Icon(Icons.arrow_back, size: 25, color: Colors.white,),
                ),
              ),
              actions:[
                RadiantGradientMask(
                  child: GestureDetector(onTap: (){},
                    child: const Padding(
                      padding: EdgeInsets.only(right: 19),
                      child: Icon(Icons.notifications_none, size: 25, color: Colors.white,),
                    ),
                  ),
                ),
                ],
              backgroundColor: Colors.white,
              title:  Text("My Bookmark",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = const LinearGradient(
                        colors: <Color>[Colors.deepOrange, Colors.pink],
                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                  )
              ),
              elevation: 0,
              toolbarHeight: 100,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(4.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14,),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RoundedButtonWidget(buttonText: 'All',onpressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AllServices()));
                        }, width: 50.0,),
                        const SizedBox(width:7),
                        RoundedBorderButtonWidget(buttonText: 'Haircuts',onpressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Services(serviceName: 'Haircuts',)));
                        }, width: 85.0,),
                        const SizedBox(width: 7,),
                        RoundedBorderButtonWidget(buttonText: 'Spa',onpressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Services(serviceName: 'Spa',)));
                        }, width: 85.0,),
                        const SizedBox(width: 7,),
                        RoundedBorderButtonWidget(buttonText: 'Facial',onpressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Services(serviceName: 'Facial',)));
                        }, width: 85.0,),
                        const SizedBox(width: 7,),
                        RoundedBorderButtonWidget(buttonText: 'Manicure',onpressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Services(serviceName: 'Manicure',)));
                        }, width: 93.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: AllServices()
          ),
        );


  }
}
