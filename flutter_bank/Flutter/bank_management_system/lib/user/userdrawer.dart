import 'package:bank_management_system/user/applyaccount.dart';
import 'package:bank_management_system/user/checkbalance.dart';
import 'package:bank_management_system/main/main.dart';
import 'package:bank_management_system/user/moneytransfer.dart';
import 'package:bank_management_system/user/user_deposit.dart';
import 'package:bank_management_system/user/user_help.dart';
import 'package:bank_management_system/user/userpage.dart';
import 'package:bank_management_system/user/withdraw.dart';
import 'package:flutter/material.dart';

class Userdrawer extends StatelessWidget {
  const Userdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding:EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff007C00),
               image: DecorationImage(image: AssetImage('images/user_logo2.jpg'),fit: BoxFit.cover)
            ),
            padding: EdgeInsets.fromLTRB(5.0,10,0,0),  // Set padding here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 105),
                Row(
                  children: [
                    Text('User ', style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 24)),

                    Text('Panel ',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24)),
                  ],
                ),
              ],
            ),
          ),


          // ---------------- drawer body --------------------------

          ListTile(
            leading: Icon(Icons.home,color: Colors.red),
            title: const Text(
                'Home',
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text(
                'Apply for account',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Applyaccount()));
            },
          ),

          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title:const Text(
              'Check Balance',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkbalance()));
            },
          ),

          ListTile(
            leading: Icon(Icons.money),
            title:const Text(
              'Withdraw',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Withdraw()));
            },
          ),

          ListTile(
            leading: Icon(Icons.monetization_on),
            title:const Text(
              'Money Transfer',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Moneytransfer()));
            },
          ),

          ListTile(
            leading:const Icon(Icons.add_circle_outline),
            title:const Text(
              'Deposit',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDeposit()));
            },
          ),

          ListTile(
            leading:const Icon(Icons.help),
            title:const Text(
              'Help',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHelp()));
            },
          ),

        ],
      ),
    );
  }
}
