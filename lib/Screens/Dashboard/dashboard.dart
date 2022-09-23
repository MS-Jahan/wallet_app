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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xFF01AA71),
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "List of Accounts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.settings),
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    elevation: MaterialStateProperty.all<double>(0),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white,
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue,
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(color: Color.fromARGB(255, 214, 214, 214))),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(0, 0),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cash",
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                            ),
                          ),
                          Text(
                            "BDT 7,300.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        // shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Color.fromARGB(255, 62, 106, 249))),
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add Account".toUpperCase(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 62, 106, 249),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle),
                            color: Color.fromARGB(255, 62, 106, 249),
                            padding: EdgeInsets.all(0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
