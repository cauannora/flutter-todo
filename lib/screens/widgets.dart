import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String desc;
  // ignore: prefer_const_constructors_in_immutables
  TaskCard({Key? key, required this.title, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF211551),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                desc,
                style: const TextStyle(
                    color: Color(0xFF86809D), fontSize: 16, height: 1.5),
              ),
            )
          ],
        ));
  }
}
