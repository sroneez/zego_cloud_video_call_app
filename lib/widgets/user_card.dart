import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/models/user_model.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.05),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 25,
              child: Center(
                child: Text(
                  userModel.name?.substring(0, 1).toUpperCase() ?? '',
                ),
              ),
            ),
            SizedBox(width: 15),
            Text(
              userModel.name ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
