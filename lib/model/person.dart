class Person {
  String name;
  int age;
  String job;

  Person({
    required this.name,
    required this.age,
    required this.job,
  });
}

List<Person> people = [
  Person(
    name: 'สมชาย',
    age: 30,
    job: 'นักพัฒนาแอปพลิเคชัน',
  ),
  Person(
    name: 'สมหญิง',
    age: 25,
    job: 'นักออกแบบกราฟิก',
  ),
  Person(
    name: 'สมปอง',
    age: 35,
    job: 'นักวิเคราะห์ข้อมูล',
  ),
  Person(
    name: 'สมศรี',
    age: 28,
    job: 'นักการตลาด',
  ),
  Person(
    name: 'สมตั้ง',
    age: 40,
    job: 'นักวิเคราะห์ธุรกิจ',
  ),
];