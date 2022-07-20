import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../NavbarElements/navbar.dart';
import '../FooterElements/footer.dart';
import '../model/User.dart';
import '../model/Profile.dart';

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

  bool isShowUsers = false;

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
      onSaved: (value) {
        _firstName = value.toString();
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
      onSaved: (value) {
        _lastName = value.toString();
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
      onSaved: (value) {
        _email = value.toString();
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
      onSaved: (value) {
        _company = value.toString();
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
      onSaved: (value) {
        _phoneNumber = value.toString();
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
      onSaved: (value) {
        _projectDescription = value.toString();
      },
    );
  }

  // Add user in the hive box
  void addUser(User user) {
    final usersBox = Hive.box("users");
    usersBox.add(user);
    print(usersBox.length);
  }

  // Show users stored in the hive box
  Widget showUsers() {
    return WatchBoxBuilder(
      box: Hive.box("users"),
      builder: (context, usersBox) {
        return ListView.builder(
          itemCount: usersBox.length,
          itemBuilder: ((context, index) {
            final user = usersBox.getAt(index) as User;
            return DataTable(
              columns: [
                DataColumn(
                  label: Container(
                    width: 200,
                    child: Text(
                      "Name",
                      style: GoogleFonts.abel(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: 200,
                    child: Text(
                      "Email",
                      style: GoogleFonts.abel(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: 200,
                    child: Text(
                      "Phone",
                      style: GoogleFonts.abel(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: 200,
                    child: Text(
                      "Company",
                      style: GoogleFonts.abel(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const DataColumn(
                  label: Text(
                    "",
                  ),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Text(
                        "${user.firstName}  ${user.lastName}",
                        style: GoogleFonts.abel(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        user.email,
                        style: GoogleFonts.abel(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        user.phoneNumber,
                        style: GoogleFonts.abel(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        user.company,
                        style: GoogleFonts.abel(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    DataCell(InkWell(
                      onTap: (() {
                        usersBox.deleteAt(index);
                      }),
                      child: const Icon(
                        Icons.delete_outline,
                        size: 35,
                      ),
                    ))
                  ],
                ),
              ],
            );
          }),
        );
      },
    );
  }

  // Insert user in the firebase database
  void insertProfile(Profile profile) async {
    final docProfile = FirebaseFirestore.instance.collection('profiles').doc();
    profile.id = docProfile.id;
    // FirebaseFirestore.instance.collection('users').add(profile.toMap());
    docProfile.set(profile.toMap());
    print("Profile is added in the database");
  }

  // Read data from firebase
  Stream<List<Profile>> readData() => FirebaseFirestore.instance
      .collection('profiles')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Profile.fromMap(doc.data())).toList());

  Widget showUsersFromFirebase() {
    return StreamBuilder<List<Profile>>(
      stream: readData(),
      builder: (context, snapshot) {
        print(snapshot.data);
        return ListView();
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
                                image: AssetImage('assets/images/oldport.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 1850,
                                height: MediaQuery.of(context).size.height - 30,
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
                                        Expanded(child: _buildPhoneNumber()),
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
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    const SizedBox(height: 20),
                                    _buildProjectDescription(),
                                    const SizedBox(height: 30),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 100,
                                          child: RaisedButton(
                                            onPressed: () {
                                              // Checks if all the required fields are filled.
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                _formKey.currentState?.save();

                                                // for inserting the user inside the hive box
                                                // final newUser = User(
                                                //     _firstName,
                                                //     _lastName,
                                                //     _email,
                                                //     _phoneNumber,
                                                //     _company,
                                                //     _projectDescription);
                                                // addUser(newUser);

                                                // for inserting the profile in the firebase
                                                final newProfile = Profile(
                                                  _firstName,
                                                  _lastName,
                                                  _email,
                                                  _phoneNumber,
                                                  _company,
                                                  _projectDescription,
                                                );

                                                insertProfile(newProfile);
                                                _formKey.currentState?.reset();
                                              } else {
                                                return;
                                              }
                                            },
                                            hoverColor: Colors.grey,
                                            child: Text(
                                              "SUBMIT",
                                              style: GoogleFonts.abel(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 30),
                                        Container(
                                          height: 40,
                                          width: 100,
                                          child: RaisedButton(
                                            onPressed: () {
                                              setState(() {
                                                isShowUsers = true;
                                                readData();
                                              });
                                            },
                                            hoverColor: Colors.grey,
                                            child: Text(
                                              "View Users",
                                              style: GoogleFonts.abel(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 500,
                          child: isShowUsers
                              ? showUsersFromFirebase()
                              : Container(),
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
      },
    );
  }

  @override
  void dispose() {
    Hive.close;
    super.dispose();
  }
}
