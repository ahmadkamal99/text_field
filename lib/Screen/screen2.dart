import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search TextField"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  suffix: Icon(Icons.search),
                  label: Text("     Search"),
                  hintText: "Type Here")),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return myapp();
                  },
                ));
              },
              child: Text("Back to home page"))
        ],
      ),
    );
  }
}
