import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCD7B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                "make your career with tharwhat",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                size: 26,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Text(
              '21may 2023',
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
