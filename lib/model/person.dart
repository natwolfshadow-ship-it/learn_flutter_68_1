import 'package:flutter/material.dart';
enum Job {
  developer(
    title: 'นักพัฒนาแอปพลิเคชัน',
    description: 'ทำงานเกี่ยวกับการพัฒนาแอปพลิเคชันและซอฟต์แวร์',
    image: 'assets/images/cat1.jpg',
    color: Colors.blueAccent,
  ),
  designer(
    title: 'นักออกแบบกราฟิก',
    description: 'ทำงานเกี่ยวกับการออกแบบกราฟิกและอินเตอร์เฟซ',
    image: 'assets/images/cat1.jpg',
    color: Colors.greenAccent,
  ),

  analyst(
    title: 'นักวิเคราะห์ข้อมูล',
    description: 'ทำงานเกี่ยวกับการวิเคราะห์ข้อมูลและรายงานผล',
    image: 'assets/images/cat1.jpg',
    color: Colors.orangeAccent,
  ),
  marketer(
    title: 'นักการตลาด',
    description: 'ทำงานเกี่ยวกับการตลาดและการสื่อสารกับลูกค้า',
    image: 'assets/images/cat1.jpg',
    color: Colors.purpleAccent, 
  ),
  businessAnalyst(
    title: 'นักวิเคราะห์ธุรกิจ',
    description: 'ทำงานเกี่ยวกับการวิเคราะห์ธุรกิจและหาทางแก้ไขปัญหา',
    image: 'assets/images/cat1.jpg',
    color: Colors.redAccent,
  );

  const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });
  final String title;
  final String description;
  final String image;
  final Color color;
}

class Person {
  String name;
  int age;
  Job job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: 'สมชาย',age: 30,job: Job.developer),
  Person(name: 'สมหญิง',age: 25,job: Job.designer),
  Person(name: 'สมปอง',age: 35,job: Job.analyst),
  Person(name: 'สมศรี',age: 28,job: Job.marketer),
  Person(name: 'สมตั้ง',age: 40,job: Job.businessAnalyst),
];