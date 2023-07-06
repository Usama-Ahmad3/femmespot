import 'package:femmespot/cancelbooking.dart';
import 'package:femmespot/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({Key? key}) : super(key: key);

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(physics: const NeverScrollableScrollPhysics(),
              itemCount: 10, shrinkWrap: true,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(left: 11,right: 11, top: 11, bottom: 0),
                  child: Material(
                    elevation: 1,borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 185, width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12,),
                        child: Column(
                          children: [
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text('Mar 18, 2023 - 10:00 AM', style: TextStyle( fontWeight: FontWeight.w900, fontSize: 12, fontFamily: 'Poppins'),),
                                ),
                                const Spacer(),
                                ElevatedButton(onPressed: (){
                                  showModalBottomSheet(context: context,
                                      isScrollControlled: true,
                                      useRootNavigator: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (context)=>Container(
                                        height: 290, width: MediaQuery.of(context).size.width,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft:Radius.circular(20)),
                                        ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(27.0),
                                                child: Column(
                                                  children: [
                                                    Text('Cancel Booking', style: TextStyle(color: Colors.red.shade700,fontSize: headingSize, fontFamily: 'Poppins', fontWeight: FontWeight.w900),),
                                                    const SizedBox(height: 40,),
                                                    const Text('Are you sure you want to cancel your', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
                                                    const Text('salon/barber booking?', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
                                                    const SizedBox(height: 25,),
                                                    const Text('Only 80% of the money you can refund from', style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
                                                    const Text('your payment according to our policy', style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 18, right: 18),
                                                child: Row(
                                                  children: [
                                                    ElevatedButton(onPressed: (){
                                                      Navigator.pop(context);
                                                    },
                                                        style: ElevatedButton.styleFrom(
                                                          elevation: 0,
                                                            padding: const EdgeInsets.only(left: 55,right: 55,),
                                                            primary: Colors.grey.shade50,
                                                            onPrimary: Colors.pink,
                                                            shape: RoundedRectangleBorder(
                                                              side: BorderSide(color: Colors.grey.shade50),
                                                                borderRadius: BorderRadius.circular(20))
                                                        ),
                                                        child: const Text('Cancel',style: TextStyle(color: Colors.pink,fontSize: 12),)),
                                                   const SizedBox(width: 10,),
                                                    ElevatedButton(onPressed: (){
                                                      Navigator.pop(context);
                                                    },
                                                        style: ElevatedButton.styleFrom(
                                                            elevation: 0,
                                                            primary: Colors.pinkAccent,
                                                            onPrimary: Colors.pink,
                                                            shape: RoundedRectangleBorder(
                                                                side: BorderSide(color: Colors.grey.shade50),
                                                                borderRadius: BorderRadius.circular(20))
                                                        ),
                                                        child: const Text('Yes, Cancel Booking',style: TextStyle(color: Colors.white, fontSize: 12),))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                      ));
                                },
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.only(left: 5,right: 5,),
                                        primary: Colors.redAccent.shade700,
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12))
                                    ),
                                    child: const Text('Cancelled', style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),)),
                                const SizedBox(width: 15,),
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
                                    const Text('Barbarella Inova', style: TextStyle(fontWeight: FontWeight.w900,
                                        fontFamily: 'Poppins', fontSize: headingSize),),
                                    const SizedBox(height: 7,),
                                    const Text('92 A block, BTISB 1st floor Room # 01', style: TextStyle(fontSize: 12, fontFamily: 'Poppins', ),),
                                    const SizedBox(height: 7,),
                                    const Text('Services', style: TextStyle( fontWeight: FontWeight.w900, fontSize: 12, fontFamily: 'Poppins'),),
                                    const SizedBox(height: 5,),
                                    Text('Hair Cut, Manicure, Pedicure, Facial', style: TextStyle(fontSize: 12, fontFamily: 'Poppins', foreground: Paint()..shader = const LinearGradient(
                                      colors: [Colors.deepOrange, Colors.pink],
                                    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),),
                                  ],
                                ),
                              ],
                            ),
                           // Divider(thickness: 1,endIndent: 13,indent: 13,),
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


