import 'package:flutter/material.dart';
import 'dart:ui';
class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/edrick.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/edrick.jpg'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(               
                    Icons.volume_up,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    // Handle volume button press
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.mic,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    // Handle voice record button press
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.call_end,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}