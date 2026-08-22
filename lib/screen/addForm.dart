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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Person'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      // ใช้ SingleChildScrollView ป้องกันหน้าจอล้นเมื่อคีย์บอร์ดเด้งขึ้นมา
      body: SingleChildScrollView(
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
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value?.trim() ?? '';
                },
              ),

              const SizedBox(height: 15),

              // ช่องกรอกอายุ
              TextFormField(
                initialValue: _age.toString(), // แสดงค่าเริ่มต้นตามตัวแปร
                decoration: const InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an age';
                  }
                  final parsedAge = int.tryParse(value);
                  if (parsedAge == null || parsedAge <= 0) {
                    return 'Please enter a valid age';
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = int.tryParse(value ?? '') ?? 30;
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

              const SizedBox(height: 25),

              // ปุ่ม Submit
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      if (_job != null) {
                        final newPerson = Person(
                          name: _name,
                          age: _age,
                          job: _job!.title,
                        );

                        // ส่งข้อมูล newPerson กลับไปยังหน้าก่อนหน้า
                        Navigator.pop(context, newPerson);
                      }
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}