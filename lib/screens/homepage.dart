import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: const Color(0xFFF6F6F6),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 32.0),
                  child: const Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                TaskCard(
                  title: 'Teste',
                  desc: 'Teste desc',
                ),
                TaskCard(title: 'Teste', desc: 'Teste desc'),
              ]),
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color(0xFF7349FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Image(
                        image: AssetImage('assets/images/add_icon.png'),
                      )))
            ],
          )),
    ));
  }
}
