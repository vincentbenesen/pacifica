class Profile {
  String id;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String company;
  final String projectDetails;

  Profile(this.firstName, this.lastName, this.email, this.phoneNumber,
      this.company, this.projectDetails,
      [this.id = ""]);

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "phoneNumber": phoneNumber,
      "company": company,
      "projectDetails": projectDetails,
    };
  }

  @override
  String toString() {
    return 'name: ${firstName} ${lastName}\nemail: ${email}';
  }

  static Profile fromMap(Map<String, dynamic> map) => Profile(
      map['firstName'],
      map['lastName'],
      map['email'],
      map['phoneNumber'],
      map['company'],
      map['projectDetails'],
      map['id']);
}
