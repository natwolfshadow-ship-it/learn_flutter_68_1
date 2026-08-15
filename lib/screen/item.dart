import 'package:flutter/material.dart';
import 'package:learn_flutter_68_1/model/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5,
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    people[index].name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'อายุ: ${people[index].age} ปี',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'อาชีพ: ${people[index].job}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.person,
                size: 50,
                color: Colors.blueAccent,
              ),
            ],
          ),
        );
      },
    );
  }
}