// ignore: unused_import
import 'package:duty_managment2/providers/group_members.dart';
import 'package:duty_managment2/providers/my_groups.dart';
import 'package:flutter/material.dart';

class PopupDialog extends StatefulWidget {
  const PopupDialog({Key? key}) : super(key: key);

  @override
  _PopupDialogState createState() => _PopupDialogState();
}

class _PopupDialogState extends State<PopupDialog> {
  TextEditingController groupName = TextEditingController();
  TextEditingController department = TextEditingController();

  var groupItems;
  @override
  Widget build(BuildContext context) {
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
              // ignore: unused_element
              setState() {
                groupItems.add(groupName.text.toString());
              }

              // if (groupName.text.isNotEmpty && department.text.isNotEmpty)
              //   {print(groupName.text), print(department.text)}
              Navigator.of(context).pop(groupName.text.toString());
            },

            // color: Colors.lightBlue,
            // textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
// TODO Implement this library.
