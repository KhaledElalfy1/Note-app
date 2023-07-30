import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_buttom_sheet.dart';
import 'package:note_app/views/widgets/note_view_list.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              context: context,
              builder: (context) {
                return const AddBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add)),
      body: const NoteViewList(),
    );
  }
}

