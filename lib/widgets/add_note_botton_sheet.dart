import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_botton.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteFromBottonSheet extends StatelessWidget {
  const AddNoteFromBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomBotton(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
