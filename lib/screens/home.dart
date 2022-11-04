import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/newCall.dart';

import './newChat.dart';
import './newStatus.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        title: const Text('WhatsApp',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          InkWell(child: Icon(Icons.search), onTap: () {}),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            itemBuilder: (context) {
              return [
                // In this case, we need 5 popupmenuItems one for each option.
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text('New Broadcast')),
                const PopupMenuItem(child: Text('Linked Devices')),
                const PopupMenuItem(child: Text('Starred Messages')),
                const PopupMenuItem(child: Text('Payments')),
                const PopupMenuItem(child: Text('Settings')),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt, color: Colors.white),
            ),
            Tab(
              child: Text("CHATS", style: Theme.of(context).textTheme.button),
            ),
            Tab(
              child: Text("STATUS", style: Theme.of(context).textTheme.button),
            ),
            Tab(
              child: Text("CALLS", style: Theme.of(context).textTheme.button),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const Center(
            child: Text("Feature is Coming Soon"),
          ),
          ChatsTab(),
          StatusTab(),
          CallTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
    ;
  }
}
