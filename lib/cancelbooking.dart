import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:flutter/material.dart';

class CancelBooking extends StatefulWidget {
  const CancelBooking({Key? key}) : super(key: key);

  @override
  State<CancelBooking> createState() => _CancelBookingState();
}

class _CancelBookingState extends State<CancelBooking> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Cancel Booking',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Please select a payment refund method (only 80%',
              style: TextStyle(fontSize: 12.5),
            ),
            const Text(
              'will be refunded)',
              style: TextStyle(fontSize: 12.5),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.network(
                      'https://seeklogo.com/images/J/jazz-cash-logo-829841352F-seeklogo.com.png?v=638133552550000000',
                      scale: 7,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Jazz Cash',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                    const Spacer(),
                    Checkbox(
                      checkColor: Colors.white,
                      hoverColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      value: isChecked,
                      activeColor: Colors.pink,
                      onChanged: (newbool) {
                        setState(() {
                          isChecked = newbool;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.network(
                      'https://seeklogo.com/images/J/jazz-cash-logo-829841352F-seeklogo.com.png?v=638133552550000000',
                      scale: 7,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Jazz Cash',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                    const Spacer(),
                    Checkbox(
                      checkColor: Colors.white,
                      hoverColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      value: isChecked,
                      activeColor: Colors.pink,
                      onChanged: (newbool) {
                        setState(() {
                          isChecked = newbool;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.network(
                      'https://seeklogo.com/images/J/jazz-cash-logo-829841352F-seeklogo.com.png?v=638133552550000000',
                      scale: 7,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Jazz Cash',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                    const Spacer(),
                    Checkbox(
                      checkColor: Colors.white,
                      hoverColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      value: isChecked,
                      activeColor: Colors.pink,
                      onChanged: (newbool) {
                        setState(() {
                          isChecked = newbool;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.pink.withOpacity(0.1),
                      onPrimary: Colors.pinkAccent.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text(
                    'Add new card',
                    style: TextStyle(color: Colors.pink),
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Paid: \$16.00'),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Refund: \$4.00',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RoundedButtonWidget(
                buttonText: "Confirm Cancellation",
                onpressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        'https://us.123rf.com/450wm/windlaugh/windlaugh1809/windlaugh180900167/108092086-pink-fur-approval-tick-on-round-frame-original-vector-illustration-stylish-funky-check-mark-logo.jpg',
                                        scale: 3,
                                      )),
                                  const Text(
                                    'Successful!',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'You have succesfully cancelled your booking order. 80% funds will returned to your accunt',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  RoundedButtonWidget(
                                    buttonText: 'OK',
                                    onpressed: () {},
                                    width: 200.0,
                                  )
                                ],
                              )
                            ],
                          ));
                },
                width: MediaQuery.of(context).size.width)
          ],
        ),
      ),
    );
  }
}
