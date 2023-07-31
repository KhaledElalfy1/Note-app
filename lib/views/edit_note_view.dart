import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note.dart';

import '../models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: EditNoteViewBody(note: note,icon: Icons.check),
      ),
    );
  }
}
