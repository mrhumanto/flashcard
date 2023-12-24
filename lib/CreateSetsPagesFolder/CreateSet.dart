import 'package:flutter/material.dart';

class CreateSetPage extends StatefulWidget {
  CreateSetPage({super.key});

  @override
  State<CreateSetPage> createState() => _CreateSetPageState();
}

class _CreateSetPageState extends State<CreateSetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('Create Set'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 3,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter set name',
            ),
          ),
        ),
        Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 10),
            child: Material(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 50,
                color: Colors.white,
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: 100,
                        decoration: BoxDecoration(),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'English',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.compare_arrows,
                        color: Colors.black,
                        size: 35,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: 100,
                        decoration: BoxDecoration(),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Polish',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ]),
              ),
            )),
        Text(
          'Cards',
          style: TextStyle(
            fontFamily: 'Readex Pro',
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
