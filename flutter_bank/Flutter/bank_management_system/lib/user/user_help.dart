import 'package:bank_management_system/main/main.dart';
import 'package:bank_management_system/user/userpage.dart';
import 'package:flutter/material.dart';

class UserHelp extends StatelessWidget {
  const UserHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserHelpPage(),
    );
  }
}


class UserHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Row(
          children: [
            IconButton(icon:Icon(Icons.arrow_back,color:Colors.black),
              onPressed:() {
                // Action for back icon
                Navigator.push(context, MaterialPageRoute(builder: (context) => Userpage(),)); // Navigates back
             },
            ),
            const Text('Help ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red,),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              // Bank Description Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'For Help',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dear Valued User, \nFor any kind of help or query kindly contact to the nearest Branch of the Bank. \nOr call: +02 - - - - - - -',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Footer Section
              Center(
                child: Text(
                  '© 2025 Bank. All Rights Reserved.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
