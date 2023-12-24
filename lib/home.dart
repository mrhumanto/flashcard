import 'package:first_app/BookPageFolder/BookPage.dart';
import 'package:first_app/HomePageFolder/HomePage.dart';
import 'package:first_app/LibraryPageFolder/LibraryPage.dart';
import 'package:first_app/ProfilePageFolder/ProfilePage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    BookPage(),
    LibraryPage(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.blue : Colors.black,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.black),
                      ),],
                  ),
                  )
                ],
              )
            ]),
        ),
      ),
    );
  }
}
