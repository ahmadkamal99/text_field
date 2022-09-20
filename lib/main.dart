import 'package:flutter/material.dart';
import 'package:myapp/Screen/screen2.dart';

void main() {
  runApp(MaterialApp(
    home: myapp(),
  ));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login page "),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                child: Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.rcgY01LTCMJTv42lgWJpigHaHw?pid=ImgDet&rs=1")),
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text("Sign in"),
                    suffix: Icon(Icons.email),
                    hintText: "enter your email "),
              ),
              Divider(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("register password"),
                    suffix: Icon(Icons.password),
                    hintText: "enter your Password "),
              ),
              Divider(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return screen2();
                    })));
                  },
                  child: Text("Sign in"))
            ],
          ),
        ),
      ),
    );
  }
}
