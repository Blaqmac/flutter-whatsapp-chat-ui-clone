import 'package:flutter/material.dart';
import 'package:whatsapp/call_screen.dart';
import 'package:whatsapp/camera_screen.dart';
import 'package:whatsapp/chat_screen.dart';
import 'package:whatsapp/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      home: WhatsAppOverviewScreen(),
    );
  }
}


class WhatsAppOverviewScreen extends StatefulWidget {
  @override
  _WhatsAppOverviewScreenState createState() => _WhatsAppOverviewScreenState();
}

class _WhatsAppOverviewScreenState extends State<WhatsAppOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: buildTabsRoute(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Chat',
          child: Icon(Icons.chat, color: Colors.white,),
        )
      ),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text("WhatsApp"),
        actions: <Widget>[
          Icon(Icons.search)
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ]),
      );
  }

  TabBarView buildTabsRoute() {
    return TabBarView(
      children: [
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallScreen(),
      ],
    );
  }
}
