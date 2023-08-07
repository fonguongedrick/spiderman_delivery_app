import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int activeIndex = -1;
    Widget _buildPaymentOption({
  required String logo,
  required String title,
  required int index,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300]!,
          blurRadius: 8,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        Image.asset(
          logo,
          width: 32,
          height: 32,
        ),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              activeIndex = index;
            });
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: activeIndex == index ? Colors.red : Colors.grey[300]!,
                width: 2,
              ),
            ),
            child: activeIndex == index
                ? Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  )
                : null,
          ),
        ),
      ],
    ),
  );
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.white,
elevation: 0,
leading: IconButton(
icon: Icon(
Icons.arrow_back,
color: Colors.black,
),
onPressed: () => Navigator.pop(context),
),
title: Text(
'Payment Method',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
),
),
),
body: Container(
  color: Colors.white,
  
  child:   Column(
  
  crossAxisAlignment: CrossAxisAlignment.stretch,
  
  children: [
   SizedBox(height: 70,),
  _buildPaymentOption(
  
  logo: 'assets/mtnlogo.png',
  
  title: 'MTN Mobile Money',
  
  index: 0,
  
  ),
  
  _buildPaymentOption(
  
  logo: 'assets/orangelogo.png',
  
  title: 'Orange Mobile Money',
  
  index: 1,
  
  ),
  
  _buildPaymentOption(
  
  logo: 'assets/nastercardlogo.png',
  
  title: 'Master Card Pay',
  
  index: 2,
  
  ),
  
  _buildPaymentOption(
  
  logo: 'assets/visacardlogo.png',
  
  title: 'Visa Card Pay',
  
  index: 3,
  
  ),
  
  SizedBox(height: 70),
  
  Padding(
  
  padding: EdgeInsets.symmetric(horizontal: 16),
  
  child: ElevatedButton(
  
  onPressed: () {},
  
  style: ElevatedButton.styleFrom(
  
  primary: Colors.red,
  
  padding: EdgeInsets.symmetric(vertical: 16),
  
  shape: RoundedRectangleBorder(
  
  borderRadius: BorderRadius.circular(12),
  
  ),
  
  ),
  
  child: Text(
  
  'Make Payment',
  
  style: TextStyle(fontSize: 16),
  
  ),
  
  ),
  
  ),
  
  ],
  
  ),
),
);
}
}