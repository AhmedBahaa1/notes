import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_botton_sheet.dart';
import 'package:notes/widgets/notes_app_body.dart';

class NotesNiew extends StatelessWidget {
  const NotesNiew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteFromBottonSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NotesAppBody(),
    );
  }
}
