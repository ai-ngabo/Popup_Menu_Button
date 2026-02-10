import 'package:flutter/material.dart';

// page for SignOut
class SignOutPage extends StatelessWidget {
  const SignOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Out')),
      body: const Center(child: Text('Sign Out Page')),
    );
  }
}