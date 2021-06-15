import 'package:flutter/material.dart';

import '../providers/my_groups.dart';
import '../models/group.dart';
import '../screens/popup_dialogs/dialog.dart';

class ViewGroupsPage extends StatelessWidget {
  static const routeName = '/view_groups';
  const ViewGroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Group> myGroups = Groups.groupItems;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Groups"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () {
          _showInformationDialog(context);
        },
        label: Text("Add New Group"),
      ),
      body: myGroups.isEmpty
          ? Center(
              child: Text('No Groups'),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: myGroups.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 3,
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        title: Text(myGroups[index].groupName),
                        subtitle: Text(
                            'Department:' + myGroups[index].departmentName),
                      )
                    ],
                  ),
                );
              }),
    );
  }

  _showInformationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 16,
          child: Container(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "GROUP DETAILS",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueGrey[800],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PopupDialog(),
              ],
            ),
          ),
        );
      },
    );
  }
}
