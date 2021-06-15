import 'package:flutter/foundation.dart';

class Member with ChangeNotifier {
  String name;
  String? profilePhoto;
  String seniorityLevel;

  Member({
    this.name = 'My Member',
    this.seniorityLevel = '',
  });
}
