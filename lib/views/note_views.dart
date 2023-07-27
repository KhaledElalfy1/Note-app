import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [CustomAppBar()],
          ),
        ),
      ),
    );
  }
}
