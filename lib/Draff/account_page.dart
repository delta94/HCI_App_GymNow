import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Account',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/pic1.jpg'),
                ),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Uyên Lưu',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Edit profile',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text('Term of Service',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 4,
              thickness: 1,
            ),
            SizedBox(height: 15),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text('Help Center',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 4,
              thickness: 1,
            ),
            SizedBox(height: 15),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text('Emergency Contacts',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 4,
              thickness: 1,
            ),
            SizedBox(height: 15),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text('Settings',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 4,
              thickness: 1,
            ),
            SizedBox(height: 15),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text('Log Out',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 4,
              thickness: 1,
            ),
            SizedBox(height: 15),
            Text(
              'Now Version: 1.0',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
