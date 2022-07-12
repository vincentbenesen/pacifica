import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../HomepageElements/homepage.dart';

class MobileNav extends StatefulWidget {
  const MobileNav({Key? key}) : super(key: key);
  static String activePage = "Home";

  @override
  State<MobileNav> createState() => _MobileNavState();
}

class _MobileNavState extends State<MobileNav> {
  bool isHoverHome = false;
  bool isHoverInfrastructure = false;
  bool isHoverTeam = false;
  bool isHoverContact = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      color: Colors.grey,
      child: Column(
        children: [
          const Text(
            "360Pacifica",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (MobileNav.activePage != "Home") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      MobileNav.activePage = 'Home';
                    }
                  },
                  onHover: (hovered) {
                    setState(() {
                      if (MobileNav.activePage != "Home") {
                        isHoverHome = hovered;
                      }
                    });
                  },
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      fontSize: 15,
                      color: MobileNav.activePage == "Home" || isHoverHome
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    if (MobileNav.activePage != "Infrastructure") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      MobileNav.activePage = 'Infrastructure';
                    }
                  },
                  onHover: (hovered) {
                    setState(() {
                      if (MobileNav.activePage != "Infrastructure") {
                        isHoverInfrastructure = hovered;
                      }
                    });
                  },
                  child: Text(
                    "INFRASTRUCTURE",
                    style: TextStyle(
                      fontSize: 15,
                      color: MobileNav.activePage == "Infrastructure" ||
                              isHoverInfrastructure
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    if (MobileNav.activePage != "Team") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      MobileNav.activePage = 'Team';
                    }
                  },
                  onHover: (hovered) {
                    setState(() {
                      if (MobileNav.activePage != "Team") {
                        isHoverTeam = hovered;
                      }
                    });
                  },
                  child: Text(
                    "MEET THE TEAM",
                    style: TextStyle(
                      fontSize: 15,
                      color: MobileNav.activePage == "Team" || isHoverTeam
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(width: 20),
                InkWell(
                  onTap: (() {
                    if (MobileNav.activePage != "Contact") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Homepage()));
                      MobileNav.activePage = 'Contact';
                    }
                  }),
                  onHover: (hovered) {
                    setState(() {
                      if (MobileNav.activePage != "Contact") {
                        isHoverContact = hovered;
                      }
                    });
                  },
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(
                      fontSize: 15,
                      color: MobileNav.activePage == "Contact" || isHoverContact
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
