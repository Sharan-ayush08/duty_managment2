import 'package:flutter/foundation.dart';

class Group with ChangeNotifier {
  String groupName;
  String hospitalName;
  String departmentName;
  // List<Member> groupMembers=[];

  Group({
    this.groupName = 'My Group',
    this.hospitalName = '',
    this.departmentName = '',
// this.groupMembers,
  });
}
