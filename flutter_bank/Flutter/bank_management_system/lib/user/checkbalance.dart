import 'package:bank_management_system/model_class/createaccount.dart';
import 'package:bank_management_system/model_class/ipaddress.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Checkbalance extends StatefulWidget {
  const Checkbalance({super.key});

  @override
  State<Checkbalance> createState() => _CheckbalanceState();
}

class _CheckbalanceState extends State<Checkbalance> {

  TextEditingController _id=TextEditingController();
  TextEditingController _password=TextEditingController();

  late List<Createaccount> _balanceData = [];
 late Map<String, dynamic> showData={};


  Future<Map<String, dynamic>> showbyid(String id,String password) async {
    final response = await http.get(Uri.parse('http://localhost:8080/checkbalancebyuser/'+id+'/'+password));

    if (response.statusCode == 200) {
      var show=jsonDecode(response.body);
      //print(show);
      return show;
    } else {
      throw Exception("Failed");
    }
  }

  void showid()async{
     var balanceData = await showbyid(_id.text, _password.text);
    setState(() {
    showData=balanceData;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    //show();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Account Balance Check", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
        ),
        backgroundColor: Colors.amber,
      ),


      body:Form(

          child: Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children:<Widget>[
                SizedBox(height: 70,),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    controller:_id ,
                    decoration: InputDecoration(
                      labelText: 'Account Number',
                      hintText: 'Enter your account number',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    obscureText: true,
                    controller:_password ,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),

                ElevatedButton(
                  child: Text('Check ',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    showid();

                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                      Card(
                        surfaceTintColor: Colors.indigo,
                        elevation: 20,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child:
                        showData.isNotEmpty?
                        SizedBox(
                          height: 150,
                          child: Center(
                              child: ListTile(
                                title: Text('Name: ${showData["name"]}', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                subtitle: Text('Balance: ${showData["balance"].toString()} BDT',style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold)),
                              ),
                          ),
                        ):const Center(

                          child: SizedBox(
                            height: 60,
                              child: Center(
                                  child: Text('Input correct info.',style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize: 20),))),
                        ),
                      )


                  ],
                ),


              ],
            ),
          ),
        ),




    );
  }
}
