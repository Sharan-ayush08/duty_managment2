import 'package:duty_managment2/models/member.dart';
import 'package:duty_managment2/providers/group_members.dart';
import 'package:flutter/material.dart';

class ViewGroupDetails extends StatelessWidget {
  const ViewGroupDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Member> groupMembers = Members.members;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Group Details"),
      ),
      body: groupMembers.isEmpty
          ? Center(
              child: Text('No Members'),
            )
          : ListView.builder(
              itemCount: groupMembers.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 8,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <ListTile>[
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                          ),
                          title: Text(groupMembers[index].name),
                          subtitle: Text(
                              'Level: ' + groupMembers[index].seniorityLevel),
                          trailing: PopupMenuButton(
                            offset: Offset(0, -35),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 'remove',
                                child: Text('Remove'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
