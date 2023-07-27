import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_textform.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hint: 'subject', maxLines: 5),
        ],
      ),
    );
  }
}
