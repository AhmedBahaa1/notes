import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_card_item.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(),
          SizedBox(
            height: 16,
          ),
          CardItem(),
        ],
      ),
    );
  }
}
