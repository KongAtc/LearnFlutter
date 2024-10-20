import 'package:flutter/material.dart';
import 'package:learning_project/main.dart';
import 'package:learning_project/models/person.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  final _formkey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job _job = Job.police;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(label: Text("ชื่อ")),
                    onSaved: (newValue) {
                      _name = newValue!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "กรุณาป้อนชื่อของคุณ";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (newValue) {
                      _age = int.parse(newValue.toString());
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "กรุณาป้อนอายุของคุณ";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(label: Text("อายุ")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(label: Text("อาชีพ")),
                      items: Job.values.map((key) {
                        return DropdownMenuItem(
                          value: key,
                          child: Text(
                            key.title,
                          ),
                        );
                      }).toList(),
                      value: _job,
                      onChanged: (value) {
                        setState(() {
                          _job = value!;
                        });
                      }),
                  FilledButton(
                      onPressed: () {
                        _formkey.currentState!.validate();
                        _formkey.currentState!.save();
                        data.add(Person(name: _name, age: _age, job: _job));
                        _formkey.currentState!.reset();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (ctx) => const MyApp()));
                        print(data.length);
                      },
                      child: const Text("Submit"))
                ],
              )),
        ),
      ),
    );
  }
}
