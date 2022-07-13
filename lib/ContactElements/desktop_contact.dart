import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

import '../NavbarElements/navbar.dart';
import '../FooterElements/footer.dart';

class DesktopContact extends StatefulWidget {
  const DesktopContact({Key? key}) : super(key: key);

  @override
  State<DesktopContact> createState() => _DesktopContactState();
}

class _DesktopContactState extends State<DesktopContact> {
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _company;
  late String _phoneNumber;
  late String _projectDescription;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // These nodes and keys are used to validate the field values when the user is done focusing on the field
  late FocusNode firstNameNode;
  late FocusNode lastNameNode;
  late FocusNode emailNode;
  late FocusNode companyNode;
  late FocusNode phoneNode;

  final firstNameFieldKey = GlobalKey<FormFieldState>();
  final lastNameFieldKey = GlobalKey<FormFieldState>();
  final emailFieldKey = GlobalKey<FormFieldState>();
  final companyFieldKey = GlobalKey<FormFieldState>();
  final phoneFieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    firstNameNode = FocusNode();
    lastNameNode = FocusNode();
    emailNode = FocusNode();
    companyNode = FocusNode();
    phoneNode = FocusNode();

    firstNameNode.addListener(() {
      if (!firstNameNode.hasFocus) {
        firstNameFieldKey.currentState?.validate();
      }
    });
    lastNameNode.addListener(() {
      if (!lastNameNode.hasFocus) {
        lastNameFieldKey.currentState?.validate();
      }
    });
    emailNode.addListener(() {
      if (!emailNode.hasFocus) {
        emailFieldKey.currentState?.validate();
      }
    });
    companyNode.addListener(() {
      if (!companyNode.hasFocus) {
        companyFieldKey.currentState?.validate();
      }
    });
    phoneNode.addListener(() {
      if (!phoneNode.hasFocus) {
        phoneFieldKey.currentState?.validate();
      }
    });
  }

  Widget _buildFirstName() {
    return TextFormField(
      key: firstNameFieldKey,
      focusNode: firstNameNode,
      decoration: const InputDecoration(
        labelText: "FIRST NAME",
        labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        hintText: "Vincent",
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(fontSize: 20),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      style: const TextStyle(fontSize: 25, color: Colors.white),
      validator: (String? value) {
        if (value.toString().isEmpty) {
          return "This field is required";
        }
        return null;
      },
    );
  }

  Widget _buildLastName() {
    return TextFormField(
      key: lastNameFieldKey,
      focusNode: lastNameNode,
      decoration: const InputDecoration(
        labelText: "LAST NAME",
        labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        hintText: "Benesen",
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(fontSize: 20),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      style: TextStyle(fontSize: 25, color: Colors.white),
      validator: (String? value) {
        if (value.toString().isEmpty) {
          return "This field is required";
        }
        return null;
      },
    );
  }

  Widget _buildEmail() {
    bool isValidEmail = true;
    return TextFormField(
      key: emailFieldKey,
      focusNode: emailNode,
      decoration: const InputDecoration(
        labelText: "EMAIL ADDRESS",
        labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        hintText: "email@domain.com",
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(fontSize: 20),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      style: TextStyle(fontSize: 25, color: Colors.white),
      validator: (String? value) {
        if (value.toString().isEmpty) {
          return "This field is required";
        }

        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value.toString())) {
          return "Please enter a valid email";
        }
        return null;
      },
    );
  }

  Widget _buildCompany() {
    return TextFormField(
      key: companyFieldKey,
      focusNode: companyNode,
      decoration: const InputDecoration(
        labelText: "COMPANY",
        labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        hintText: "360Pacifica",
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(fontSize: 20),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      style: TextStyle(fontSize: 25, color: Colors.white),
      validator: (String? value) {
        if (value.toString().isEmpty) {
          return "This field is required";
        }
        return null;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      key: phoneFieldKey,
      focusNode: phoneNode,
      decoration: const InputDecoration(
        labelText: "PHONE NUMBER",
        labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        hintText: "0123456789",
        errorStyle: TextStyle(fontSize: 20),
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      style: TextStyle(fontSize: 25, color: Colors.white),
      validator: (String? value) {
        if (value.toString().isEmpty) {
          return "This field is required";
        }
        if (!RegExp(
                r"^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$")
            .hasMatch(value.toString())) {
          return "Please enter a valid phone number";
        }
        return null;
      },
    );
  }

  Widget _buildProjectDescription() {
    return TextFormField(
      decoration: const InputDecoration(
        labelStyle: TextStyle(fontSize: 25, color: Colors.white),
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      maxLines: 10,
      style: TextStyle(fontSize: 25, color: Colors.white),
      validator: (String? value) {
        if (value.toString().isEmpty) {
          return "This field is required";
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Hive.openBox('users'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return (Text(snapshot.error.toString()));
            } else {
              return Scaffold(
                body: Container(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Navbar(),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/oldport.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 1850,
                                    height:
                                        MediaQuery.of(context).size.height - 30,
                                    color: Colors.black.withOpacity(0.7),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 50, horizontal: 50),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(child: _buildFirstName()),
                                            Expanded(child: _buildLastName()),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Expanded(child: _buildEmail()),
                                            Expanded(
                                                child: _buildPhoneNumber()),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Expanded(child: _buildCompany()),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        const Text(
                                          "PLEASE TELL US ABOUT THE PROJECT",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(height: 20),
                                        _buildProjectDescription(),
                                        const SizedBox(height: 30),
                                        Container(
                                          height: 40,
                                          width: 100,
                                          child: RaisedButton(
                                              onPressed: () {},
                                              hoverColor: Colors.grey,
                                              child: Text(
                                                "SUBMIT",
                                                style: GoogleFonts.abel(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                          const Footer(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          }
          return Scaffold();
        });
  }
}
