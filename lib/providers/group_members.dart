import 'package:flutter/material.dart';

import '../models/members.dart';

class Members with ChangeNotifier {
  static List<Member> memberItems = [
    Member(memberDetails: 'xyz', seniorityLevel: 'yzy'),
    Member(memberDetails: 'xyz', seniorityLevel: 'yzy')
  ];

  void addMember(value) {
    memberItems.add(value);
    notifyListeners();
  }
}
