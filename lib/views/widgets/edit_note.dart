import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_textform.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit',
            icon: Icons.check,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
