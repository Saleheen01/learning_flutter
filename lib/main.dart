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

   mysnackar (String message, BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
   
   MyAlertDialogue(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title: Text("Alert"),
            content: Text("Do you want to delete?"),
            actions: [
              TextButton(onPressed: (){
                mysnackar("Delete Success", context);
                Navigator.of(context).pop();
              }, child: Text("yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          ));
        }
        
        );
  }

  // ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  //   padding: EdgeInsets.all(15),
  //   backgroundColor: Colors.orange,
  //   foregroundColor: Colors.white,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(30),
  //   )
  // );
  ButtonStyle buttonStyle = TextButton.styleFrom(
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(15)
    )
  );
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.green,
      ),
       body: Center(
        child: ElevatedButton(onPressed: (){MyAlertDialogue(context);}, child: Text("Click Me")),
    ),   
    );
  }
  
}