import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/contact_card.dart';
import '../widgets/contact_item.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ContactLayout(
        key: key,
      ),
    );
  }
}

class _ContactLayout extends StatelessWidget {
  const _ContactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 24),
        const ContactCard(),
        const SizedBox(height: 24),
        ContactItem(
          item: FlutterI18n.translate(context, 'contact.address'),
          value: FlutterI18n.translate(context, 'contact.addressValue'),
        ),
        ContactItem(
          item: FlutterI18n.translate(context, 'contact.phone'),
          value: FlutterI18n.translate(context, 'contact.phoneValue'),
        ),
        ContactItem(
          item: FlutterI18n.translate(context, 'contact.email'),
          value: FlutterI18n.translate(context, 'contact.emailValue'),
        ),
      ],
    ).px16();
  }
}
