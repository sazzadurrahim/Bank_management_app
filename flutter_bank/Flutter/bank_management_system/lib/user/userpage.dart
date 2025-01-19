import 'package:bank_management_system/user/applyaccount.dart';
import 'package:bank_management_system/main/main.dart';
import 'package:bank_management_system/user/moneytransfer.dart';
import 'package:bank_management_system/user/user_deposit.dart';
import 'package:bank_management_system/user/user_help.dart';
import 'package:bank_management_system/user/userdrawer.dart';
import 'package:bank_management_system/user/withdraw.dart';
import 'package:flutter/material.dart';

import 'checkbalance.dart';

class Userpage extends StatelessWidget {
  const Userpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Userpage",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Myuserpage(),
    );
  }
}

class Myuserpage extends StatefulWidget {
  const Myuserpage({super.key});

  @override
  State<Myuserpage> createState() => _MyuserpageState();
}

class _MyuserpageState extends State<Myuserpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Userdrawer(),

    appBar:AppBar(
    centerTitle:true,
    title:Row(
    children:[
      IconButton(icon:Icon(Icons.arrow_back,color:Colors.black),
    onPressed:() {
    // Action for back icon
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp(),)); // Navigates back
    },
    ),
    Text(
    'Welcome to ',
    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),
    ),
    Text(
    'User ',
    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
    ),
    Text(
    'Panel',
    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24),
    ),
    ],
    ),
    backgroundColor: Colors.white38,
    ),



    body:Container(
    color: Colors.lightBlue.shade200,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Two items per row
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 10.0,
    ),
    itemCount: 6, // 6 grid items
    itemBuilder: (context, index) {
    return GestureDetector(
    onTap: () {
    // Navigation based on index
    switch (index) {
    case 0:
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Applyaccount()),
    );
    break;
    // Add other cases for other grid items
    case 1:
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Checkbalance()),
    );
    break;
    case 2:
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Withdraw()),
    );
    break;

      case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Moneytransfer()),
      );
      break;

      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserDeposit()),
        );
        break;

      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserHelp()),
        );
        break;
    // Add cases as needed for your 6 pages
    default:
    break;
    }
    },
    child: Card(
    elevation: 5,
    color: Colors.orange.shade300,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Icon(
                  _getIconForIndex(index), // Dynamically get the icon
                   size: 40,
                  color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Text(
                  _getLabelForIndex(index), // Dynamically get the label
                  style: TextStyle(color: Colors.black, fontSize: 18),
                 ),
               ],
              ),
             ),
            );
          },
        ),
      ),
     )
    );
  }

  // Function to get the icon for each grid item based on the index
  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.account_circle; // Create Account icon
      case 1:
        return Icons.account_balance_wallet; // Settings icon
      case 2:
        return Icons.money; // Home icon
      case 3:
        return Icons.monetization_on; // Notifications icon
      case 4:
        return Icons.add_circle_outline; // Email icon
      case 5:
        return Icons.help; // Help icon
      default:
        return Icons.help;
    }
  }

  // Function to get the label for each grid item based on the index
  String _getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'Create Account';
      case 1:
        return 'Check Balance';
      case 2:
        return 'Withdraw';
      case 3:
        return 'Money Transfer';
      case 4:
        return 'Deposit';
      case 5:
        return 'Help';
      default:
        return '';
    }
  }
}


