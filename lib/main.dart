import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp ());
}

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  void mysnackar (String message, BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }

  @override
  Widget build(BuildContext context) {
    int currentIndex=0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){mysnackar("this is profile", context);},
              icon: Icon(Icons.person)),
          IconButton(onPressed: (){mysnackar("this is contacts", context);},
              icon: Icon(Icons.contacts)),
          IconButton(onPressed: (){mysnackar("this is email", context);},
              icon: Icon(Icons.email)),

        ],

      ),
    );
  }
  
}