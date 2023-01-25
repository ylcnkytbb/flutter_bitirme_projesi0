import 'package:flutter/material.dart';
import 'package:foodies/login/login_page.dart';
import 'package:lottie/lottie.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Lottie.asset('assets/animations/foodies.json'),
            padding: EdgeInsets.all(10),
          ),
          ElevatedButton(
              child: Text('Skip'),
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => LoginPage()),
    );
              },
            ),
        ],
      ),
    );
  }
}
