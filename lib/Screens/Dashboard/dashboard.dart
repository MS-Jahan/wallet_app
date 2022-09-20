// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallet_app/Screens/Dashboard/drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key, required this.title});

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Added
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: const Color(0xFF01AA71),
          // elevation: 0,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Accounts",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "Records",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        drawer: DrawerWidget(),
        body: ColoredBox(
          color: Color(0xFF01AA71),
          // child: TabBar(
          //   // labelColor: Colors.black,
          //   indicatorColor: Colors.white,
          //   tabs: [
          // Tab(
          //   child: Text(
          //     "Tab 1",
          //     overflow: TextOverflow.clip,
          //     maxLines: 1,
          //   ),
          // ),
          // Tab(
          //   child: Text(
          //     "Tab 2",
          //     overflow: TextOverflow.clip,
          //     maxLines: 1,
          //   ),
          // ),
          //   ],
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
