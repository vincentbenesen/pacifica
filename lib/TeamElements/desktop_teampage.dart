import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../NavbarElements/navbar.dart';
import '../FooterElements/footer.dart';

class DesktopTeampage extends StatefulWidget {
  const DesktopTeampage({Key? key}) : super(key: key);

  @override
  State<DesktopTeampage> createState() => _DesktopTeampageState();
}

class _DesktopTeampageState extends State<DesktopTeampage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navbar(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: screenWidth > 940
                  ? MediaQuery.of(context).size.height + 150
                  : MediaQuery.of(context).size.height + 700,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Divider(
                      color: Colors.black,
                      thickness: 5,
                    ),
                  ),
                  Text(
                    "MEET THE TEAM",
                    style: GoogleFonts.abel(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  screenWidth > 1370
                      ? Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 260,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/team/robin.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Positioned(
                                          left: 220,
                                          top: 220,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Colors.blue,
                                              child: Container(
                                                child: const Icon(
                                                  Icons.folder_copy_outlined,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 180,
                                          left: 10,
                                          child: Text(
                                            "Robin",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 210,
                                          left: 10,
                                          child: Text(
                                            "Conners",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 280,
                                          left: 10,
                                          child: Text(
                                            "Managing Partner",
                                            style: GoogleFonts.abel(
                                                color: Colors.blue,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 310,
                                          left: 10,
                                          child: Container(
                                            width: 250,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                              style: GoogleFonts.abel(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 260,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/team/marcos.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Positioned(
                                          left: 220,
                                          top: 220,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 243, 110, 33),
                                              child: Container(
                                                child: const Icon(
                                                  Icons.account_box,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 180,
                                          left: 10,
                                          child: Text(
                                            "Marcos",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 210,
                                          left: 10,
                                          child: Text(
                                            "Casillas",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 280,
                                          left: 10,
                                          child: Text(
                                            "Managing Director",
                                            style: GoogleFonts.abel(
                                                color: const Color.fromARGB(
                                                    255, 243, 110, 33),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 310,
                                          left: 10,
                                          child: Container(
                                            width: 250,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                              style: GoogleFonts.abel(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 260,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/team/michel.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Positioned(
                                          left: 220,
                                          top: 220,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 65, 33, 243),
                                              child: Container(
                                                child: const Icon(
                                                  Icons.photo,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 180,
                                          left: 10,
                                          child: Text(
                                            "Michel",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 210,
                                          left: 10,
                                          child: Text(
                                            "Panzini",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 280,
                                          left: 10,
                                          child: Text(
                                            "Managing Director Development",
                                            style: GoogleFonts.abel(
                                                color: const Color.fromARGB(
                                                    255, 65, 33, 243),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 310,
                                          left: 10,
                                          child: Container(
                                            width: 250,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                              style: GoogleFonts.abel(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 260,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/team/brahm.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Positioned(
                                          left: 220,
                                          top: 220,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 0, 185, 218),
                                              child: Container(
                                                child: const Icon(
                                                  Icons.business_center,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 180,
                                          left: 10,
                                          child: Text(
                                            "Brahm",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 210,
                                          left: 10,
                                          child: Text(
                                            "Gelfand",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 280,
                                          left: 10,
                                          child: Text(
                                            "Managing Director Legal \nAffairs & Governance",
                                            style: GoogleFonts.abel(
                                                color: const Color.fromARGB(
                                                    255, 0, 185, 218),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 335,
                                          left: 10,
                                          child: Container(
                                            width: 250,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                              style: GoogleFonts.abel(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 260,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/team/christina.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Positioned(
                                          left: 220,
                                          top: 220,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 206, 0, 127),
                                              child: Container(
                                                child: const Icon(
                                                  Icons.attach_money,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 190,
                                          left: 40,
                                          child: Text(
                                            "Christina",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 220,
                                          left: 40,
                                          child: Text(
                                            "Baxter",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 280,
                                          left: 10,
                                          child: Text(
                                            "Senior Financial Analyst",
                                            style: GoogleFonts.abel(
                                                color: const Color.fromARGB(
                                                    255, 206, 0, 127),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 310,
                                          left: 10,
                                          child: Container(
                                            width: 250,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                              style: GoogleFonts.abel(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 260,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/team/jean.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Positioned(
                                          left: 220,
                                          top: 220,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 0, 88, 160),
                                              child: Container(
                                                child: const Icon(
                                                  Icons.devices_other,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 180,
                                          left: 10,
                                          child: Text(
                                            "Pierre",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 210,
                                          left: 10,
                                          child: Text(
                                            "Jean",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 280,
                                          left: 10,
                                          child: Text(
                                            "Chief Technology Officer",
                                            style: GoogleFonts.abel(
                                                color: const Color.fromARGB(
                                                    255, 0, 88, 160),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Positioned(
                                          top: 335,
                                          left: 10,
                                          child: Container(
                                            width: 250,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                              style: GoogleFonts.abel(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : screenWidth > 939
                          ? Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/robin.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor: Colors.blue,
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons
                                                          .folder_copy_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Robin",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Conners",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Partner",
                                                style: GoogleFonts.abel(
                                                    color: Colors.blue,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/marcos.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 243, 110, 33),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.account_box,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Marcos",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Casillas",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Director",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 243, 110, 33),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/michel.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 65, 33, 243),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.photo,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Michel",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Panzini",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Director Development",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 65, 33, 243),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 50),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/brahm.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 0, 185, 218),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.business_center,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Brahm",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Gelfand",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Director Legal \nAffairs & Governance",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 0, 185, 218),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 335,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/christina.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 206, 0, 127),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.attach_money,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 190,
                                              left: 40,
                                              child: Text(
                                                "Christina",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 220,
                                              left: 40,
                                              child: Text(
                                                "Baxter",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Senior Financial Analyst",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 206, 0, 127),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/jean.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 0, 88, 160),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.devices_other,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Pierre",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Jean",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Chief Technology Officer",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 0, 88, 160),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 335,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/robin.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor: Colors.blue,
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons
                                                          .folder_copy_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Robin",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Conners",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Partner",
                                                style: GoogleFonts.abel(
                                                    color: Colors.blue,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/marcos.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 243, 110, 33),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.account_box,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Marcos",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Casillas",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Director",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 243, 110, 33),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 50),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/michel.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 65, 33, 243),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.photo,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Michel",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Panzini",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Director Development",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 65, 33, 243),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/brahm.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 0, 185, 218),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.business_center,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Brahm",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Gelfand",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Managing Director Legal \nAffairs & Governance",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 0, 185, 218),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 335,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 50),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/christina.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 206, 0, 127),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.attach_money,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 190,
                                              left: 40,
                                              child: Text(
                                                "Christina",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 220,
                                              left: 40,
                                              child: Text(
                                                "Baxter",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Senior Financial Analyst",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 206, 0, 127),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 310,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 450,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 25.0,
                                            )
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 500,
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/team/jean.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              left: 220,
                                              top: 220,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 0, 88, 160),
                                                  child: Container(
                                                    child: const Icon(
                                                      Icons.devices_other,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 180,
                                              left: 10,
                                              child: Text(
                                                "Pierre",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 210,
                                              left: 10,
                                              child: Text(
                                                "Jean",
                                                style: GoogleFonts.abel(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 280,
                                              left: 10,
                                              child: Text(
                                                "Chief Technology Officer",
                                                style: GoogleFonts.abel(
                                                    color: const Color.fromARGB(
                                                        255, 0, 88, 160),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Positioned(
                                              top: 335,
                                              left: 10,
                                              child: Container(
                                                width: 250,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  ",
                                                  style: GoogleFonts.abel(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
