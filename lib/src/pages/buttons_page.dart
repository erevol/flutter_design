import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background(),
          SingleChildScrollView(
            child: Column(
              children: [
                _items(),
                _roundedButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _background() {
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ])),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          child: pinkBox,
          top: -100,
        ),
      ],
    );
  }

  Widget _items() {
    final styleTitle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );
    final styleSubTitle = TextStyle(
      color: Colors.white,
      fontSize: 18.0,
    );
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classified transaction',
              style: styleTitle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Commodo dolor cupidatat ipsum laboris aute amet',
              style: styleSubTitle,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)),
              )),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundedButton(Colors.blue, Icons.label, 'Label'),
          _createRoundedButton(
              Colors.purpleAccent, Icons.hourglass_full, 'Hour'),
        ]),
        TableRow(children: [
          _createRoundedButton(
              Colors.pinkAccent, Icons.fingerprint, 'Fingerprint'),
          _createRoundedButton(Colors.blueGrey, Icons.language, 'Language'),
        ]),
        TableRow(children: [
          _createRoundedButton(Colors.redAccent, Icons.loyalty, 'Loyalty'),
          _createRoundedButton(Colors.green, Icons.lock, 'Lock'),
        ]),
        TableRow(children: [
          _createRoundedButton(Colors.teal, Icons.next_plan, 'Next'),
          _createRoundedButton(Colors.orangeAccent, Icons.group_work, 'Work'),
        ]),
      ],
    );
  }

  Widget _createRoundedButton(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundColor: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
