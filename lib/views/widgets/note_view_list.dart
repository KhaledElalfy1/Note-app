import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_list_view.dart';

class NoteViewList extends StatefulWidget {
  const NoteViewList({super.key});

  @override
  State<NoteViewList> createState() => _NoteViewListState();
}

class _NoteViewListState extends State<NoteViewList> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fethcAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              CustomAppBar(title: 'Note', icon: Icons.search),
              Expanded(child: CustomListView()),
            ],
          ),
        ),
      ),
    );
  }
}
