import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/animated_text.dart';
import 'package:thirty_widgets/widgets/bottomnav.dart';
import 'package:thirty_widgets/widgets/button.dart';
import 'package:thirty_widgets/widgets/drawer.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            bottom:
            TabBar(
                indicatorColor: Colors.grey,
                tabs: [
              Tab(icon: Icon(Icons.chat),text: 'Chats',),
              Tab(icon: Icon(Icons.notifications),text: 'Status',),
              Tab(icon: Icon(Icons.call),text: 'Calls',),
              Tab(icon: Icon(Icons.settings),text: 'Settings',),
            ],
            ),
          ),
          body: TabBarView(
              children: [
                AnimatedTextWidget(),
                buttonWidget(),
                DrawerWidget(),
                BottomNav(),
              ]),




        )
    );
  }
}
