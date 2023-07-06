import 'package:femmespot/constants.dart';
import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                itemCount: 10, shrinkWrap: true,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(11, 11, 11, 0),
                    child: Material(
                      elevation: 1, borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 250, width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  const Text('Mar 18, 2023 - 10:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),
                                  const Spacer(),
                                  const Text('Remind Me',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),
                                  Switch.adaptive(
                                      activeColor: Colors.pink,
                                      value: value, onChanged: (value){
                                   setState(() {
                                     this.value=value;
                                   });
                                  }),
                                ],
                              ),
                              const Divider(thickness: 1,endIndent: 13,indent: 13,),
                              Row(
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
                                  const SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('Barbarella Inova', style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Poppins', fontSize: headingSize),),
                                      const SizedBox(height: 7,),
                                      const Text('92 A block, BTISB 1st floor Room # 01', style: TextStyle(fontSize: 12,fontFamily: 'Poppins'),),
                                      const SizedBox(height: 7,),
                                      const Text('Services', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),
                                      const SizedBox(height: 7,),
                                      Text('Hair Cut, Manicure, Pedicure, Facial', style: TextStyle(fontSize: 12,fontFamily: 'Poppins', foreground: Paint()..shader = const LinearGradient(
                                        colors: [Colors.deepOrange, Colors.pink],
                                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(thickness: 1,endIndent: 13,indent: 13,),
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 125,
                                      height: 30,
                                      decoration: const ShapeDecoration(
                                        shape: StadiumBorder(),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [Colors.deepOrange, Colors.pink,],
                                        ),
                                      ),
                                      child: MaterialButton(
                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        shape: const StadiumBorder(),
                                        child: const Text(
                                          'Cancel Booking',
                                          style: TextStyle(color: Colors.white, fontSize: 11,fontFamily: 'Poppins'),
                                        ),
                                        onPressed: () {
                                          print('Hello!');
                                        },
                                      ),
                                    ),
                                    const SizedBox(width:  42),
                                    Container(
                                      width: 125,
                                      height: 30,
                                      decoration: const ShapeDecoration(
                                        shape: StadiumBorder(side: BorderSide(color: Colors.pink)),
                                      ),
                                      child: MaterialButton(
                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        shape: const StadiumBorder(),
                                        child: const Text(
                                          'View E-Receipt',
                                          style: TextStyle(color: Colors.pink, fontSize: 11,fontFamily: 'Poppins'),
                                        ),
                                        onPressed: () {
                                          print('Hello!');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              //separatorBuilder: (BuildContext context, int index) { return Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 5),); },
        ),
          ],
        ),
      ),
    );
  }
}
