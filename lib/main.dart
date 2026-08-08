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
   HomeActivity({super.key});

  void mysnackar (String message, BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(15),
    backgroundColor: Colors.orange,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    )
  );
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

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        onPressed: () {mysnackar("This is floating action button", context);},
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.contacts),label:"Contacts"),
            BottomNavigationBarItem(icon: Icon(Icons.mail),label:"Email"),
          ],
        onTap: (int index)
        {
          if(index ==0)
            {
              mysnackar("I'm Profile", context);
            }
          if(index ==1)
          {
            mysnackar("I'm Contacts", context);
          }if(index ==2)
          {
            mysnackar("I'm Email", context);
          }
        },
      ),

    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding:EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Saleheen"),
                accountEmail: Text("mdsaleheenferdous@gmail.com"),
                currentAccountPicture: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
                onDetailsPressed: (){mysnackar("My all details", context);},
              ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            selected: currentIndex==0,
            selectedColor: Colors.green,
            selectedTileColor: Colors.green.shade100,
            onTap: ()
            {
              mysnackar("I'm profile", context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
            selected: currentIndex==0,
            selectedColor: Colors.green,
            selectedTileColor: Colors.green.shade100,
            onTap: ()
            {
              mysnackar("I'm profile", context);
            },
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            selected: currentIndex==0,
            selectedTileColor: Colors.green.shade100,
            selectedColor: Colors.green,
            onTap: ()
            {
              mysnackar("I'm profile", context);
            },
          ),
        ],
      ),
    ),


      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding:EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Saleheen"),
                accountEmail: Text("mdsaleheenferdous@gmail.com"),
                currentAccountPicture: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
                //onDetailsPressed: (){mysnackar("My all details", context);},
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              selected: currentIndex==0,
              selectedColor: Colors.green,
              selectedTileColor: Colors.green.shade100,
              onTap: ()
              {
                mysnackar("I'm profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contacts"),
              selected: currentIndex==0,
              selectedColor: Colors.green,
              selectedTileColor: Colors.green.shade100,
              onTap: ()
              {
                mysnackar("I'm profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              selected: currentIndex==0,
              selectedTileColor: Colors.green.shade100,
              selectedColor: Colors.green,
              onTap: ()
              {
                mysnackar("I'm profile", context);
              },
            ),
          ],
        ),
       ),
      // body: Container(
      //   width: 450,
      //   height: 450,
      //   padding: const EdgeInsets.all(0),
      //   decoration: BoxDecoration(
      //     color: Colors.grey,
      //     border: Border.all(color: Colors.black87, width: 10),
      //   ),
      //   child: const Text("Hello Flutter",
      //     style: TextStyle(color: Colors.white),
      //     textAlign: TextAlign.center,
      //   ),
      // ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 100,
      //       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
      //     ),
      //     Container(
      //       height: 50,
      //       width: 100,
      //       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
      //     ),
      //     Container(
      //       height: 50,
      //       width: 100,
      //       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
      //     ),
      //   ],
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 100,
      //       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
      //     ),
      //     Container(
      //       height: 50,
      //       width: 100,
      //       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
      //     ),
      //     Container(
      //       height: 50,
      //       width: 100,
      //       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
      //     ),
      //   ],
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){mysnackar("Im text Button", context);}, child: Text("Text_Button")),
          OutlinedButton(onPressed: (){mysnackar("Im Out_Line Button", context);}, child: Text("out_Line__Button")),
          ElevatedButton(onPressed: (){mysnackar("Im Elevated Button", context);}, child: Text("elevated_Button"),style: buttonStyle,),
        ],

      ),

    );
  }
  
}