import 'package:flutter/material.dart';
import 'call.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
             child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search', hintStyle: TextStyle(color:Colors.black),
                    icon: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.search)),
                  ),
            ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the chat screen for the selected chat
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IndividualChatScreen(
                            chatName: 'Edrick Deman',
                            profileImage: 'assets/edrick.jpg',
                          ),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          
                        child: CircleAvatar(
                    backgroundImage: AssetImage('assets/edrick.jpg'),
                  ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Edrick Deman',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'I will soon arrive',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '9:00 AM',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}


class IndividualChatScreen extends StatelessWidget {
  final String chatName;
  final String profileImage;

  const IndividualChatScreen({
    Key? key,
    required this.chatName,
    required this.profileImage,
  }) : super(key: key);

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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/edrick.jpg'),
            ),
            SizedBox(width: 16),
            Text(
              chatName,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.phone, color: Colors.red),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallPage()),
                );
            },
          ),
          IconButton(
            icon: Icon(Icons.video_call, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildMessage(
                    'Hello there, how are you doing?',
                    true,
                    '10:30 AM',
                  ),
                  _buildMessage(
                    'I\'m good, How about you?',
                    false,
                    '10:35 AM',
                  ),
                  _buildMessage(
                    'I\'m doing great, thanks.',
                    true,
                    '10:40 AM',
                  ),
                  // Add more messages here...
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.face, color: Colors.red),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type Message',
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.red),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.red),
                    onPressed: () {},
                  ),
                  IconButton(
                icon: Icon(Icons.mic, color: Colors.red),
                onPressed: () {},
              ),
                ],
              ),
            ),
          
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildMessage(String message, bool isSentByMe, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSentByMe ? Colors.grey[300] : Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: isSentByMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              color: isSentByMe ? Colors.black : Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 8),
          Text(
            time,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
