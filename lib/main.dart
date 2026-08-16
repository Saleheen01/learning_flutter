import 'package:flutter/material.dart';
import 'package:learning_flutter/Fragment/AlarmFragment.dart';
import 'package:learning_flutter/Fragment/BalanceFragment.dart';
import 'package:learning_flutter/Fragment/ContactsFragment.dart';
import 'package:learning_flutter/Fragment/EmailFragment.dart';
import 'package:learning_flutter/Fragment/HomeFragment.dart';
import 'package:learning_flutter/Fragment/PersonFragment.dart';
import 'package:learning_flutter/Fragment/SearchFragment.dart';
import 'package:learning_flutter/Fragment/SettingsFragment.dart';

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
      return DefaultTabController(
          length: 8,
          child: Scaffold(
              appBar: AppBar(
                title: Text("My App"),
                bottom: TabBar(
                  isScrollable: true,
                    tabs: [
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.search),text: 'Search',),
                  Tab(icon: Icon(Icons.settings),text: 'settings',),
                  Tab(icon: Icon(Icons.email),text: 'email',),
                  Tab(icon: Icon(Icons.contacts),text: 'contacts',),
                  Tab(icon: Icon(Icons.person),text: 'person',),
                  Tab(icon: Icon(Icons.access_alarm),text: 'Alarm',),
                  Tab(icon: Icon(Icons.account_balance),text: 'Balance',),
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    HomeFragment(),
                    SearchFragment(),
                    SettingsFragment(),
                    EmailFragment(),
                    ContactsFragment(),
                    PersonFragment(),
                    AlarmFragment(),
                    BalanceFragment(),

                  ]
              ),
          )
      );
  }

}