import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: ' Al-Azhar ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              TextSpan(
                  text: ' University ',
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
              TextSpan(
                  text: ' in Gaza',
                  style: TextStyle(
                      fontSize: 12, color: Colors.amber, letterSpacing: 4)),
            ]),
          ),
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          elevation: 25,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                accountName: Text("20200175"),
                accountEmail: Text("Heba Ayman"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Text(
                    'H',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text("HebaAyman@gmail.com"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.inbox),
                title: Text("Inbox"),
              ),
              const ListTile(
                leading: Icon(Icons.people),
                title: Text("Contact Us"),
              ),
              const ListTile(
                leading: Icon(Icons.local_offer),
                title: Text("Offers"),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  color: Colors.amber,
                  child: Text("Subject"),
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  color: Colors.amber,
                  child: Text("Subject hours"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  color: Colors.amber,
                  child: Text("Subject 1"),
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  color: Colors.amber,
                  child: Text("3 hours"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  color: Colors.amber,
                  child: Text("Subject 2"),
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  color: Colors.amber,
                  child: Text("1 hours"),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.teal,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6,
          color: Colors.grey,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      _onTaaped(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              _selectIndex == 0 ? Colors.white : Colors.black,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 12,
                            color:
                                _selectIndex == 0 ? Colors.white : Colors.black,
                          ),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {_onTaaped(1);},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color:
                              _selectIndex == 1 ? Colors.white : Colors.black,
                        ),
                        Text(
                          "settings",
                          style: TextStyle(
                            fontSize: 12,
                            color:
                                _selectIndex == 1 ? Colors.white : Colors.black,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTaaped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
