import 'package:flutter/material.dart';

import 'call_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController callIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter video call app')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Start a Video Call',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: callIdController,
                  decoration: InputDecoration(
                    hintText: 'Enter call id',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () => _startCall(context),
                  label: Icon(Icons.video_call, color: Colors.white, size: 35),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    backgroundColor: Colors.blue.shade200,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _startCall(BuildContext context) {
    final callId = callIdController.text.trim();
    if (callId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please enter a call id',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return CallPage(callId:callId);
    }));
  }
}
