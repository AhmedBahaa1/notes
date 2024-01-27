import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_card_item.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CardItem(),
        );
      },
    );
  }
}