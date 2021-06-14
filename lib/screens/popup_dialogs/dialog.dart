import 'package:flutter/material.dart';

class PopupDialog extends StatefulWidget {
  const PopupDialog({Key? key}) : super(key: key);

  @override
  _PopupDialogState createState() => _PopupDialogState();
}

class _PopupDialogState extends State<PopupDialog> {
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
            onPressed: () {},
            // color: Colors.lightBlue,
            // textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
// TODO Implement this library.
