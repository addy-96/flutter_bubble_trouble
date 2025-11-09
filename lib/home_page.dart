import 'package:bubble_troble/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double position = 0;

  void moveLeft() {
    if (position == -1) {
      return;
    }
    setState(() {
      position -= 0.15;
    });
  }

  void moveRight() {
    if (position == 1) {
      return;
    }
    setState(() {
      position += 0.15;
    });
  }

  void shoot() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.pink.withValues(alpha: 0.4),
                alignment: Alignment(position, 1),
                child: Container(height: 100, width: 50, color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        icon: CupertinoIcons.arrow_left,
                        ontap: () {
                          moveLeft();
                        },
                      ),
                      MyButton(
                        icon: CupertinoIcons.arrow_up,
                        ontap: () {
                          shoot();
                        },
                      ),
                      MyButton(
                        icon: CupertinoIcons.arrow_right,
                        ontap: () {
                          moveRight();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*

            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.pink.withOpacity(0.4),
                child: Container(alignment: Alignment.center, height: 50, width: 50, color: Colors.black),
              ),
            ),

            Expanded(
  flex: 3,
  child: Container(
    width: double.infinity,
    color: Colors.pink.withOpacity(0.4),
    alignment: Alignment.center, // center the black box
    child: Container(
      height: 50,
      width: 50,
      color: Colors.black,
    ),
  ),
),


*/



 