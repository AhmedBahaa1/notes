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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
              onSaved: (p0) {
                title = p0;
              },
              hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (p0) {
              subtitle = p0;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          CustomBotton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
