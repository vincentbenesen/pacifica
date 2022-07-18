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
                      style:
                          GoogleFonts.abel(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Wind turbine section
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/windturbine.jpeg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 300, horizontal: 300),
              color: Colors.black.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GREEN ENERGY & GREEN POWER TECHNOLOGIES",
                    style: GoogleFonts.abel(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Solar, Wind, Green Refineries, Green Coal, Power Grid Design and Implementation",
                    style: GoogleFonts.abel(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Water dam
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/waterdam.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "WATER",
                    style: GoogleFonts.abel(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Water Purification, Water & Sewer Treatment, Potable Water, Desalination, Distribution Planning",
                    style: GoogleFonts.abel(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Transportation
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/road.jpeg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "TRANSPORTATION",
                    style: GoogleFonts.abel(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Airports, Light Rail Transit, Roads and Urban Transit, Transportation Logisitics, Green Transport Solutions",
                    style: GoogleFonts.abel(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/rem.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LOGISTIC",
                    style: GoogleFonts.abel(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "	Infrastructure Logistics Evaluation and Implementation Planning & Execution Strategies, Real Estate Infrastructure",
                    style: GoogleFonts.abel(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/villa.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "COMMUNITY PLANNING & OPERATIONS",
                    style: GoogleFonts.abel(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Community/Village Management & Operations Legal, Tax Planning & Audit/ Accounting, Feasibility and Evaluations, Infrastructure,  Strategic Underwriting  ",
                    style: GoogleFonts.abel(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/village.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 800,
                    child: Text(
                        textAlign: TextAlign.center,
                        "COMMUNITY & CITY MASTER PLANNING, DEVELOPMENT AND INFRASTRUCTURE SOLUTIONS",
                        style: GoogleFonts.abel(
                            fontSize: 40, color: Colors.white)),
                  ),
                  Container(
                    width: 800,
                    child: Text(
                      "360 Pacifica’s Community Master Planners are amongst the very best in the world today. From ‘Green’ sustainable development technologies to state of the art energy, water and transportation infrastructure, 360’s integrated capabilities are unmatched.",
                      style:
                          GoogleFonts.abel(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 800,
                    child: Text(
                      "360 Pacifica’s Community Master Planners are amongst the very best in the world today. From ‘Green’ sustainable development technologies to state of the art energy, water and transportation infrastructure, 360’s integrated capabilities are unmatched.",
                      style:
                          GoogleFonts.abel(fontSize: 20, color: Colors.white),
                    ),
                  ),
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
