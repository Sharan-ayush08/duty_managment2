import 'package:flutter/material.dart';

import '../models/group.dart';

class Groups with ChangeNotifier {
  static List<Group> _groupItems = [
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
    return [..._groupItems];
  }

  void addGroup(value) {
    _groupItems.add(value);
    notifyListeners();
  }
}
