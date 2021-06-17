import 'package:flutter/material.dart';
import '../providers/my_groups.dart';
import '../screens/popup_dialogs/dialog.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ViewGroupsPage extends StatelessWidget {
  static const routeName = '/view_groups';
  TextEditingController groupName = TextEditingController();
  TextEditingController department = TextEditingController();
  var groupItems;

  @override
  Widget build(BuildContext context) {
    var groupList = Provider.of<Groups>(context);
    Future _createNewGroup(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Groups"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () {
          _createNewGroup(context);
        },
        label: Text("Create Group"),
      ),
      body: groupList.items.isEmpty
          ? Center(
              child: Text('No Groups'),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: groupList.items.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 8,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <ListTile>[
                        ListTile(
                          title: Text(groupList.items[index].groupName),
                          subtitle: Text('Department:' +
                              groupList.items[index].departmentName),
                          trailing: PopupMenuButton(
                            offset: Offset(0, -35),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 'edit',
                                child: Text(
                                  'Edit',
                                ),
                              ),
                              PopupMenuItem(
                                value: 'Delete',
                                child: Text(
                                  'Delete',
                                ),
                              ),
                            ],
                            onSelected: (value) {},
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
