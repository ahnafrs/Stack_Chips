import 'package:flutter/material.dart';

class CoffeeStackPage extends StatefulWidget {
  @override
  _CoffeeStackPageState createState() => _CoffeeStackPageState();
}

class _CoffeeStackPageState extends State<CoffeeStackPage> {
  bool chipsVisible = false;
  List<String> coffeeNames = [
    'Espresso',
    'Cappuccino',
    'Latte',
    'Mocha',
    'Americano',
    'Macchiato',
    'Irish Coffee',
    'Turkish Coffee',
    'Vienna Coffee',
    'Affogato'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Stack Page'),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                chipsVisible = !chipsVisible;
              });
            },
            child: Image.network(
              'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fHw%3D&w=1000&q=80',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          if (chipsVisible)
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black.withOpacity(0.6),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: coffeeNames.map((coffeeName) {
                    return Chip(
                      label: Text(
                        coffeeName,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blue,
                    );
                  }).toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
