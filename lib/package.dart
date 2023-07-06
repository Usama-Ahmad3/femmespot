import 'package:flutter/material.dart';

class Package extends StatefulWidget {
  const Package({Key? key}) : super(key: key);

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.deepOrange),
        title:  Text("Our Packages",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,
                foreground: Paint()..shader = const LinearGradient(
                  colors: <Color>[Colors.deepOrange, Colors.pink],
                ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
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
          ],
        ),
      ),
    );
  }
}
