import 'package:first_app/CreateSetsPagesFolder/CreateSet.dart';
import 'package:first_app/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:first_app/HomePageFolder/HomePage.dart';
import 'package:first_app/LibraryPageFolder/LibraryPage.dart';
import 'package:first_app/ProfilePageFolder/ProfilePage.dart';

import 'package:page_transition/page_transition.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  
  PageController controller = PageController(initialPage: 0);
  var selected = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          HomePage(),
          LibraryPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        elevation: 5,
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.horizotnal,
          bubbleFillStyle: BubbleFillStyle.fill,
          opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            backgroundColor: Colors.red,
            selectedIcon: const Icon(Icons.home),
          ),
          BottomBarItem(
            icon: const Icon(Icons.library_add),
            title: const Text('Library'),
            selectedColor: Colors.orange,
            backgroundColor: Colors.orange,
          ),
          BottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            backgroundColor: Colors.purple,
          ),
        ],
        fabLocation: StylishBarFabLocation.end,
        hasNotch: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
          });
        },
      ),
      floatingActionButton: Material(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(30.0), // Adjust border radius here
        ),
        child: IconButton(
            onPressed: () async {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SetOrFolder();
                },
              );
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 37,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class SetOrFolder extends StatelessWidget {
  const SetOrFolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
            child: Container(
              height: 6,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xFFD2D5DA),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateSetPage()),
                  );
              },
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(31, 186, 139, 139),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16, 15, 8, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Create Set',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: const Color.fromARGB(
                              31, 186, 139, 139),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.fromSTEB(16, 12, 16, 32),
            child: Material(
              color: Colors.transparent,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(31, 186, 139, 139),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      16, 15, 8, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create Folder',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 26,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
