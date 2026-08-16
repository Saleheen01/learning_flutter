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
  HomeActivity({super.key});

  mysnackbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("MyApp",style: TextStyle(color: Colors.white),),
         backgroundColor: Colors.black,
       ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is home to Activity_1")));

          },
            style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,),
            child: Text("Go to Activity_1",style: TextStyle(color: Colors.black),),
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is home to Activity_2")));

          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,),
            child: Text("Go to Activity_2",style: TextStyle(color: Colors.black),),
          ),


        ],
      ),
    );
  }
}



class Activity1 extends StatelessWidget{
  String msg;
   Activity1(
      this.msg,
      {super.key}) {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is Activity_1 to Activity_2")));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,),
            child: Text("Go to Activity_2",
              style: TextStyle(
                  color: Colors.black,
                  ),
            )
        ),
      ),
    );
  }
}


class Activity2 extends StatelessWidget{
  String msg;
  Activity2(
      this.msg,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is Activity_2 to Activity_1")));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,),
            child: Text("Go to Activity_1",
              style: TextStyle(
                color: Colors.black,
              ),
            )
        ),
      ),
    );
  }
}