import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import './desktop_teampage.dart';

class Teampage extends StatefulWidget {
  const Teampage({Key? key}) : super(key: key);

  @override
  State<Teampage> createState() => _TeampageState();
}

class _TeampageState extends State<Teampage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return const DesktopTeampage();
        } else {
          return const DesktopTeampage();
        }
      },
    );
  }
}
