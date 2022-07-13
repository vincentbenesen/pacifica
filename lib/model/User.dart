import 'package:hive/hive.dart';

part 'User.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  final String firstName;
  @HiveField(1)
  final String lastName;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String phoneNumber;
  @HiveField(4)
  final String company;
  @HiveField(5)
  final String projectDetails;

  User(this.firstName, this.lastName, this.email, this.phoneNumber,
      this.company, this.projectDetails);

  @override
  String toString() {
    return 'name: ${firstName} ${lastName}\nemail: ${email}';
  }
}
