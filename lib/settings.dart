import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsetsDirectional.only(start: 0, top: 19 ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Languages'),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location'),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Calls'),
              trailing: Switch(
                value: true,
                activeColor: Colors.red,
                onChanged: (value) {},
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.volume_up),
              title: Text('Sound and Notification'),
              trailing: Switch(
                value: true,
                activeColor: Colors.red,
                onChanged: (value) {},
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
