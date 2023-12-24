import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
        bottom: TabBar(
          controller: _tabController,
          labelColor:
              Colors.blue, // Change the color of the selected tab's text
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: 'Sets',
            ),
            Tab(text: 'Folders'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
         child: Column(children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xFFCCCCCC),
                  borderRadius: BorderRadius.circular(12)),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'New Words',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 86,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(17),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              '25',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'English',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.compare_arrows,
                            color: Colors.black,
                            size: 29,
                          ),
                          Text(
                            'Spanish',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            )
          ])),
          // Replace these placeholders with your desired content for Folders tab
          Center(
            child: Text('Folders Content'),
          ),
        ],
      ),
    );
  }
}
