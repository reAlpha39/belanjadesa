import 'package:belanjadesa/core/core.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.item, required this.value});

  final String item;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        item.text.bold.size(smallTextTheme.fontSize).make(),
        const SizedBox(height: 4),
        value.text.size(smallTextTheme.fontSize).make(),
        const ContactSpacer(),
        const SizedBox(height: 12),
      ],
    );
  }
}

class ContactSpacer extends StatelessWidget {
  const ContactSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
    ).py8();
  }
}
