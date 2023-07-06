import 'package:femmespot/SignUp.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'constants.dart';



class OnBoardingScreen extends StatelessWidget {
     OnBoardingScreen({Key? key}) : super(key: key);

  final controller= PageController();

  @override
  void dispose(){
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/images/image3.jpg'),
                  ),
                  const SizedBox(height: 30,),
                  const Text(onBoardingTitle1, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                  const Text(onBoardingTitle2, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                  const Text(onBoardingTitle3, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.network('https://thumbs.dreamstime.com/b/no-booking-required-rgb-color-icon-isolated-vector-illustration-tattoo-session-professional-salon-contact-masters-getting-new-220761380.jpg'),
                  ),
                  const SizedBox(height: 55,),
                  const Text(onBoardingTitle4, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                  const Text(onBoardingTitle5, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                  const Text(onBoardingTitle6, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.network('https://png.pngtree.com/png-vector/20211028/ourlarge/pngtree-beauty-salon-figures-and-hair-products-illustration-png-image_4002601.png'),
                  ),
                  const SizedBox(height: 50,),
                  const Text(onBoardingTitle7, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                  const Text(onBoardingTitle8, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                  const Text(onBoardingTitle9, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 25),),
                ],
              ),
            ),
        ],
        ),
      ),
      bottomSheet: SizedBox(
        //padding: EdgeInsets.symmetric(horizontal: 80),
        height: 170, width: double.infinity,
        child: Column(
          children: [
            SmoothPageIndicator(
              controller:controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotWidth: 8, dotHeight: 8,activeDotColor: Colors.pink
              ),
              ),
            const SizedBox(
              height:60,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundedButtonWidget(buttonText: 'Next', onpressed: (){
                if(controller.page == 2){
                  print('it is last page');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                } else {
                  controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
                  print(controller.page);
                }
              }, width: MediaQuery.of(context).size.width),
            ),
          ],
        ),
      ),
    );
  }
}
