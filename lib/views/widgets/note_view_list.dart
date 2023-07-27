import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_list_view.dart';


class NoteViewList extends StatelessWidget {
  const NoteViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              CustomAppBar(),
              Expanded(child: CustomListView()),
            ],
          ),
        ),
      ),
    );
  }
}

