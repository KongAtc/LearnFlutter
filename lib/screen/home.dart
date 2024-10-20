import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () {
                print("Button Click");
              },
              child: const Text(
                "Click",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                print("clikc");
              },
              child: const Text("Filled")),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.red, width: 2)),
              onPressed: () {
                print("outline");
              },
              child: const Text("Outline")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              onPressed: () {
                print("elevated");
              },
              child: const Text("elevated"))
        ],
      ),
    );
  }
}
