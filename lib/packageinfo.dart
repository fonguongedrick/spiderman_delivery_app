import 'package:flutter/material.dart';
import 'newoffer.dart';
class PackageInfoPage extends StatefulWidget {
  @override
  _PackageInfoPageState createState() => _PackageInfoPageState();
}

class _PackageInfoPageState extends State<PackageInfoPage> {
  String? _selectedCategory = 'Electronics';
  String? _selectedWeight = '0.0 Kg - 5.0 Kg';
  String _description = '';
  String _vehiclePreference = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Package Information',
        style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Category'),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
  value: _selectedCategory,
  items: [
    DropdownMenuItem(child: Text('Electronics'), value: 'Electronics'),
    DropdownMenuItem(child: Text('Electronics2'), value: 'Electronics2'),
    DropdownMenuItem(child: Text('Electronics3'), value: 'Electronics3'),
    DropdownMenuItem(child: Text('Electronics4'), value: 'Electronics4'),
  ],
  onChanged: (value) {
    setState(() {
      _selectedCategory = value;
    });
  },
),
              )
            ),
            SizedBox(height: 16),
            Text('Weight'),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton(
  value: _selectedWeight,
  items: [
    DropdownMenuItem(child: Text('0.0 Kg - 5.0 Kg'), value: '0.0 Kg - 5.0 Kg'),
    DropdownMenuItem(child: Text('5.0 Kg - 10.0 Kg'), value: '5.0-10.0'),
    DropdownMenuItem(child: Text('10.0 Kg - 20.0 Kg'), value: '10.0-20.0'),
    DropdownMenuItem(child: Text('20.0 Kg - 30.0 Kg'), value: '20.0-30.0'),
  ],
  onChanged: (value) {
    setState(() {
      _selectedWeight = value;
    });
  },
),
            ),
            SizedBox(height: 16),
            Text('Description'),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type Description',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
              ),
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Vehicle Preference'),
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.red),
                  onPressed:() {},
                ),
              ],
            ),
            SizedBox(height: 1),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: deliveryCars.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(deliveryCars[index].image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                //blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          deliveryCars[index].title,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
             Container(
              width: 340,
              height: 50,
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewOfferPage()),
                );
              
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
                
              
            
          ],
        ),
      ),
    );
  }
}

class DeliveryCar {
  String image;
  String title;

  DeliveryCar({required this.image, required this.title});
}

List<DeliveryCar> deliveryCars = [
  DeliveryCar(
    image: 'assets/Delivery address-amico.png',
    title: 'Bike',
  ),
  DeliveryCar(
    image: 'assets/driving school-cuate.png',
    title: 'Car',
  ),
  DeliveryCar(
    image: 'assets/driving school-pana.png',
    title: 'Van',
  ),
  DeliveryCar(
    image: 'assets/Construction truck-pana.png',
    title: 'Truck',
  ),
];
