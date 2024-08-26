import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    bool isToggled = true;

    void toggleBool() {
    setState(() {
      isToggled = !isToggled; // Update boolean variable
    });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Up to Down Scroll menu or Container"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  GestureDetector(
                          onTap: toggleBool,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(10.0),
                              // Adjust the radius value as needed
                              border: Border.all(),
                            ),
                            child: const Text(
                              "Details Page >",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      const SizedBox(
                  height: 15,
                ),
                isToggled?userCommoditiesColumn(context):userDetails(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget userCommoditiesColumn(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: [
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           )
          ],
        ),
      ),
    );
  }
  Widget userDetails() {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
         Container(
          height: 200,
          width: 200,
          child: Card(
            child: Text("Mostakim"),
          ),
         ),
         Container(
          color: Colors.red,
          height: 200,
          width: 200,
          child: Card(
            child: Text("Mostakim"),
          ),
         ),
        ],
      ),
    );
  }
}