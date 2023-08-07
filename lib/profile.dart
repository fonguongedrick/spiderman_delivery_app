import 'package:flutter/material.dart';
import 'settings.dart';
import 'profiledetails.dart';
import 'changepassword.dart';
class ProfilePage extends StatelessWidget {
  final String username;
  final String email;
  final double radius;

  ProfilePage({
    required this.username,
    required this.email,
    this.radius = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
        style: TextStyle(color:Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.red,
        
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                
                
                //width: radius * 2.0,
                //height: radius * 2.0,
                
                child: Center(
                  child: CircleAvatar(
                    radius: radius - 10.0,
                    backgroundImage: AssetImage('assets/edrick.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Edrick Deman',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 5.0),
              Text(
                  'edrickdeman@gmail.com',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDetailPage(phoneNumber: '', name: '', gender: '', email: '',)),
                );
              },
                    child:Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.red,
                            size: 30.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Profile Details',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5.0,
                              offset: Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.settings,
                              color: Colors.red,
                              size: 30.0,
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResetPasswordPage()),
                );
              },
                     child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.lock_outline,
                            color: Colors.red,
                            size: 30.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Change Password',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.red,
                            size: 30.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ), 
            ]
              ),
          ),
            ]
        ),
          ),
      ),
    );
  }
}