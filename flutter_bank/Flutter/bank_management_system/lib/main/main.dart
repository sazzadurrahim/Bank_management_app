import 'package:bank_management_system/admin/login.dart';
import 'package:bank_management_system/main/about_bank.dart';
import 'package:bank_management_system/user/userpage.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bank_management_system/admin/homedrawer.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'My Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Homedrawer(),

      appBar: AppBar(
        centerTitle: true,
        title:const Row(
          children: [
            Text('Bank ', style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 24)),

            Text('Management ',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24)),
            Text('System',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 24)),
          ],
        ),

        backgroundColor:Colors.white38,
      ),

      body:Center(

          child: Container(
            color: Color(0xff6649EF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(

                  flex: 1,
                  child: Container(
                    child: Image.asset('images/bank.jpg',
                      width: double.infinity,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child:Container(
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 80),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 3,
                            // padding: EdgeInsets.all(0),
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            // primary: true,
                            // when you wanna show only 2 panel then comment out admin page and make crossAxisCount=2
                            //but when wanna show all then apply crossAxisCount=3
                            children:<Widget> [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: SizedBox.fromSize(
                                  // size: Size(50,50),
                                  child: ClipOval(
                                    child: Material(
                                      color:  Color(0xff007C00),

                                      child: InkWell(
                                        splashColor: Colors.yellow,
                                        child:const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:<Widget>[
                                            Icon(Icons.manage_accounts,size: 60,),
                                            Text('Admin',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(5),
                                child: SizedBox.fromSize(
                                  // size: Size(50,50),
                                  child: ClipOval(
                                    child: Material(
                                      color: Colors.orange,
                                      child: InkWell(
                                        splashColor: Colors.blueAccent,
                                        child:const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:<Widget>[
                                            Icon(Icons.person,size: 60,),
                                            Text('User',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Userpage()));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(5),
                                child: SizedBox.fromSize(
                                  // size: Size(50,50),
                                  child: ClipOval(
                                    child: Material(
                                      color: Colors.blue,
                                      child: InkWell(
                                        splashColor: Colors.red,
                                        child:const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:<Widget>[
                                            Icon(Icons.account_balance,size: 60,),
                                            Text('About Bank',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        onTap: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => AboutBank()));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                      ],
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
