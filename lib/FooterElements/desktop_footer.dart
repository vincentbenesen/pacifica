import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomepageElements/homepage.dart';
import '../ContactElements/contact.dart';

class DesktopFooter extends StatefulWidget {
  const DesktopFooter({Key? key}) : super(key: key);
  static String activePage = "Home";

  @override
  State<DesktopFooter> createState() => _DesktopFooterState();
}

class _DesktopFooterState extends State<DesktopFooter> {
  bool isHoverHome = false;
  bool isHoverInfrastructure = false;
  bool isHoverTeam = false;
  bool isHoverContact = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      color: Color.fromARGB(255, 82, 79, 79),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    width: 230,
                    child: Stack(
                      children: [
                        const SizedBox(
                          height: 55,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("360Pacifica",
                                style: GoogleFonts.abel(
                                    fontSize: 40, color: Colors.white)),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                                "MONTREAL|TORONTO|LONDON|BANGALORE|SINGAPORE",
                                style: GoogleFonts.abel(
                                  fontSize: 11,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      "1130 rue Sherbrooke Ouest, Suite 700 Montréal (Québec) H3A 2M8 CANADA",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          Text(
                            "877-360-PACI",
                            style: GoogleFonts.abel(
                                color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          Text(
                            "info@360pacifica.com",
                            style: GoogleFonts.abel(
                                color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 45),
                  Container(
                    width: 150,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.facebook_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        Image.asset(
                          "assets/icons/instagram.png",
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                        Image.asset(
                          "assets/icons/twitter.png",
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          const SizedBox(
            width: 1800,
            child: Divider(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  if (DesktopFooter.activePage != "Home") {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Homepage()));
                    DesktopFooter.activePage = 'Home';
                  }
                },
                onHover: (hovered) {
                  setState(() {
                    isHoverHome = hovered;
                  });
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 2))),
                  child: Text(
                    "HOME",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      color: isHoverHome ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    if (DesktopFooter.activePage != "Infrastructure") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      DesktopFooter.activePage = 'Infrastructure';
                    }
                  });
                },
                onHover: (hovered) {
                  setState(() {
                    isHoverInfrastructure = hovered;
                  });
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 2))),
                  child: Text(
                    "INFRASTRUCTURE",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      color:
                          isHoverInfrastructure ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    if (DesktopFooter.activePage != "Team") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      DesktopFooter.activePage = 'Team';
                    }
                  });
                },
                onHover: (hovered) {
                  setState(() {
                    isHoverTeam = hovered;
                  });
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 2))),
                  child: Text(
                    "MEET THE TEAM",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      color: isHoverTeam ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    if (DesktopFooter.activePage != "Contact") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Contact()));
                      DesktopFooter.activePage = 'Contact';
                    }
                  });
                },
                onHover: (hovered) {
                  setState(() {
                    isHoverContact = hovered;
                  });
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 2))),
                  child: Text(
                    "CONTACT US",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      color: isHoverContact ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
