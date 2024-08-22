import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  final String title;

  const DrawerScreen({  super.key,   required this.title});

  @override
  DrawerScreenState createState() => DrawerScreenState();
}

class DrawerScreenState extends State<DrawerScreen> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(widget.title, style: const TextStyle(color: Colors.white),),
      ),
      drawer: drawerWidget(textTheme),
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 100,
                child: Image.asset('assets/images/flutter-logo.png'),
              ),
              const SizedBox(height: 30,),
              const Text('Welcome to', style: TextStyle(color: Colors.black, fontSize: 16),),
              const Text('Drawer Sample App.', style: TextStyle(color: Colors.black, fontSize: 16),),
            ]
        ),
      ),
    );
  }

  Widget drawerWidget([TextTheme? textTheme]){
    return Drawer(
        child: Container(
        color: Colors.transparent,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue.shade800,
                      Colors.blue.shade300,
                    ],
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        child: Image.asset('assets/images/flutter-logo.png'),
                      ),
                      const SizedBox(height: 5,),
                      const Text('Welcome to', style: TextStyle(color: Colors.white, fontSize: 16),),
                      const Text('Drawer Sample App.', style: TextStyle(color: Colors.white, fontSize: 16),),
                      const SizedBox(height: 5,),
                    ]
                ),
              ),
              const Divider(height: 1, thickness: 1,),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.black,),
                title: const Text('Home'),
                textColor: Colors.black,
                selectedColor: Colors.blue.shade800,
                selectedTileColor: Colors.blue.shade200,
                tileColor: Colors.white,
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              const Divider(height: 1, thickness: 1,),
              ListTile(
                leading: const Icon(Icons.favorite , color: Colors.black,),
                title: const Text('Favorite'),
                textColor: Colors.black,
                selectedColor: Colors.blue.shade800,
                selectedTileColor: Colors.blue.shade200,
                tileColor: Colors.white,
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              const Divider(height: 1, thickness: 1,),
              ListTile(
                leading: const Icon(Icons.search , color: Colors.black,),
                title: const Text('Search'),
                textColor: Colors.black,
                selectedColor: Colors.blue.shade800,
                selectedTileColor: Colors.blue.shade200,
                tileColor: Colors.white,
                selected: _selectedDestination == 2,
                onTap: () => selectDestination(2),
              ),
              const Divider(height: 1, thickness: 1,),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey.shade300,
                child: Text('Account',style: TextStyle(color: Colors.black, fontSize: 16.0),),
              ),
              const Divider(height: 1, thickness: 1,),
              ListTile(
                leading: const Icon(Icons.notifications, color: Colors.black,),
                title: const Text('Notifications'),
                textColor: Colors.black,
                selectedColor: Colors.blue.shade800,
                selectedTileColor: Colors.blue.shade200,
                tileColor: Colors.white,
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
              const Divider(height: 1, thickness: 1,),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.black,),
                title: const Text('Setting'),
                textColor: Colors.black,
                selectedColor: Colors.blue.shade800,
                selectedTileColor: Colors.blue.shade200,
                tileColor: Colors.white,
                selected: _selectedDestination == 4,
                onTap: () => selectDestination(4),
              ),
              const Divider(height: 1, thickness: 1,),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.black,),
                title: const Text('Logout'),
                textColor: Colors.black,
                selectedColor: Colors.blue.shade800,
                selectedTileColor: Colors.blue.shade200,
                tileColor: Colors.white,
                selected: _selectedDestination == 5,
                onTap: () => selectDestination(5),
              ),
            ],
          ),
        ),
    );
  }
  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
    Navigator.of(context).pop();
  }
}