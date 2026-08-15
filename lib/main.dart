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

  // void mysnackar (String message, BuildContext context){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text(message)),
  //
  //   );
  //
  // }
  //
  // MyAlertDialogue(context){
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context){
  //         return Expanded(child: AlertDialog(
  //           title: Text("Alert"),
  //           content: Text("Do you want to delete?"),
  //           actions: [
  //             TextButton(onPressed: (){
  //               mysnackar("Delete Success", context);
  //               Navigator.of(context).pop();
  //             },
  //                 child: Text("yes")
  //             ),
  //
  //             TextButton(onPressed: (){
  //                 mysnackar("Content isn't deleted", context);
  //                 Navigator.of(context).pop();},
  //                 child: Text("No")
  //             ),
  //           ],
  //         ));
  //       }
  //
  //   );
  // }
  //
  //
  // ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  //     minimumSize: Size(double.infinity, 60),
  //   backgroundColor: Colors.green,
  // );
  var Mylist = [
    {"img": "https://picsum.photos/500/300", "title": "Saleheen"},
    {"img": "https://picsum.photos/500/300", "title": "Ferdous"},
    {"img": "https://picsum.photos/500/300", "title": "Saleh"},
    {"img": "https://picsum.photos/500/300", "title": "Zim"},
    {"img": "https://picsum.photos/500/300", "title": "Zannatul"},
    {"img": "https://picsum.photos/500/300", "title": "Mawa"},
  ];
  mysnackbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex=0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.green,
        // actions: [
        //   IconButton(onPressed: (){mysnackar("this is profile", context);},
        //       icon: Icon(Icons.person)),
        //   IconButton(onPressed: (){mysnackar("this is contacts", context);},
        //       icon: Icon(Icons.contacts)),
        //   IconButton(onPressed: (){mysnackar("this is email", context);},
        //       icon: Icon(Icons.email)),
        //
        // ],
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,

        ),
        itemCount: Mylist.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){mysnackbar(context, Mylist[index]['title']);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Image.network(Mylist[index]['img']!,fit: BoxFit.fill,),


            ),
          );
        },
      ),

    );
  }

}