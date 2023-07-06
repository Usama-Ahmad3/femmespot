import 'package:flutter/material.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.deepOrange),
        title:  Text("Our Services",
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
              itemCount: 15, shrinkWrap: true,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, ),
                  child: ListTile(
                      tileColor: Colors.white, shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                      title: const Text('Hair Cut', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),),
                      trailing: SizedBox(
                        width:80,
                        child: Row(
                          children: [
                            Text('44 types',style: TextStyle(fontSize: 12, color: Colors.grey.shade700),),
                            const Icon(Icons.arrow_right)
                          ],
                        ),
                      )
                  ),
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
