import 'package:flutter/material.dart';

import '../models/member.dart';

class Members with ChangeNotifier {
  static List<Member> members = [
    Member(
      name: 'Amit Sen',
      seniorityLevel: 'Senior',
    ),
    Member(
      name: 'Rabindranath Roy',
      seniorityLevel: 'Junior',
    ),
    Member(
      name: 'Sylvia Sharma',
      seniorityLevel: 'Trainee',
    ),
  ];

  void addMember(value) {
    members.add(value);
    notifyListeners();
  }
}
