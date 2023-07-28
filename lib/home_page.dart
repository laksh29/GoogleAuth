import 'package:auth_crud/custom_button.dart';
import 'package:auth_crud/google_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final instance = FirebaseAuth.instance.currentUser;
    final name = instance!.displayName;
    final email = instance.email;
    final photo = instance.photoURL;
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name!"),
        actions: [
          CircleAvatar(
            // backgroundColor: Colors.red[50],
            backgroundImage: NetworkImage("$photo"),
          ),
          const SizedBox(width: 20.0),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have logged in with $email"),
            const SizedBox(height: 15.0),
            CustomButton(
              title: "Logout",
              onTap: () => GoogleAuth().signout(context),
            ),
          ],
        ),
      ),
    );
  }
}
