import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }
  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            'Quantity: $quantity',
            style:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: decrementQuantity,
                child: const Text('Decrement'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: incrementQuantity,
                child: const Text('Increment',),
              ),  
            ],
          )
        ],
      ),
    );
     
  }
}