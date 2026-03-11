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
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: selected ? 150 : 300,
                width: selected ? 150 : 300,
                
                decoration: BoxDecoration(),
                child: Container(height: 150, width: 150, color: selected ? Colors.amberAccent : Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
