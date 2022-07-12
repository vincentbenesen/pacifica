import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../HomepageElements/homepage.dart';
import '../ContactElements/contact.dart';

class DesktopNav extends StatefulWidget {
  const DesktopNav({Key? key}) : super(key: key);
  static String activePage = "Home";
  @override
  State<DesktopNav> createState() => _DesktopNavState();
}

class _DesktopNavState extends State<DesktopNav> {
  bool isHoverHome = false;
  bool isHoverInfrastructure = false;
  bool isHoverTeam = false;
  bool isHoverContact = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "360Pacifica",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    if (DesktopNav.activePage != "Home") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      DesktopNav.activePage = 'Home';
                    }
                  },
                  onHover: (hovered) {
                    setState(() {
                      if (DesktopNav.activePage != "Home")
                        isHoverHome = hovered;
                    });
                  },
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      fontSize: 15,
                      color: DesktopNav.activePage == "Home" || isHoverHome
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (DesktopNav.activePage != "Infrastructure") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Homepage()));
                        DesktopNav.activePage = 'Infrastructure';
                      }
                    });
                  },
                  onHover: (hovered) {
                    setState(() {
                      isHoverInfrastructure = hovered;
                    });
                  },
                  child: Text(
                    "INFRASTRUCTURE",
                    style: TextStyle(
                      fontSize: 15,
                      color: DesktopNav.activePage == "Infrastructure" ||
                              isHoverInfrastructure
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (DesktopNav.activePage != "Team") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Homepage()));
                        DesktopNav.activePage = 'Team';
                      }
                    });
                  },
                  onHover: (hovered) {
                    setState(() {
                      isHoverTeam = hovered;
                    });
                  },
                  child: Text(
                    "MEET THE TEAM",
                    style: TextStyle(
                      fontSize: 15,
                      color: DesktopNav.activePage == "Team" || isHoverTeam
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (DesktopNav.activePage != "Contact") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Contact()));
                        DesktopNav.activePage = 'Contact';
                      }
                    });
                  },
                  onHover: (hovered) {
                    setState(() {
                      if (DesktopNav.activePage != "Contact") {
                        isHoverContact = hovered;
                      }
                    });
                  },
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(
                      fontSize: 15,
                      color:
                          DesktopNav.activePage == "Contact" || isHoverContact
                              ? Colors.black
                              : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
