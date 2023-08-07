import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'profile.dart';
import 'call.dart';
import 'history.dart';
import 'package:flutter/material.dart';
import 'pickuplocation.dart';
import 'saveplaces.dart';
import 'placeorder.dart';
import 'faq.dart';
 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    Home(),
    HistoryPage(),
    CallPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Dashboard', 
        style:TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color:Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/edrick.jpg' ),
            ),
          ),
        ],
      ),
      drawer: Container(
       // alignment: Alignment.topCenter,
       // padding: EdgeInsets.only(top: 50),
        child: Expanded(
          child: Drawer(
          child: Column(
            children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              alignment: Alignment.topCenter,
       // padding: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: 19,),
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
              ],
                  ),  
                   SizedBox(height: 10,),
 
                    Expanded(
                      child: Container(
                                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                                       color: Colors.red,
                          
                                      ),
                                      height:90,
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('BALANCE')),
                        Container(
                          padding: EdgeInsets.all(13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('10 WEB',),
                              Text('1,000 XAF'),
                            ],
                          ),
                        ),
                      ],
                                      
                                ),
                                      ),
                    ),
                ],
              ),
            ),
          ),
                    SizedBox(height: 20,),
             Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            ListTile(
              title: Text('Send'),
              
               onTap: () {
                showDialog(
  context: context,
  builder: (BuildContext context) {
    return MyPopupScreen();
  },
);
                // handle onTap
              },
            ),
            Divider(height: 5),
            ListTile(
              title: Text('Call'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallPage()),
                );// handle onTap
              },
            ),
            Divider(height: 5),
            ListTile(
              title: Text('Save places'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SavePlacesdPage()),
                ); // // handle onTap
              },
            ),
            Divider(height: 5),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage(username: '', email: '',)),
                );
              },
            ),
            Divider(height: 5),
            ListTile(
              title: Text('Info'),
              onTap: () {
                // handle onTap
              },
            ),
            Divider(height: 5),
            ListTile(
              title: Text('FAQ'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FAQPage()),
                );
              },
            ),
            Divider(height: 5),
          ],
            ),
          ),
        )
        
            ],
          ),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}




class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height:310),
          /*Expanded(
            child: Container(
              width: double.infinity,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(4.051056, 9.767868),
                  zoom: 12,
                ),
              ),
            ),
          ),*/
        
 
                Container(
                  margin: EdgeInsets.only(left: 10),
                              height: 50,
                              width: 145,
                              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    
                  ), 
                  child:Text('Where to?', textAlign: TextAlign.center,)                 
                ),
            SizedBox(height:10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                              
                    
                  ),             
                ),
                SizedBox(width: 5,),
                Container(
                  margin: EdgeInsets.only(right: 10),
                              height: 100,
                              width: 145,
                              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    
                  ),                  
                ),
              ],
            ),
            SizedBox(height:15),
            Row(
              children: [
                Container(
                margin: EdgeInsets.only(left: 10),
                            height: 100,
                            width: 145,
                            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                            
                  
                ),             
              ),
              SizedBox(width: 5,),
              Container(
                margin: EdgeInsets.only(right: 10),
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                  
                ),                  
              ),
              ],
            )
      
    ]
    )
    );
  }
}
