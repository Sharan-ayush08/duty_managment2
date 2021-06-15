import 'package:flutter/foundation.dart';

class Member with ChangeNotifier {
  String memberDetails;
  String seniorityLevel;

  Member({
    this.memberDetails = 'My Member',
    this.seniorityLevel = '',
  });
}
