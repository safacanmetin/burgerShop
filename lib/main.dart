import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burger Shop'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Display the Burger product image or widget here
          Image.asset(
            'assets/burger_image.png', // Replace with your image asset path
            width: 300, // Adjust the width as needed
            height: 300, // Adjust the height as needed
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your "Order Now" button action here
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Order Placed'),
                    content: Text('Your order has been placed!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Order Now'),
          ),
        ],
      ),
    );
  }
}
