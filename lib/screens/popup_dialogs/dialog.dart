import 'package:duty_managment2/models/group.dart';
import 'package:duty_managment2/providers/my_groups.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopupDialog extends StatelessWidget {
  final _nameController = TextEditingController();
  final _departmentController = TextEditingController();

  void _saveGroup(context) {
    Group newGroup = Group(
        groupName: _nameController.text,
        departmentName: _departmentController.text,
        hospitalName: '');
    Provider.of<Groups>(context, listen: false).addGroup(newGroup);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
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
            controller: _nameController,
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
            controller: _departmentController,
            decoration: InputDecoration(
              labelText: "Department",
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all(12),
          child: ElevatedButton(
            child: Text(
              "Save",
            ),
            onPressed: () => _saveGroup(context),

            // color: Colors.lightBlue,
            // textColor: Colors.white,
          ),
        )
      ],
    );
  }
}
