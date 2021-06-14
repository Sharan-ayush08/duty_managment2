import 'package:flutter/material.dart';

class dialog extends StatefulWidget {
  const dialog({Key? key}) : super(key: key);

  @override
  _dialogState createState() => _dialogState();
}

class _dialogState extends State<dialog> {
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
              color: Colors.red,
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
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text("Submit"),
            onPressed: () {},
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
// TODO Implement this library.