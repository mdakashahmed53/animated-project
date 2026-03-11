import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selected = false;
  bool rolate = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Work'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 15),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: selected ? 150 : 150,
                width: selected ? 150 : 150,
      
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(selected ? 10 : 30),
                  color: selected ? Colors.amberAccent : Colors.green,
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
              SizedBox(height: 10),
              AnimatedAlign(
                alignment: selected
                    ? Alignment.bottomLeft
                    : Alignment.bottomRight,
                duration: Duration(seconds: 1),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGa70BgePn1Rsf41oiG6ac0_TAzpKXj4d9qg&s',
                  ),
                  radius: 30,
                ),
              ),
              SizedBox(height: 15),
              AnimatedRotation(
                curve: Curves.easeInOut,
                turns: rolate ? 0 : 1,
                duration: Duration(seconds: 1),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGa70BgePn1Rsf41oiG6ac0_TAzpKXj4d9qg&s',
                  height: 150,
                ),
              ),
              
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    rolate = !rolate;
                  });
                },
                child: Text('Rolated'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
