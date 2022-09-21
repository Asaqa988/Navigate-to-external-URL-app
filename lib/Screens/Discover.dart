import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

import '../models/url_model.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(tabs: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.laptop),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
                IconButton(onPressed: () {}, icon: Icon(Icons.message))
              ]),
              backgroundColor: Colors.lightBlue.shade300),
          body: TabBarView(children: [
            Text("hello from laptop"),
            Text("hi"),
            Column(
              children: [
                URl(
                    // this is where you need to play
                    onTapping: () {},
                    myplatformTitle: "Find us on Facebook",
                    myplatformIcon: Icons.facebook,
                    myplatformSubTitle: "Join Facebook page"),
                URl(
                    // this is where you need to play
                    onTapping: () {},
                    myplatformIcon: Ionicons.logo_instagram,
                    myplatformSubTitle: "follow us on instagram",
                    myplatformTitle: "Instagram")
              ],
            ),
          ])),
    );
  }
}
