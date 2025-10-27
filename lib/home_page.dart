import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/models/user_model.dart';
import 'package:zego_cloud_video_call/services/firebase_services.dart';
import 'package:zego_cloud_video_call/widgets/user_card.dart';

import 'call_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter video call app')),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            /* child: Center(
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
          ),*/
            child: Center(
              child: StreamBuilder(stream: FirebaseServices.buildViews,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final List<QueryDocumentSnapshot>? docs = snapshot.data
                        ?.docs;
                    if (docs == null) {
                      return Text('No data');
                    }
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          final model = UserModel.fromJson(
                              docs[index].data() as Map<String, dynamic>);
                          if (model.username !=
                              FirebaseServices.currentUser?.username) {
                            return UserCard(userModel: model);
                          }
                          return SizedBox.shrink();
                        });
                  }),
            )
        ),
      ),
    );
  }

/*  void _startCall(BuildContext context) {
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return CallPage(callId: callId);
        },
      ),
    );
  }*/
}
