import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../NavbarElements/navbar.dart';
import '../FooterElements/footer.dart';

class DesktopInfrastructure extends StatefulWidget {
  const DesktopInfrastructure({Key? key}) : super(key: key);

  @override
  State<DesktopInfrastructure> createState() => _DesktopInfrastructureState();
}

class _DesktopInfrastructureState extends State<DesktopInfrastructure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Navbar(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/montreal.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("INFRASTRUCTURE",
                      style:
                          GoogleFonts.abel(fontSize: 60, color: Colors.white)),
                  Container(
                    width: 700,
                    child: Text(
                        "360 Pacifica’s Infrastructure platforms assure well planned, well executed, technologically advanced project planning & development. 360 AMI’s Infrastructure Operational and Asset Management capabilities provide for enhanced performance of Infrastructure investments. 360’s expertise brings optimized financial market structures to complex Infrastructure financings.",
                        style: GoogleFonts.abel(
                            fontSize: 20, color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    ));
  }
}
