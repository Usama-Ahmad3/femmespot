import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage('https://studio57.ae/wp-content/uploads/2018/10/resepshn_manikyur_parikmakherskaya-1-1.png'),
                  //  image: NetworkImage('https://images.pexels.com/photos/705255/pexels-photo-705255.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
                    fit: BoxFit.cover,
                  )
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,color: Colors.black.withOpacity(0.5),
                ),
              ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                height: 570, //width: 200,
                           child: const Align(
                               alignment: Alignment.bottomLeft,
                               child: Text('Welcome to', style: TextStyle(fontFamily: 'Poppins',fontSize: 35, color: Colors.white, fontWeight: FontWeight.w600),)),
                           ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 550, width: 50,
                            child:  Align(
                                alignment: Alignment.bottomLeft,
                                child: Image.network('https://icons.iconarchive.com/icons/google/noto-emoji-people-bodyparts/512/12050-waving-hand-icon.png', scale: 1),),
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only( bottom: 20, left: 12, ),
                      child: Container(
                        //height: 60,
                        width: double.infinity,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                        child: Text(
                            "Femmespot",
                            style:TextStyle(
                               fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..shader = const LinearGradient(
                                  colors: <Color>[
                                    Colors.deepOrange,
                                    Colors.pink],
                                ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                            )
                        ),
                        ),
                      ),
                    ),
                    //SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only( bottom: 20, left: 12, ),
                      child: Container(
                        //height: 70,
                        width: double.infinity,
                        child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('The best Barbor & Salon app in this century for your good looks and beauty.',
                              style: TextStyle(fontFamily:'Poppins',fontSize:14, color: Colors.white, fontWeight: FontWeight.w300),)),
                      ),
                    ),
                  ],
                ),

            ],
          ),
    );
  }
}
