import 'package:flutter/material.dart';
import 'package:learn_flutter_68_1/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  int _age = 30;
  Job? _job = Job.Developer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Form',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add Person'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // ช่องกรอกชื่อ
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value ?? '';
                  },
                ),

                const SizedBox(height: 15),

                // ช่องกรอกอายุ
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an age';
                    }

                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _age = int.tryParse(value ?? '') ?? 20;
                  },
                ),

                const SizedBox(height: 15),

                // เลือกอาชีพ
                DropdownButtonFormField<Job>(
                  value: _job,
                  decoration: const InputDecoration(
                    labelText: 'Job',
                    border: OutlineInputBorder(),
                  ),
                  items: Job.values.map((job) {
                    return DropdownMenuItem<Job>(
                      value: job,
                      child: Text(job.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                // ปุ่ม Submit
                FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      if (_job != null) {
                        setState(() {
                          people.add(
                            Person(
                              name: _name,
                              age: _age,
                              job: _job!.title,
                            ),
                          );
                        });

                        print(
                          'Name: $_name, '
                          'Age: $_age, '
                          'Job: ${_job!.title}',
                        );

                        _formKey.currentState!.reset();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('เพิ่มข้อมูลสำเร็จ'),
                          ),
                        );
                      }
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 50,
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}