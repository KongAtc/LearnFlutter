import 'package:flutter/material.dart';
import 'package:learning_project/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_project/screen/addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: data[index].job.color),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].name,
                              style: GoogleFonts.kanit(
                                  textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Text(
                              "อายุ: ${data[index].age}, อาชีพ: ${data[index].job.title}",
                              style: GoogleFonts.kanit(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ),
                          ],
                        ),
                        Image.asset(
                          data[index].job.image,
                          width: 50,
                          height: 50,
                        )
                      ],
                    ));
              }),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Addform()));
              },
              icon: const Icon(Icons.add)),
        )
      ],
    );
  }
}
