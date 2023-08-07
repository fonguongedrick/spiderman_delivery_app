import 'package:flutter/material.dart';
class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                
                children: [
                  SizedBox(height:100),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded1 = !_isExpanded1;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do I place an order?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Icon(
                          _isExpanded1
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _isExpanded1
                      ? Text(
                          'To place an order, follow these steps: ...',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded2 = !_isExpanded2;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How long does it take to deliver a product?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        Icon(
                          _isExpanded2
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _isExpanded2
                      ? Text(
                          'It takes almost 30 minutes per delivery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded3 = !_isExpanded3;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How can I track my order?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Icon(
                          _isExpanded3
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _isExpanded3
                      ? Text(
                          'To track your order, go to the "My Orders" section ...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}