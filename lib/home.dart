import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Work'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: selected ? 150 : 150,
              width: selected ? 150 : 150,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(selected ? 10: 30),
                color: selected ? Colors.amberAccent : Colors.green
              ),
              // child: Container(
              //   height: 150,
              //   // width: 150,
              //   // decoration: BoxDecoration(
              //   //   color: Colors.amber,
              //   //   borderRadius: BorderRadius.circular(10)
              //   // ),
              // ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Text('Animate'),
            ),

            A
          ],
        ),
      ),
    );
  }
}
