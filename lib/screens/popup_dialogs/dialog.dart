import 'package:duty_managment2/models/group.dart';
import 'package:duty_managment2/providers/my_groups.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PopupDialog extends StatelessWidget {
  TextEditingController groupName = TextEditingController();
  TextEditingController department = TextEditingController();
  var groupItems;

  @override
  Widget build(BuildContext context) {
    var groupList = Provider.of<Groups>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Divider(
              height: 2,
              thickness: 2,
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Container(
              height: double.infinity,
              child: Icon(
                Icons.group,
                color: Colors.black,
              ),
            ),
            title: TextFormField(
              controller: groupName,
              decoration: InputDecoration(
                labelText: "Group Name",
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: double.infinity,
              child: Icon(
                Icons.local_hospital,
                color: Colors.black,
              ),
            ),
            title: TextFormField(
              decoration: InputDecoration(
                labelText: "Hospital Name",
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: double.infinity,
              child: Icon(
                Icons.share,
                color: Colors.black,
              ),
            ),
            title: TextFormField(
              controller: department,
              decoration: InputDecoration(
                labelText: "Department",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            child: Text("Submit"),
            onPressed: () {
              Group newGroup = Group(
                  groupName: groupName.text.toString(),
                  departmentName: department.text.toString(),
                  hospitalName: '');
              groupList.addGroup(newGroup);
              Navigator.pop(context);
            },

            // color: Colors.lightBlue,
            // textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
