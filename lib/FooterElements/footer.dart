import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import './desktop_footer.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 700) {
        return const DesktopFooter();
      } else {
        return const DesktopFooter();
      }
    }));
  }
}
