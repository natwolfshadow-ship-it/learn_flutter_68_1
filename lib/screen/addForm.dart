import 'package:flutter/material.dart';
import 'package:learn_flutter_68_1/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Form',
      home: Scaffold(
        appBar: AppBar(
          title:Text('Add Person'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'Name')),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Job'),
                items: Job.values.map((job) {
                  return DropdownMenuItem(value: job,child: Text(job.title),);
                }).toList(),
                onChanged: (Job? newValue) {
                  print('Selected job: ${newValue?.title}');
                  // Handle job selection
                },
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  // Handle form submission
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                ),
                child: Text('Submit',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
     