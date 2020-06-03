import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//image - https://ionehiphopwired.files.wordpress.com/2020/01/15796359619141.jpg?quality=85&strip=all
//logo - https://logodix.com/logo/1671.png
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://ionehiphopwired.files.wordpress.com/2020/01/15796359619141.jpg?quality=85&strip=all'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 30, left: 20, right: 10, top: 30),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: NetworkImage('https://logodix.com/logo/1671.png'),
                      height: 180,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Nike',
                          style: TextStyle(
                              fontSize: 70, fontWeight: FontWeight.bold),
                        ),
                        Text('Self-Lacing\nAdapt BB 2.0')
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepOrange),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Shop Now',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
