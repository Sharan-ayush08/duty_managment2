import 'package:duty_managment2/models/members.dart';
import 'package:duty_managment2/providers/group_members.dart';
import 'package:flutter/material.dart';

class ViewGroupDetails extends StatelessWidget {
  const ViewGroupDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Member> myMembers = Members.memberItems;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Member Details"),
      ),
      body: myMembers.isEmpty
          ? Center(
              child: Text('No Members'),
            )
          : ListView.builder(
              itemCount: myMembers.length,
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
                          title: Text(myMembers[index].memberDetails),
                          subtitle: Text('Seniority Level:' +
                              myMembers[index].seniorityLevel),
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
