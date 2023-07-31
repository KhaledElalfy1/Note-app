import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_textform.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note, required this.icon});
  final NoteModel note;
  final IconData icon;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitile ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fethcAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit',
            icon: widget.icon,
          ),
          CustomTextField(
            onChanged: (p0) {
              title = p0;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (p0) {
              subTitile = p0;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
