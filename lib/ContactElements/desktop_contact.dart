import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../NavbarElements/navbar.dart';
import '../FooterElements/footer.dart';

class DesktopContact extends StatefulWidget {
  const DesktopContact({Key? key}) : super(key: key);

  @override
  State<DesktopContact> createState() => _DesktopContactState();
}

class _DesktopContactState extends State<DesktopContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Navbar(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
