import 'package:flutter/material.dart';

import '../models/group.dart';

class Groups with ChangeNotifier {
  static List<Group> groupItems = [
    Group(
      groupName: 'Oncology Nurses',
      departmentName: 'Oncology',
      hospitalName: 'SSKM',
    ),
    Group(
      groupName: 'ENT Nurses',
      departmentName: 'ENT',
      hospitalName: 'SSKM',
    ),
  ];
  List<Group> get items {
    return [...groupItems];
  }

  void addGroup(value) {
    groupItems.add(value);
    notifyListeners();
  }
}
