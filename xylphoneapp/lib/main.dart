import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List<Note> getList() {
    List<Note> list = <Note>[];
    list.add(Note(Colors.red, 1));
    list.add(Note(Colors.orange, 2));
    list.add(Note(Colors.yellow, 3));
    list.add(Note(Colors.green, 4));
    list.add(Note(Colors.blue, 5));
    list.add(Note(Colors.indigo, 6));
    list.add(Note(Colors.purple, 7));
    return list;
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  getTextWidgets() {
    return ListView.builder(
        itemCount: getList().length,
        itemBuilder: (context, itemIndex) {
          return TextButton(
              child: Container(
                  width: double.infinity,
                  height: 100,
                  color: getList()[itemIndex].color),
              onPressed: () {
                playSound(getList()[itemIndex].soundNumber);
              });
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Container(
              child: getTextWidgets(),
            ),
          ),
        ),
      ),
    );
  }
}

class Note {
  Color color;
  int soundNumber;
  Note(this.color, this.soundNumber);
}
