import 'package:flutter/material.dart';
import './noteview.dart';

class NoteManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NoteManagerState();
  }
}

class _NoteManagerState extends State<NoteManager> {
  final myController = TextEditingController();
  List<String> _notes = [];

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: myController,
            decoration: InputDecoration(
              labelText: 'Enter Notes',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _notes.add(myController.text);
            });
          },
          child: Text('Add Notes'),
        ),
        NoteView(_notes)
      ],
    );
  }
}
