import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import './desktop_infrastructure.dart';

class Infrastructure extends StatefulWidget {
  const Infrastructure({Key? key}) : super(key: key);

  @override
  State<Infrastructure> createState() => _InfrastructureState();
}

class _InfrastructureState extends State<Infrastructure> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 700) {
        return DesktopInfrastructure();
      } else {
        return DesktopInfrastructure();
      }
    }));
  }
}
