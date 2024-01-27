import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteFromBottonSheet extends StatelessWidget {
  const AddNoteFromBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        CustomTextField(),
      ],
    );
  }
}
