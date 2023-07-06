import 'package:femmespot/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
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
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(11, 11, 11, 0),
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Mar 18, 2023 - 10:00 AM',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 5,
                                        ),
                                        primary: Colors.green,
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    child: const Text(
                                      'Completed',
                                      style: TextStyle(
                                          fontSize: 12, fontFamily: 'Poppins'),
                                    )),
                                const SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              endIndent: 13,
                              indent: 13,
                            ),
                            Row(
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
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Barbarella Inova',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Poppins',
                                          fontSize: headingSize),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    const Text(
                                      '92 A block, BTISB 1st floor Room # 01',
                                      style: TextStyle(
                                          fontSize: 12, fontFamily: 'Poppins'),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    const Text(
                                      'Services',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Poppins'),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Hair Cut, Manicure, Pedicure, Facial',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          foreground: Paint()
                                            ..shader = const LinearGradient(
                                              colors: [
                                                Colors.deepOrange,
                                                Colors.pink
                                              ],
                                            ).createShader(const Rect.fromLTWH(
                                                0.0, 0.0, 200.0, 100.0))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              endIndent: 13,
                              indent: 13,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 100),
                                    primary: Colors.white,
                                    onPrimary: Colors.pink,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                          color: Colors.pink,
                                        ))),
                                child: const Text(
                                  'View E-Receipt',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12),
                                ))
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
