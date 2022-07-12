import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import './desktop_contact.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 700) {
        return const DesktopContact();
      } else {
        return const DesktopContact();
      }
    }));
  }
}
