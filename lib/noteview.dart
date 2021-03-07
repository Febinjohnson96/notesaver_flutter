import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  final List<String> notes;
  NoteView(this.notes);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: notes
          .map((element) => Card(
                child: Column(
                  children: [
                    Text(element),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
