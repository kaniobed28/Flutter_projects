import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //  double screenWidth = MediaQuery.of(context).size.width;
     double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 240, 241, 242),
            centerTitle: false,
            title: const Row(
              children: [
                Icon(Icons.wifi_calling_sharp),
                SizedBox(width: 10,),
                Text("WhatsApp"),
                SizedBox(width: (20),),
                Text("Avec Obed KANI"),
              ],
            ),
          ),
          body: Row(
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              leftNav(screenHeight),
              // chat container
              chatsWidget(screenHeight),
              Container(
                color: const Color.fromARGB(255, 240, 241, 242),
                child: const SizedBox(
                  width: 5,
                ),
              ),
              Expanded(
                child: Container(
                  
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight / 2 - 100,
                        ),
                        Container(
                          height: 140,
                          child: Column(
                            children: [
                             const Icon(
                                Icons.wifi_calling_sharp,
                                size: 60,
                              ),
                           const   Text(
                                "WhatsApp for Windows",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            const  Text(
                                "Send and receive messages without keeping your phone online.",
                              ),
                       const       Text(
                                "Use WhatsApp on up to 4 linked devices and 1 phone at the same time.",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 2 - 100,
                        ),
                      ],
                    ),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container chatsWidget(double screenHeight) {
    return Container(
      width: 350,
      height: screenHeight,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Row(
            children: [
          const    SizedBox(
                width: 10,
              ),
           const   Text(
                "Chat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                const  SizedBox(
                    width: 210,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.note)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.line_style_sharp),
                  ),
                ],
              ),
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: screenHeight - 190,
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return eachChat();
              },
            ),
          ),
        ],
      ),
    );
    // decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(15))),
  }

  ListTile eachChat() {
    return const ListTile(
      title: Text("Snr Man"),
      subtitle: Text("You texted me ..."),
      leading: CircleAvatar(
        foregroundColor: Color.fromARGB(230, 0, 0, 0),
        backgroundColor: Color.fromARGB(230, 0, 0, 0),
      ),
      trailing: Text("10:00"),
    );
  }

  Container leftNav(double screenHeight) {
    return Container(
      width: 50.5,
      height: screenHeight,
      color: const Color.fromARGB(255, 240, 241, 242),
      child: Column(
        children: [
          Column(
            children: [
              IconButton(onPressed: () {}, icon:const Icon(Icons.message)),
              IconButton(onPressed: () {}, icon:const Icon(Icons.call)),
              IconButton(
                onPressed: () {},
                icon:const Icon(Icons.circle_notifications),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight - 350,
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
              IconButton(
                onPressed: () {},
                icon:const Icon(Icons.shopping_basket_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_accessibility_rounded),
              ),
              GestureDetector(
                child: const CircleAvatar(
                  foregroundColor: Color.fromARGB(230, 0, 0, 0),
                  backgroundColor: Color.fromARGB(230, 0, 0, 0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    }}