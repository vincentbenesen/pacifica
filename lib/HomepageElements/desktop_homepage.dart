import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bulleted_list/bulleted_list.dart';

import '../NavbarElements/navbar.dart';
import '../FooterElements/footer.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({Key? key}) : super(key: key);

  @override
  State<DesktopHomepage> createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> {
  late ScrollController _controller;
  double pixels = 0.0;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(pixels);
      });
    });
    super.initState();
  }

  // When the user hovers on the the numbers. These bool values are used to change the color of the text
  bool isHoverOne = false;
  bool isHoverTwo = false;
  bool isHoverThree = false;
  bool isHoverFour = false;

  // The variables below are used for animation (To change the opacity and animation of each texts)
  // These variables are used used for animating 360Vision section
  double newOpacity1 = 0.0;
  double newPos1 = 500;

  // These variables are used for animating 360 Dynamic Process
  double newOpacity2 = 0.0;
  double originateNewPos = 50;
  double underwriteNewPos = 140;
  double economicsNewPos = 250;
  double riskNewPos = 320;
  double closureNewPos = 460;

  @override
  Widget build(BuildContext context) {
    final currentW = MediaQuery.of(context).size.width;
    final currentH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              const Navbar(),
              // The first page after the navbar
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(vertical: 140),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/humaniti.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 800,
                      height: 600,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      color: Colors.black.withOpacity(0.2),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "360PACIFICA",
                              style: GoogleFonts.abel(
                                  color: Colors.white, fontSize: 90),
                            ),
                            const SizedBox(height: 90),
                            Container(
                              height: 220,
                              width: 800,
                              child: Text(
                                textAlign: TextAlign.center,
                                r"360 Pacifica  is a global Real Estate and Infrastructure company with unique capabilities in the planning, development, and operation  of large-scale projects. Our execution, structuring and risk management expertise enables competitive financing of projects. 360 provides Institutional  Asset Management services with over $15 Billion of project management experience in Asia, The Americas and  Europe.",
                                style: GoogleFonts.abel(
                                    color: Colors.white, fontSize: 25),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              // The page with number one
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/museum.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "01",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 114, 89, 5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Vision, Optimization, Strategic Capital, and Realization",
                              style: GoogleFonts.abel(
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 700,
                              child: Text(
                                r"We are ‘value investors’ focused on opportunistic real estate and infrastructure assets. We have the vision, execution capabilities and operating skills required to optimize targeted assets. We employ institutional quality research and analytics in underwriting potential transactions leading to optimized financings. Our integrated business model delivers the expertise and resources to drive value enhancement throughout the asset lifecycle.",
                                style: GoogleFonts.abel(
                                    color: Color.fromARGB(255, 66, 65, 65),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // The page with number two
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Color.fromARGB(255, 58, 57, 57),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "360 DYNAMIC PROCESS",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Global Financial Solutions",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: 500,
                                child: Text(
                                  "Our unique capabilities in tailoring structured financings and hybrid financial platforms to the specific requirements of a project optimizes asset values while mitigating inherent risk to stakeholders.",
                                  style: GoogleFonts.abel(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: 500,
                                child: Text(
                                  r"Working with our International Capital Partners we have the resources to specifically address individual Client/Partner requirements with efficient structured solutions that meet overall Lender – Investor objectives. 360 Asset Management assures that asset values are protected and enhanced long-term.",
                                  style: GoogleFonts.abel(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/neuf.jpg"),
                              fit: BoxFit.fill)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "02 ",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // The page that talks about 360Vision
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/vision.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: 800,
                  height: 400,
                  color: Colors.black.withOpacity(.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "360 Vision",
                        style:
                            GoogleFonts.abel(color: Colors.white, fontSize: 60),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 700,
                        child: Text(
                          textAlign: TextAlign.center,
                          "A wholistic vision in the creation of sustainable Capital Asset strategies leveraging market proven Financial Solutions, tailor-made Development, Strategic Operations, & Asset Management solutions focused on long-term value creation",
                          style: GoogleFonts.abel(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Number one: Real Estate Optimization Services Platform
                      AnimatedOpacity(
                        opacity: pixels >= 2100 ? 1.0 : newOpacity1,
                        duration: const Duration(seconds: 1),
                        onEnd: () {
                          setState(() {
                            newOpacity1 = 1.0;
                          });
                        },
                        child: AnimatedPadding(
                          padding: EdgeInsets.only(
                              left: pixels >= 2100 ? 0.0 : newPos1),
                          duration: const Duration(seconds: 1),
                          onEnd: () {
                            setState(() {
                              newPos1 = 0.0;
                            });
                          },
                          child: Container(
                            width: 700,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (hovered) {
                                      setState(() {
                                        isHoverOne = hovered;
                                      });
                                    },
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.abel(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: isHoverOne
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Real Estate Optimization Services Platform",
                                        style: GoogleFonts.abel(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        width: 500,
                                        child: Text(
                                          "A vertically integrated professional services platform providing project Feasibility Analytics, Strategic Master Planning, and optimal Project Market Positioning Strategies",
                                          style: GoogleFonts.abel(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Number two: Operations & Execution Resources
                      AnimatedOpacity(
                        opacity: pixels >= 2100 ? 1.0 : newOpacity1,
                        duration: const Duration(seconds: 1),
                        child: AnimatedPadding(
                          padding: EdgeInsets.only(
                              right: pixels >= 2100 ? 0.0 : newPos1),
                          duration: const Duration(seconds: 1),
                          child: Container(
                            width: 700,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (hovered) {
                                      setState(() {
                                        isHoverTwo = hovered;
                                      });
                                    },
                                    child: Text(
                                      "2",
                                      style: GoogleFonts.abel(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: isHoverTwo
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Operations & Execution Resources",
                                        style: GoogleFonts.abel(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        width: 500,
                                        child: Text(
                                          "A seasoned Management Team with core expertise in the development, operation and execution of complex mixed use real estate and infrastructure projects globally",
                                          style: GoogleFonts.abel(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Number three: Global Asset Management
                      AnimatedOpacity(
                        opacity: pixels >= 2100 ? 1.0 : newOpacity1,
                        duration: const Duration(seconds: 1),
                        child: AnimatedPadding(
                          padding: EdgeInsets.only(
                              left: pixels >= 2100 ? 0.0 : newPos1),
                          duration: const Duration(seconds: 1),
                          child: Container(
                            width: 700,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (hovered) {
                                      setState(() {
                                        isHoverThree = hovered;
                                      });
                                    },
                                    child: Text(
                                      "3",
                                      style: GoogleFonts.abel(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: isHoverThree
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Global Asset Management",
                                        style: GoogleFonts.abel(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        width: 500,
                                        child: Text(
                                          "Active Asset Management resources focused on the optimization and protection of Real Estate, Infrastructure and Operational Asset Values",
                                          style: GoogleFonts.abel(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Number four: Global Financial Resources
                      AnimatedOpacity(
                        opacity: pixels >= 2100 ? 1.0 : newOpacity1,
                        duration: const Duration(seconds: 1),
                        child: AnimatedPadding(
                          padding: EdgeInsets.only(
                              right: pixels >= 2100 ? 0.0 : newPos1),
                          duration: const Duration(seconds: 1),
                          child: Container(
                            width: 700,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (hovered) {
                                      setState(() {
                                        isHoverFour = hovered;
                                      });
                                    },
                                    child: Text(
                                      "4",
                                      style: GoogleFonts.abel(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: isHoverFour
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Global Financial Resources",
                                        style: GoogleFonts.abel(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        width: 500,
                                        child: Text(
                                          "Financial solutions tailored to individual project requirements; Acquisitions, M&A, Distressed Assets Project Re-structuring, Project Optimization and Strategic Exits",
                                          style: GoogleFonts.abel(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // The page that talks about 360 Dynamic Process
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/process.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("360 DYNAMIC PROCESS",
                          style: GoogleFonts.abel(
                              fontSize: 50, color: Colors.white)),
                      const SizedBox(height: 20),
                      Text("An Integrated Financial Services Platform",
                          style: GoogleFonts.abel(
                              fontSize: 40, color: Colors.white)),
                      const SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      const SizedBox(height: 80),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            currentW < 1620
                                ? currentW < 960
                                    ? Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "ORIGINATE",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "360 Pacifica drives Off-Market deal flow from diverse global networks. This qualified deal origination process is a significant market advantage",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(width: 30),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "UNDERWRITE",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Disciplined institutional quality underwriting isolates risk and qualifies underlying transactional economic fundamentals. A value based methodology assures highest & best returns to Stakeholders",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 30),
                                            Column(
                                              children: [
                                                Text(
                                                  "ECONOMICS",
                                                  style: GoogleFonts.abel(
                                                      fontSize: 30,
                                                      color: Colors.white),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    "Bondability, Issuance of Securities for Subscriptions, Formation of Dividend Returns, Integrated Credit Enhancement. Value Model stress testing and transactional formation",
                                                    style: GoogleFonts.abel(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "RISK",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Risk Transfer & Management, Taxation Management, Hedge Risks, Repatriations & Fund Management, supported by ongoing Active Asset Management protects value long-term",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(width: 30),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "CLOSURE",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Implementation of Operational & Management Plans focused on Underlying Asset Performance & Sustainability. Exit Strategy Management and Value Creation Model",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "ORIGINATE",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "360 Pacifica drives Off-Market deal flow from diverse global networks. This qualified deal origination process is a significant market advantage",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(width: 30),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "UNDERWRITE",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Disciplined institutional quality underwriting isolates risk and qualifies underlying transactional economic fundamentals. A value based methodology assures highest & best returns to Stakeholders",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(width: 30),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "ECONOMICS",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Bondability, Issuance of Securities for Subscriptions, Formation of Dividend Returns, Integrated Credit Enhancement. Value Model stress testing and transactional formation",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "RISK",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Risk Transfer & Management, Taxation Management, Hedge Risks, Repatriations & Fund Management, supported by ongoing Active Asset Management protects value long-term",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(width: 30),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "CLOSURE",
                                                      style: GoogleFonts.abel(
                                                          fontSize: 30,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      child: Text(
                                                        "Implementation of Operational & Management Plans focused on Underlying Asset Performance & Sustainability. Exit Strategy Management and Value Creation Model",
                                                        style: GoogleFonts.abel(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                : Container(
                                    child: Row(
                                      children: [
                                        // Originate Section
                                        AnimatedOpacity(
                                          opacity: pixels >= 2900
                                              ? 1.0
                                              : newOpacity2,
                                          duration: const Duration(seconds: 1),
                                          onEnd: () {
                                            setState(() {
                                              newOpacity2 = 1.0;
                                            });
                                          },
                                          child: AnimatedPadding(
                                            padding: EdgeInsets.only(
                                                top: pixels >= 2900
                                                    ? 0.0
                                                    : originateNewPos),
                                            duration:
                                                const Duration(seconds: 1),
                                            onEnd: () {
                                              setState(() {
                                                originateNewPos = 0.0;
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Text(
                                                  "ORIGINATE",
                                                  style: GoogleFonts.abel(
                                                      fontSize: 30,
                                                      color: Colors.white),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    "360 Pacifica drives Off-Market deal flow from diverse global networks. This qualified deal origination process is a significant market advantage",
                                                    style: GoogleFonts.abel(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 30),
                                        // Underwrite Section
                                        AnimatedOpacity(
                                          opacity: pixels >= 2900
                                              ? 1.0
                                              : newOpacity2,
                                          duration: const Duration(seconds: 1),
                                          child: AnimatedPadding(
                                            padding: EdgeInsets.only(
                                                top: pixels >= 2900
                                                    ? 0.0
                                                    : underwriteNewPos),
                                            duration:
                                                const Duration(seconds: 1),
                                            onEnd: () {
                                              setState(() {
                                                underwriteNewPos = 0.0;
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Text(
                                                  "UNDERWRITE",
                                                  style: GoogleFonts.abel(
                                                      fontSize: 30,
                                                      color: Colors.white),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    "Disciplined institutional quality underwriting isolates risk and qualifies underlying transactional economic fundamentals. A value based methodology assures highest & best returns to Stakeholders",
                                                    style: GoogleFonts.abel(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 30),
                                        // Economics Section
                                        AnimatedOpacity(
                                          opacity: pixels >= 2900
                                              ? 1.0
                                              : newOpacity2,
                                          duration: const Duration(seconds: 1),
                                          child: AnimatedPadding(
                                            padding: EdgeInsets.only(
                                                top: pixels >= 2900
                                                    ? 0.0
                                                    : economicsNewPos),
                                            duration:
                                                const Duration(seconds: 1),
                                            onEnd: () {
                                              setState(() {
                                                economicsNewPos = 0.0;
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Text(
                                                  "ECONOMICS",
                                                  style: GoogleFonts.abel(
                                                      fontSize: 30,
                                                      color: Colors.white),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    "Bondability, Issuance of Securities for Subscriptions, Formation of Dividend Returns, Integrated Credit Enhancement. Value Model stress testing and transactional formation",
                                                    style: GoogleFonts.abel(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 30),
                                        // Risk Section
                                        AnimatedOpacity(
                                          opacity: pixels >= 2900
                                              ? 1.0
                                              : newOpacity2,
                                          duration: const Duration(seconds: 1),
                                          child: AnimatedPadding(
                                            padding: EdgeInsets.only(
                                                top: pixels >= 2900
                                                    ? 0.0
                                                    : riskNewPos),
                                            duration:
                                                const Duration(seconds: 1),
                                            onEnd: () {
                                              setState(() {
                                                riskNewPos = 0.0;
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Text(
                                                  "RISK",
                                                  style: GoogleFonts.abel(
                                                      fontSize: 30,
                                                      color: Colors.white),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    "Risk Transfer & Management, Taxation Management, Hedge Risks, Repatriations & Fund Management, supported by ongoing Active Asset Management protects value long-term",
                                                    style: GoogleFonts.abel(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 30),
                                        // Closure Section
                                        AnimatedOpacity(
                                          opacity: pixels >= 2900
                                              ? 1.0
                                              : newOpacity2,
                                          duration: const Duration(seconds: 1),
                                          child: AnimatedPadding(
                                            padding: EdgeInsets.only(
                                                top: pixels >= 2900
                                                    ? 0.0
                                                    : closureNewPos),
                                            duration:
                                                const Duration(seconds: 1),
                                            onEnd: () {
                                              setState(() {
                                                closureNewPos = 0.0;
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Text(
                                                  "CLOSURE",
                                                  style: GoogleFonts.abel(
                                                      fontSize: 30,
                                                      color: Colors.white),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    "Implementation of Operational & Management Plans focused on Underlying Asset Performance & Sustainability. Exit Strategy Management and Value Creation Model",
                                                    style: GoogleFonts.abel(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // The page with Stad olympic
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/stad.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 600,
                      height: 650,
                      color: Colors.white.withOpacity(.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "360Pacifica",
                            style: GoogleFonts.abel(
                                fontSize: 50,
                                color: Color.fromARGB(255, 43, 43, 43)),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 550,
                            child: Text(
                              "360Pacifica offers institutional quality, ‘Active Asset Management’ Services assuring Investors achieve optimal performance with their real estate & infrastructure assets. 360 provides a fully integrated capabilities in deploying meaningful enhancements in technology, advanced infrastructure, target market positioning and enhanced operational performance.",
                              style: GoogleFonts.abel(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 43, 43, 43)),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 550,
                            child: Text(
                              "We deliver market sensitive management solutions across the real estate and infrastructure sectors, this includes, mixed-use, commercial, hospitality, residential, and infrastructure such as energy, water and transportation…",
                              style: GoogleFonts.abel(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 250),
                  ],
                ),
              ),
              // The page with number three
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/undergroundmontreal.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "03",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 114, 89, 5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Infrastructure Platform",
                              style: GoogleFonts.abel(
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 700,
                              child: Text(
                                r"360 Pacifica brings sophisticated and informed expertise in Infrastructure development, operations and finance. An investment strategy built on Sustainable Infrastructure in well structured annuity asset class markets delivers resilient risk-adjusted returns to our institutional investor platforms.",
                                style: GoogleFonts.abel(
                                    color: Color.fromARGB(255, 66, 65, 65),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // The page with number four
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Color.fromARGB(255, 58, 57, 57),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Development",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: 600,
                                child: Text(
                                  "360 Pacifica’s extensive experience in the development of mixed-use real estate provides for the efficiencies, security and risk mitigation that our investors, partners and clients demand. Our expertise assures engagement of the very best Professionals in the planning and execution of projects. From Project Envisioning and Entitlements through to full Operational status, 360 Pacifica is focused on delivering on plan, on schedule and on budget.",
                                  style: GoogleFonts.abel(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/humaniti2.jpg"),
                              fit: BoxFit.fill)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "04 ",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // The page with 360AMI
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lookout.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 250),
                    Container(
                      width: 600,
                      height: 650,
                      color: Colors.black.withOpacity(.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "360AMI",
                            style: GoogleFonts.abel(
                                fontSize: 50, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "COMPETITIVE ADVANTAGE",
                            style: GoogleFonts.abel(
                                fontSize: 30, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 550,
                            child: Text(
                              "Our unique integrated platform means we have the in-house resources to respond to challenges and opportunities in a tactical manner.",
                              style: GoogleFonts.abel(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // The page with 5 things that talks about 360AMI
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/hiking.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "1. DEPTH OF EXPERIENCE",
                                            style: GoogleFonts.abel(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 200,
                                            child: Text(
                                              "Our ability to add value to a project lies in our integrated platform. We deliver highly trained professionals in conjunction with proven process optimization focused on maximization of owner returns and long-term value preservation.",
                                              style: GoogleFonts.abel(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 80),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "2. BOLD THINKING",
                                            style: GoogleFonts.abel(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 200,
                                            child: Text(
                                              "We continually invest in research and product development, we are leaders in process management, professional practices and the innovation of technical practices that have become standard in the business of global real estate and infrastructure asset management. We employ the latest technological advances and strategic solutions in market intelligence, strategic planning, and overall project execution.",
                                              style: GoogleFonts.abel(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 80),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "3. ORGANIZATIONAL STRENGTH",
                                            style: GoogleFonts.abel(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 200,
                                            child: Text(
                                              "Our integrated platform brings broad based expertise across the entire spectrum of Asset Management, this includes project development, planning, underwriting, market positioning, operations, financing and ongoing asset management. The breadth of our experience enables us to develop comprehensive and cross-functional solutions focused on project-specific needs for our clients and stakeholders around the globe.",
                                              style: GoogleFonts.abel(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "4. TRUSTED PARTNERSHIPS",
                                            style: GoogleFonts.abel(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 200,
                                            child: Text(
                                              "360 AMI works with highly qualified professional firms and leading global brands in building 'highest and best use' solutions tailored to project requirements. Our relationships are based upon trust, market proven expertise and successful track records. Our 360's Professional Teams provide targeted solutions providing efficiency and enhanced performance.",
                                              style: GoogleFonts.abel(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 130),
                                      Column(
                                        children: [
                                          Text(
                                            "5. DISCIPLINED PROCESS",
                                            style: GoogleFonts.abel(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 200,
                                            child: Text(
                                              "360 AMI is a knowledge-based enterprise specializing in the strategic positioning of infrastructure and real estate projects in meeting with peak market demand. We are a metrics driven organization with superior skills in the underwriting, planning and optimizing of complex projects.",
                                              style: GoogleFonts.abel(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // The page with number five
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/terrace.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "05",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 114, 89, 5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Operations",
                              style: GoogleFonts.abel(
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                                width: 700,
                                child: const BulletedList(
                                  listItems: [
                                    "Infrastructure Management & Operations",
                                    "Green Energy; Solar & Wind Power",
                                    "Transportation Infrastructure",
                                    "Facilities Management",
                                    "Township/City Management & Operations",
                                    "Specialty Recreational Venues",
                                    "Marketing and Public Relations",
                                    "Legal & Accounting",
                                    "Feasibility and Evaluation",
                                    "Government Relations",
                                    "Environmental Services",
                                    "Project Governance"
                                  ],
                                  style: TextStyle(color: Colors.black),
                                  bulletColor: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // The page with number six
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Color.fromARGB(255, 58, 57, 57),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Luxury Real Estate",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              // SizedBox(height: 15),
                              // Text(
                              //   "Global Financial Solutions",
                              //   style: GoogleFonts.abel(
                              //     color: Colors.white,
                              //     fontSize: 20,
                              //   ),
                              // ),
                              SizedBox(height: 15),
                              Container(
                                width: 600,
                                child: Text(
                                  "360 is a global leader in the Luxury Real Estate sector. Hospitality, Residential and Commercial Retail Luxury Clients demand exceptional value in Real Estate products and services. 360 offers Global experience  in the successful design, development and operation of high end projects. Our partners include: Four Seasons, Ritz Carleton, JW Marriott, Rosewood,  MGM, Fairmont, Christian Dior, Louis Vuitton, Gucci, Rolex and Sotheby’s.",
                                  style: GoogleFonts.abel(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/ritzcarlton.jpg"),
                              fit: BoxFit.fill)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "06 ",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // The page with number seven
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/ssense.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            radius: 100,
                            child: Text(
                              "07",
                              style: GoogleFonts.abel(
                                  fontSize: 100, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 114, 89, 5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Commercial & Retail",
                              style: GoogleFonts.abel(
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 700,
                              child: Text(
                                r"360 Pacifica provides experienced market focused resources within the mixed-used Commercial & Retail Real Estate sectors; From Resort & Recreational, to Urban – City Center based developments, 360’s Strategically deployed Commercial & Experiential Infrastructure capabilities drives tangible long-term real estate value and enhanced financial performance.",
                                style: GoogleFonts.abel(
                                    color: Color.fromARGB(255, 66, 65, 65),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/undergroundmontreal2.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "360Pacifica",
                        style: GoogleFonts.abel(
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "BUILDING FUTURES",
                        style:
                            GoogleFonts.abel(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "360 PACIFICA ENVIRONMENTAL STEWARDSHIP",
                        style:
                            GoogleFonts.abel(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
