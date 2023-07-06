import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:femmespot/chatscreen.dart';
import 'package:flutter/material.dart';


class Inbox extends StatefulWidget {
  Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions:[
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Row(
              children: const [
                Icon(Icons.search_outlined, color: Colors.black,),
                SizedBox(width: 10,),
                Icon(Icons.notifications_none, color: Colors.black,),
              ],
            ),
          )
        ],
        leading:Image.asset('assets/images/femmespot.jpeg', scale: 50,) ,
        title: const Text('Inbox', style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w900),),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                borderWidth: 2,
                borderColor: Colors.pink, unselectedBorderColor: Colors.pink,
                unselectedBackgroundColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/6),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.deepOrange, Colors.pink,
                    ],
                  ),
                ),
                unselectedLabelStyle: const TextStyle(color: Colors.pink,
                    fontWeight: FontWeight.w900),
                labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                radius: 50,
                tabs: const [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Calls',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 15, shrinkWrap: true,
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatScreen()));
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                            ),
                            title: const Text('Barbella Inova', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),),
                            subtitle: const Text('Awesome', style: TextStyle(fontSize: 12),),
                            trailing: Column(
                              children: [
                                const CircleAvatar(
                                  radius: 9,
                                  child: Text('2', style: TextStyle(fontSize: 8),),
                                ),
                                const Spacer(),
                                Text('20:00',style: TextStyle(fontSize: 12, color: Colors.grey.shade700),)
                              ],
                            )
                          ),
                        );
                      },
                      //separatorBuilder: (BuildContext context, int index) { return Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 5),); },
                    ),
                    ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 15, shrinkWrap: true,
                      itemBuilder: (context, index){
                        return ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage('https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
                            ),
                            title: const Text('Barbella Inova', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),),
                            subtitle: Row(
                              children: const [
                                Icon(Icons.call_missed_outgoing,
                                  color: Colors.red,),
                                SizedBox(width: 5,),
                                Text('Outgoing | Dec 20, 2024', style: TextStyle(fontSize: 12),),
                              ],
                            ),
                            trailing: const Icon(Icons.call,
                              color: Colors.pink,),
                        );
                      },
                      //separatorBuilder: (BuildContext context, int index) { return Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 5),); },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}